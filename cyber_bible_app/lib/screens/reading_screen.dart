// Scripture reading screen — Steps 1.10 → 1.13.
//
// Displays a fully formatted chapter of Bible text for the selected book and
// chapter, plus navigation controls for:
//   1) Book + chapter quick nav (two-step bottom-sheet selector)
//   2) Verse quick nav (adaptive picker: wheel on touch, list on desktop/web)
//   3) Previous / next chapter (sliding bottom bar, swipe, keyboard shortcuts)
//
// Step 1.10 — plain-text verse list with collapsible header
// Step 1.11 — USFX → HTML rendering via flutter_widget_from_html_core
// Step 1.12 — verse navigation; cb-verse-marker offset tracking
// Step 1.13 — chapter-to-chapter navigation (prev/next bar, swipe, keys)
//
// The renderer emits a `<div data-cbv="N">` block marker immediately BEFORE
// every <p> that starts a new verse. HtmlWidget maps each marker to a
// zero-sized keyed widget,
// allowing this screen to compute exact verse offsets for:
//   - smooth jump-to-verse scrolling
//   - exact "verse at top of viewport" tracking for the sticky header label

import 'dart:async';

import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart'; // RenderAbstractViewport
import 'package:flutter/services.dart'; // SemanticsService, SystemNavigator
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

import '../app_routes.dart';
import '../models/book.dart';
import '../models/bookmark.dart';
import '../models/verse.dart';
import '../services/bible_service.dart';
import '../services/settings_service.dart';
import '../services/user_data_service.dart';
import '../utils/chapter_nav.dart';
import '../utils/usfx_renderer.dart';

// ---------------------------------------------------------------------------
// Layout constants
// ---------------------------------------------------------------------------

/// Height of the expanded flexible-space header.
const double _expandedHeight = 224.0;

/// Height of the sticky quick-nav bar attached to the SliverAppBar bottom.
const double _quickNavBarHeight = 52.0;

/// Vertical offset between the top of chapter content and the verse marker
/// after a programmatic scroll.
const double _jumpTopPadding = 8.0;

/// Duration used for smooth verse-jump animations.
const Duration _verseJumpDuration = Duration(milliseconds: 520);

/// Duration for temporary verse-number highlight after a jump.
const Duration _verseHighlightDuration = Duration(milliseconds: 1400);

// ---- Chapter navigation bar constants ------------------------------------

/// Approximate height of the sliding chapter navigation bar (pixels).
///
/// Used for bottom padding so the last verse is never hidden behind the bar,
/// and for the slide animation target offset.
const double _chapterNavBarHeight = 60.0;

/// Extra bottom padding added to chapter content so the last verse remains
/// fully visible when the chapter nav bar is on screen.
const double _contentBottomPadding = 48.0 + _chapterNavBarHeight;

/// Slide-in / slide-out animation duration for the chapter navigation bar.
const Duration _chapterNavBarAnimDuration = Duration(milliseconds: 250);

/// How long the chapter nav bar stays visible after the last scroll event
/// before auto-hiding (provided the reader is not near the end of the chapter).
const Duration _chapterNavBarAutoHideDelay = Duration(seconds: 5);

/// Minimum horizontal swipe velocity (logical pixels per second) required to
/// trigger a chapter navigation gesture.  Lower values feel too sensitive;
/// higher values require an aggressive flick.
const double _swipeChapterVelocityThreshold = 350.0;

/// Scroll-extent distance from the chapter bottom below which the reader is
/// considered to be "near the end" and the nav bar stays permanently visible.
const double _chapterEndProximityPx = 160.0;

/// Maximum post-frame retries while waiting for HtmlWidget to finish async
/// building marker widgets for a large chapter.
const int _maxMarkerCollectRetries = 12;

/// Frame retries used to re-apply scroll offset while async HTML layout settles.
const int _maxScrollRestoreRetries = 8;

/// Minimum visible distance from viewport top before a verse is treated as
/// the active top verse in the sticky quick-nav header.
const double _topVerseViewportThresholdPx = 60.0;

// ---------------------------------------------------------------------------
// Main screen widget
// ---------------------------------------------------------------------------

/// The main scripture reading screen.
///
/// Receives a [Book] and chapter number from route arguments, loads the raw
/// USFX chapter fragment, renders it as themed HTML, and displays it with
/// HtmlWidget.
class ReadingScreen extends StatefulWidget {
  /// The book being read.
  final Book book;

  /// The 1-based chapter number to display.
  final int chapter;

  /// Optional verse ID to scroll to after the chapter loads.
  ///
  /// Supplied by [BookmarksTab] when the user taps a verse-level bookmark
  /// so the reading screen opens at the exact verse rather than the chapter
  /// top.  `null` means no automatic scroll (normal chapter navigation).
  final String? initialVerse;

  const ReadingScreen({
    super.key,
    required this.book,
    required this.chapter,
    this.initialVerse,
  });

  @override
  State<ReadingScreen> createState() => _ReadingScreenState();
}

class _ReadingScreenState extends State<ReadingScreen> {
  // ---- Content state ----

  /// Rendered HTML string for the current chapter, or null while loading.
  String? _html;

  /// Raw USFX chapter XML used to rebuild themed HTML on dependency changes.
  String? _contentUsfx;

  /// Non-null for permanently absent chapter content in the translation.
  String? _emptyMessage;

  /// Non-null for transient technical load/render failures.
  String? _errorMessage;

  /// Plain-text verse rows used for picker options and accessibility labels.
  List<Verse>? _verses;

  // ---- Header/scroll state ----

  /// Shared scroll controller for SliverAppBar and chapter content.
  late final ScrollController _scrollController;

  /// Whether the SliverAppBar is currently collapsed.
  bool _isCollapsed = false;

  /// Current generation for in-flight loads; older completions are discarded.
  int _loadGeneration = 0;

  // ---- Quick-nav verse tracking state ----

  /// Key to access HtmlWidgetState for anchor operations if needed.
  final GlobalKey<HtmlWidgetState> _htmlWidgetKey = GlobalKey<HtmlWidgetState>();

  /// Key attached to the top-left content container around HtmlWidget.
  final GlobalKey _contentTopKey = GlobalKey(debugLabel: 'reading-content-top');

  /// Verse marker widget keys inserted via HtmlWidget.customWidgetBuilder.
  final Map<String, GlobalKey> _verseMarkerKeys = <String, GlobalKey>{};

  /// Cached absolute scroll offsets for verse markers.
  final Map<String, double> _verseTopOffsets = <String, double>{};

  /// Verse IDs in canonical DB order for nearest/fallback calculations.
  List<String> _verseOrder = const <String>[];

  /// Verse index lookup table derived from [_verseOrder] for O(1) access.
  Map<String, int> _verseIndexById = const <String, int>{};

  /// Verse ID currently at top of viewport (used in sticky header label).
  String? _topVerse;

  /// Verse ID currently highlighted in HTML output after a jump.
  String? _highlightedVerseId;

  /// Set of verse IDs (within the current chapter) that have bookmarks.
  ///
  /// An empty string in this set represents a chapter-level bookmark;
  /// the renderer maps it to verse '1' for display.
  /// Loaded in [_loadChapter] alongside the chapter content.
  Set<String> _bookmarkedVerses = const <String>{};

  /// Timer that clears temporary verse highlight state.
  Timer? _highlightClearTimer;

  /// Number of retry attempts while waiting for marker widgets to mount.
  int _markerCollectRetryCount = 0;

  /// Prevents queuing duplicate marker-collection callbacks while scrolling.
  bool _markerCollectionScheduled = false;

  // ---- Chapter navigation state ----

  /// Whether the chapter navigation bar (Previous / Next) is currently visible.
  ///
  /// Hidden on load; slides in on the first scroll event; auto-hides after
  /// [_chapterNavBarAutoHideDelay] of scroll inactivity; stays pinned when
  /// the reader is near the bottom of the chapter.
  bool _chapterNavBarVisible = false;

  /// Auto-hide timer for the chapter navigation bar.
  Timer? _chapterNavBarHideTimer;

  /// Previous chapter destination; null when reading Genesis chapter 1.
  ReadingArgs? _prevChapterRef;

  /// Next chapter destination; null when reading the last chapter of the Bible.
  ReadingArgs? _nextChapterRef;

  /// Whether the adjacent-chapter look-up has finished loading.
  ///
  /// Buttons remain in a neutral/disabled state while false so the user is
  /// never surprised by a delayed navigation to the wrong chapter.
  bool _chapterNavLoaded = false;

  // ---- Lifecycle ----

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_onScroll);
    _loadChapter();
    // Load adjacent-chapter info concurrently; result drives prev/next buttons.
    _loadNavInfo();
    // Rebuild HTML whenever the user changes a reading-display preference
    // (font size, verse numbers, section headings, words-of-Christ color,
    // verse format).  Theme changes are handled by CyberBibleApp rebuilding
    // MaterialApp, which triggers didChangeDependencies here.
    SettingsService.instance.addListener(_onSettingsChanged);
  }

  @override
  void dispose() {
    SettingsService.instance.removeListener(_onSettingsChanged);
    _highlightClearTimer?.cancel();
    _chapterNavBarHideTimer?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  /// Called when SettingsService notifies any change.
  ///
  /// Only renderer-relevant settings (font size, verse numbers, section
  /// headings, words-of-Christ, paragraph mode) need an HTML rebuild.
  /// Theme/accent changes come through [didChangeDependencies] instead
  /// because they change the ColorScheme that drives the CSS color params.
  void _onSettingsChanged() {
    if (_contentUsfx != null) {
      _rebuildHtmlPreservingScrollOffset();
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Re-render on theme/dependency changes when content is already loaded.
    if (_contentUsfx != null) {
      _rebuildHtml();
    }
  }

  // ---- Scroll tracking ----

  /// Updates collapsed-header state, verse tracking, and chapter nav bar.
  void _onScroll() {
    const collapseThreshold = _expandedHeight - kToolbarHeight;
    final collapsed = _scrollController.offset > collapseThreshold;
    if (collapsed != _isCollapsed) {
      setState(() => _isCollapsed = collapsed);
    }

    // HtmlWidget can lazily materialize markers as users scroll. Keep caching
    // offsets during scroll so top-verse tracking has nearby marker data.
    if (_verseOrder.isNotEmpty) {
      _scheduleMarkerCollection();
    }

    _syncTopVerseFromScroll();

    // Show chapter navigation bar and manage its auto-hide timer.
    _handleChapterNavBarOnScroll();
  }

  // ---- Data loading ----

  /// Loads chapter USFX + verse list and prepares rendered HTML.
  Future<void> _loadChapter() async {
    final generation = ++_loadGeneration;

    setState(() {
      _errorMessage = null;
      _emptyMessage = null;
      _contentUsfx = null;
      _html = null;
      _verses = null;
      _topVerse = null;
      _highlightedVerseId = null;
    });
    _resetVerseMarkerState();

    try {
      await BibleService.ensureOpen();
      final chapter = await BibleService.getChapter(widget.book.code, widget.chapter);
      if (!mounted || generation != _loadGeneration) return;

      if (chapter == null) {
        setState(() => _emptyMessage = 'No text available for this chapter.');
        return;
      }

      _contentUsfx = chapter.contentUsfx;
      try {
        _verses = await BibleService.getVerses(widget.book.code, widget.chapter);
      } catch (e) {
        _verses = null;
      }

      if (!mounted || generation != _loadGeneration) return;

      _verseOrder = _verses?.map((v) => v.verse).toList() ?? const <String>[];
      _verseIndexById = <String, int>{
        for (var i = 0; i < _verseOrder.length; i++) _verseOrder[i]: i,
      };
      if (_verseOrder.isNotEmpty) {
        _topVerse = _verseOrder.first;
      }

      // Load bookmark indicators for this chapter so the renderer can show
      // a glyph next to bookmarked verse numbers.
      try {
        await UserDataService.ensureOpen();
        final verseSet = await UserDataService.getBookmarkedVerses(
            widget.book.code, widget.chapter);
        if (mounted && generation == _loadGeneration) {
          setState(() => _bookmarkedVerses = verseSet);
        }
      } catch (_) {
        // Bookmark indicator failure is non-fatal — the chapter still renders.
      }

      _rebuildHtml();

      // If an initial verse was provided (e.g. navigation from BookmarksTab),
      // jump to it after a short delay to let layout complete.
      if (widget.initialVerse != null && widget.initialVerse!.isNotEmpty) {
        WidgetsBinding.instance.addPostFrameCallback((_) async {
          if (!mounted) return;
          await Future<void>.delayed(const Duration(milliseconds: 300));
          if (mounted) {
            await _jumpToVerse(widget.initialVerse!, manualSelection: false);
          }
        });
      }
    } catch (e) {
      if (mounted && generation == _loadGeneration) {
        setState(() {
          _contentUsfx = null;
          _verses = null;
          _errorMessage = 'Could not load the chapter. Please try again.';
        });
      }
    }
  }

  // ---- HTML rendering ----

  /// Rebuilds themed HTML from [_contentUsfx] and active color scheme.
  void _rebuildHtml() {
    if (_contentUsfx == null) return;

    final colorScheme = Theme.of(context).colorScheme;
    final settings = SettingsService.instance;

    // Words-of-Christ color: red when the setting is on, body color otherwise.
    // The hardcoded red (#e53935) is intentionally NOT from the accent scheme
    // so that red letters look consistent across all themes.
    final wjColor = settings.wordsOfChristRed
        ? '#e53935'
        : _colorToCss(colorScheme.onSurface);

    final html = renderChapterToHtml(
      _contentUsfx!,
      bodyColorCss: _colorToCss(colorScheme.onSurface),
      verseNumColorCss: _colorToCss(colorScheme.primary),
      headingColorCss: _colorToCss(colorScheme.onSurface.withAlpha(153)),
      dHeadingColorCss: _colorToCss(colorScheme.onSurface.withAlpha(127)),
      footnoteColorCss: _colorToCss(colorScheme.primary),
      baseFontSizePx: settings.fontSizePx,
      highlightedVerseId: _highlightedVerseId,
      highlightedVerseBackgroundCss: _colorToCss(colorScheme.tertiaryContainer.withAlpha(191)),
      bookmarkedVerses: _bookmarkedVerses,
      wjColorCss: wjColor,
      showSectionHeadings: settings.showSectionHeadings,
      showVerseNumbers: settings.showVerseNumbers,
      paragraphMode: settings.paragraphMode,
    );

    setState(() => _html = html);
    _scheduleMarkerCollection(resetRetryCounter: true);
    // After layout completes, check whether the chapter fits entirely on screen
    // and show the nav bar immediately if so.  Short chapters never generate a
    // scroll event, which is the normal trigger for revealing the bar.
    _scheduleChapterNavBarVisibilityCheck();
  }

  /// Schedules a post-frame check that pins the chapter nav bar when the
  /// chapter content fits entirely on screen without scrolling, or starts the
  /// auto-hide timer if previously short content has grown (e.g. after a font
  /// size increase) so the bar now correctly fades out.
  ///
  /// Called after every HTML render so the check runs once layout has settled
  /// and [ScrollController.position.maxScrollExtent] reflects the real size.
  void _scheduleChapterNavBarVisibilityCheck() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;

      if (_isNearChapterEnd) {
        // Chapter fits on screen (maxScrollExtent == 0) or user is near the
        // bottom — pin the bar so they can always proceed to the next chapter.
        if (!_chapterNavBarVisible) {
          setState(() => _chapterNavBarVisible = true);
        }
      } else if (_chapterNavBarVisible) {
        // Content has grown since the bar was pinned (e.g. font size increase
        // made a previously short chapter scrollable).  The bar is visible but
        // should no longer be permanently pinned — start the auto-hide timer
        // so it fades out naturally after the standard inactivity delay.
        _chapterNavBarHideTimer?.cancel();
        _chapterNavBarHideTimer = Timer(_chapterNavBarAutoHideDelay, () {
          if (mounted && !_isNearChapterEnd) {
            setState(() => _chapterNavBarVisible = false);
          }
        });
      }
    });
  }

  /// Rebuilds HTML while preserving the current chapter scroll offset.
  ///
  /// Highlight-driven HTML updates can briefly shrink/expand content during
  /// async widget construction, which may clamp the scroll position to top on
  /// some Android launches. This helper keeps the reader anchored.
  void _rebuildHtmlPreservingScrollOffset() {
    final targetOffset = _scrollController.hasClients ? _scrollController.offset : 0.0;
    _rebuildHtml();
    _restoreScrollOffsetAfterHtmlRebuild(targetOffset);
  }

  /// Re-applies [targetOffset] across a few frames while HtmlWidget layout
  /// continues settling, preventing intermittent jump-to-top behavior.
  void _restoreScrollOffsetAfterHtmlRebuild(
    double targetOffset, {
    int attempt = 0,
  }) {
    if (attempt > _maxScrollRestoreRetries) return;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || !_scrollController.hasClients) return;

      final maxOffset = _scrollController.position.maxScrollExtent;
      final clampedTarget = targetOffset.clamp(0.0, maxOffset);
      final currentOffset = _scrollController.offset;

      if ((currentOffset - clampedTarget).abs() > 1.0) {
        _scrollController.jumpTo(clampedTarget);
      }

      _restoreScrollOffsetAfterHtmlRebuild(
        clampedTarget,
        attempt: attempt + 1,
      );
    });
  }

  /// Clears all marker keys/cached offsets for a fresh chapter/render cycle.
  void _resetVerseMarkerState() {
    _markerCollectRetryCount = 0;
    _verseMarkerKeys.clear();
    _verseTopOffsets.clear();
  }

  /// Schedules a post-frame marker collection pass.
  void _scheduleMarkerCollection({bool resetRetryCounter = false}) {
    if (resetRetryCounter) {
      _markerCollectRetryCount = 0;
    }
    if (_markerCollectionScheduled) return;
    _markerCollectionScheduled = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _markerCollectionScheduled = false;
      if (!mounted) return;
      _collectVerseMarkerOffsets();
    });
  }

  /// Reads render-box positions of all marker widgets and caches absolute
  /// scroll offsets for exact verse tracking and jump animations.
  void _collectVerseMarkerOffsets() {
    final collected = <String, double>{};

    for (final verse in _verseOrder) {
      final key = _verseMarkerKeys[verse];
      if (key == null) continue;
      final markerContext = key.currentContext;
      if (markerContext == null) continue;
      final markerBox = markerContext.findRenderObject() as RenderBox?;
      if (markerBox == null || !markerBox.attached) continue;

      // Compute marker position directly in the scroll viewport's coordinate
      // system. This offset is stable regardless of current scroll position.
      final viewport = RenderAbstractViewport.of(markerBox);
      final reveal = viewport.getOffsetToReveal(markerBox, 0.0);
      final absoluteOffset = reveal.offset.clamp(0.0, double.infinity);
      collected[verse] = absoluteOffset;
    }

    if (collected.isEmpty) {
      _retryMarkerCollection();
      return;
    }

    // HtmlWidget can report only a subset of markers during intermediate
    // async layout frames. Merge snapshots instead of replacing wholesale so
    // the header verse tracker does not briefly snap back to verse 1.
    _verseTopOffsets.addAll(collected);


    // Keep collecting while only a partial marker set is available.
    // Without this, the first non-empty snapshot (often containing verse 1
    // only) would stop retries and freeze the header tracker on early verses.
    if (_verseTopOffsets.length < _verseOrder.length) {
      _retryMarkerCollection();
    }

    _syncTopVerseFromScroll();
  }

  /// Retries marker collection while HtmlWidget is still asynchronously building.
  void _retryMarkerCollection() {
    if (_markerCollectRetryCount >= _maxMarkerCollectRetries) return;
    _markerCollectRetryCount += 1;
    _scheduleMarkerCollection();
  }

  /// Updates [_topVerse] from the current scroll offset and cached verse offsets.
  void _syncTopVerseFromScroll() {
    if (_verseTopOffsets.isEmpty || _verseOrder.isEmpty) return;

    final currentOffset = _scrollController.hasClients ? _scrollController.offset : 0.0;
    String? top;
    String? firstAfterTop;

    for (final verse in _verseOrder) {
      final verseOffset = _verseTopOffsets[verse];
      if (verseOffset == null) continue;
      // Require verse to be at least 60px into the viewport to count as "top".
      // This prevents a barely-visible verse at the top from stealing focus.
      if (verseOffset <= currentOffset + _topVerseViewportThresholdPx) {
        top = verse;
      } else {
        firstAfterTop ??= verse;
        break;
      }
    }
    // If nothing is at/above the viewport top, prefer the first verse below it.
    top ??= firstAfterTop;
    top ??= _topVerse;
    top ??= _verseOrder.firstWhere(
      (v) => _verseTopOffsets.containsKey(v),
      orElse: () => _verseOrder.first,
    );

    if (top != _topVerse) {
      setState(() => _topVerse = top);
    }
  }

  // ---- Quick navigation actions ----

  /// Opens the Add Bookmark bottom sheet for the current chapter.
  ///
  /// Defaults to a chapter-level bookmark (verse = ''). The user can choose
  /// a specific verse inside the sheet using the verse picker.
  /// After saving, the bookmark indicators in the HTML are refreshed.
  Future<void> _openAddBookmarkSheet() async {
    final saved = await showModalBottomSheet<bool>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (_) => AddBookmarkSheet(
        book: widget.book,
        chapter: widget.chapter,
        // Pass verse list so the sheet can offer a verse picker.
        verses: _verses ?? const <Verse>[],
      ),
    );

    if (!mounted || saved != true) return;

    // Refresh bookmark indicators for the newly saved bookmark.
    try {
      await UserDataService.ensureOpen();
      final verses = await UserDataService.getBookmarkedVerses(
          widget.book.code, widget.chapter);
      if (mounted) {
        setState(() => _bookmarkedVerses = verses);
        _rebuildHtml();
      }
    } catch (_) {
      // Silently ignore — the snackbar from AddBookmarkSheet is sufficient.
    }

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Bookmark saved'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  /// Opens the two-step quick-nav sheet (book -> chapter) and pushes a new
  /// reading route when the user confirms a destination chapter.
  Future<void> _openBookChapterQuickNav() async {
    final result = await showModalBottomSheet<_BookChapterSelectionResult>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (_) => _BookChapterQuickNavSheet(
        currentBookCode: widget.book.code,
      ),
    );

    if (!mounted || result == null) return;

    Navigator.pushNamed(
      context,
      AppRoutes.reading,
      arguments: ReadingArgs(book: result.book, chapter: result.chapter),
    );
  }

  /// Opens adaptive verse picker and jumps smoothly to selected verse.
  Future<void> _openVerseQuickNav() async {
    if (_verses == null || _verses!.isEmpty) return;

    final selectedVerse = await showModalBottomSheet<String>(
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      builder: (context) {
        final useWheel = _useWheelVersePicker(context);
        if (useWheel) {
          return _VerseWheelPickerSheet(
            verses: _verses!,
            currentVerse: _topVerse ?? _verses!.first.verse,
          );
        }

        return _VerseListPickerSheet(
          verses: _verses!,
          currentVerse: _topVerse ?? _verses!.first.verse,
        );
      },
    );

    if (!mounted || selectedVerse == null) return;
    await _jumpToVerse(selectedVerse, manualSelection: true);
  }

  /// Touch-centric layouts use the wheel picker; larger desktop/web layouts use
  /// a list picker for better mouse/keyboard ergonomics.
  bool _useWheelVersePicker(BuildContext context) {
    if (kIsWeb) return false;

    final shortestSide = MediaQuery.of(context).size.shortestSide;
    final isMobilePlatform = defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;

    return isMobilePlatform && shortestSide < 700;
  }

  /// Smoothly animates the content to the requested verse.
  ///
  /// If the exact verse marker is missing, jumps to the nearest available verse.
  Future<void> _jumpToVerse(
    String requestedVerse, {
    required bool manualSelection,
  }) async {
    if (_verseOrder.isEmpty) return;

    if (_verseTopOffsets.isEmpty) {
      _scheduleMarkerCollection(resetRetryCounter: true);
      await Future<void>.delayed(const Duration(milliseconds: 24));
    }

    var resolvedVerse = _resolveNearestAvailableVerse(requestedVerse);
    if (resolvedVerse == null) return;

    // One additional refresh pass if the target marker is not cached yet.
    if (_verseTopOffsets[resolvedVerse] == null) {
      _scheduleMarkerCollection(resetRetryCounter: true);
      await Future<void>.delayed(const Duration(milliseconds: 24));
      resolvedVerse = _resolveNearestAvailableVerse(requestedVerse);
      if (resolvedVerse == null || _verseTopOffsets[resolvedVerse] == null) {
        return;
      }
    }

    final targetOffset = (_verseTopOffsets[resolvedVerse]! - _jumpTopPadding).clamp(
      0.0,
      _scrollController.hasClients ? _scrollController.position.maxScrollExtent : 0.0,
    );

    if (_scrollController.hasClients) {
      await _scrollController.animateTo(
        targetOffset,
        duration: _verseJumpDuration,
        curve: Curves.easeInOutCubic,
      );
    }

    // Provisional update so the header never remains pinned to early verses
    // while marker collection catches up after a jump/highlight rebuild.
    if (_topVerse != resolvedVerse) {
      setState(() => _topVerse = resolvedVerse);
    }

    // Sync the header to reflect what verse is actually at the top of the
    // viewport after the animation completes. The target verse may not be at
    // the top if it spans multiple lines; sync finds the actual visible verse.
    _syncTopVerseFromScroll();

    _applyTemporaryVerseHighlight(resolvedVerse);
    _announceVerseJump(resolvedVerse);

    if (manualSelection) {
      _recordManualVerseJumpInBrowserHistory(resolvedVerse);
    }
  }

  /// Returns the exact requested verse when present, otherwise nearest by
  /// canonical index distance among verses with available marker offsets.
  String? _resolveNearestAvailableVerse(String requestedVerse) {
    if (_verseTopOffsets.containsKey(requestedVerse)) {
      return requestedVerse;
    }

    final availableVerses =
        _verseOrder.where((verse) => _verseTopOffsets.containsKey(verse)).toList();
    if (availableVerses.isEmpty) return null;

    final requestedIndex = _verseIndexById[requestedVerse] ?? -1;
    final targetIndex = requestedIndex >= 0 ? requestedIndex : 0;

    String bestVerse = availableVerses.first;
    int bestDistance = ((_verseIndexById[bestVerse] ?? 0) - targetIndex).abs();

    for (final verse in availableVerses.skip(1)) {
      final distance = ((_verseIndexById[verse] ?? 0) - targetIndex).abs();
      if (distance < bestDistance) {
        bestDistance = distance;
        bestVerse = verse;
      }
    }

    return bestVerse;
  }

  /// Temporarily highlights the destination verse number in the HTML output.
  void _applyTemporaryVerseHighlight(String verseId) {
    _highlightClearTimer?.cancel();
    _highlightedVerseId = verseId;
    _rebuildHtmlPreservingScrollOffset();

    _highlightClearTimer = Timer(_verseHighlightDuration, () {
      if (!mounted || _highlightedVerseId != verseId) return;
      _highlightedVerseId = null;
      _rebuildHtmlPreservingScrollOffset();
    });
  }

  /// Announces successful verse navigation for screen-reader users.
  void _announceVerseJump(String verseId) {
    final direction = Directionality.of(context);
    final message = 'Moved to ${widget.book.nameShort} ${widget.chapter}:$verseId';
    SemanticsService.sendAnnouncement(
      View.of(context),
      message,
      direction,
    );
  }

  /// Writes manual verse jump events into route information for browser history.
  void _recordManualVerseJumpInBrowserHistory(String verseId) {
    if (!kIsWeb) return;

    // Route-information updates can trigger route churn on some web launches.
    // Only touch route info when this screen is the current reading route.
    final route = ModalRoute.of(context);
    if (route == null || !route.isCurrent || route.settings.name != AppRoutes.reading) {
      return;
    }

    final location =
        '/read?book=${Uri.encodeQueryComponent(widget.book.code)}&chapter=${widget.chapter}&verse=${Uri.encodeQueryComponent(verseId)}';

    SystemNavigator.routeInformationUpdated(
      uri: Uri.parse(location),
      // Replace instead of push to avoid intermittent full-screen reloads
      // observed on some web launch/history states.
      replace: true,
    );
  }

  /// Returns the current quick-nav verse label shown in the sticky header.
  String get _currentVerseLabel {
    if (_topVerse != null) return _topVerse!;
    if (_verseOrder.isNotEmpty) return _verseOrder.first;
    return '-';
  }

  // ---- Chapter navigation ----

  /// Loads the canonical book list and the chapters of adjacent books, then
  /// computes [_prevChapterRef] and [_nextChapterRef].
  ///
  /// Runs concurrently with [_loadChapter] from [initState]; failures are
  /// non-fatal — the nav buttons simply remain disabled.
  Future<void> _loadNavInfo() async {
    try {
      await BibleService.ensureOpen();
      final books = await BibleService.getBooks();
      if (!mounted) return;

      final bookIdx = books.indexWhere((b) => b.code == widget.book.code);
      if (bookIdx < 0) {
        if (mounted) setState(() => _chapterNavLoaded = true);
        return;
      }

      // Build the chapter map with entries for the current book and any
      // adjacent books we might need to cross into.
      final chaptersByBook = <String, List<int>>{};

      // Always fetch the current book's chapters.
      chaptersByBook[widget.book.code] =
          await BibleService.getChapters(widget.book.code);
      if (!mounted) return;

      final currentChapters = chaptersByBook[widget.book.code]!;
      final chapterIdx = currentChapters.indexOf(widget.chapter);

      // Fetch the previous book's chapters if we might be at the start of
      // the current book (so we can offer navigation to the prev book's end).
      if (chapterIdx <= 0 && bookIdx > 0) {
        final prevBook = books[bookIdx - 1];
        chaptersByBook[prevBook.code] =
            await BibleService.getChapters(prevBook.code);
        if (!mounted) return;
      }

      // Fetch the next book's chapters if we might be at the end of the
      // current book (so we can offer navigation to the next book's start).
      if ((chapterIdx < 0 || chapterIdx >= currentChapters.length - 1) &&
          bookIdx < books.length - 1) {
        final nextBook = books[bookIdx + 1];
        chaptersByBook[nextBook.code] =
            await BibleService.getChapters(nextBook.code);
        if (!mounted) return;
      }

      // Compute final prev/next destinations using the pure utility function.
      final navResult = computeChapterNavigation(
        books: books,
        bookCode: widget.book.code,
        chapter: widget.chapter,
        chaptersByBook: chaptersByBook,
      );

      setState(() {
        _prevChapterRef = navResult.prev;
        _nextChapterRef = navResult.next;
        _chapterNavLoaded = true;
      });
    } catch (_) {
      // A nav-info failure is non-critical. Leave buttons in a disabled state
      // rather than surfacing an error to the reader.
      if (mounted) setState(() => _chapterNavLoaded = true);
    }
  }

  /// True when the scroll position is within [_chapterEndProximityPx] of the
  /// bottom of the chapter content, OR when the entire chapter fits on screen
  /// without scrolling.
  ///
  /// Used to keep the chapter nav bar permanently visible so the user can
  /// always proceed to the next chapter.
  ///
  /// When [maxScrollExtent] is 0 the reader is simultaneously at the start
  /// and end of the content — there is nowhere to scroll, so the nav bar
  /// must be pinned immediately (the normal [_onScroll] trigger will never
  /// fire and the buttons would otherwise stay hidden forever).
  bool get _isNearChapterEnd {
    if (!_scrollController.hasClients) return false;
    final pos = _scrollController.position;
    // maxScrollExtent == 0 → entire chapter visible on screen → treat as end.
    if (pos.maxScrollExtent <= 0) return true;
    return pos.extentAfter < _chapterEndProximityPx;
  }

  /// Shows the chapter nav bar on scroll and manages the auto-hide timer.
  ///
  /// - Reveals the bar on the first scroll event.
  /// - Cancels and restarts the 5-second auto-hide timer on every scroll.
  /// - When near the chapter end, cancels the timer so the bar stays pinned.
  void _handleChapterNavBarOnScroll() {
    // Reveal bar on first scroll.
    if (!_chapterNavBarVisible) {
      setState(() => _chapterNavBarVisible = true);
    }

    // Reset auto-hide timer on every scroll event.
    _chapterNavBarHideTimer?.cancel();

    if (_isNearChapterEnd) {
      // Keep bar pinned — no timer when at the bottom.
      return;
    }

    // Schedule auto-hide after inactivity.
    _chapterNavBarHideTimer = Timer(_chapterNavBarAutoHideDelay, () {
      if (mounted && !_isNearChapterEnd) {
        setState(() => _chapterNavBarVisible = false);
      }
    });
  }

  /// Pushes a new route for [args], scrolling to the top of the new chapter.
  ///
  /// Does nothing when [args] is null (e.g., at Bible boundaries) or when the
  /// widget is no longer mounted.
  void _navigateToChapter(ReadingArgs? args) {
    if (args == null || !mounted) return;
    Navigator.pushNamed(
      context,
      AppRoutes.reading,
      arguments: args,
    );
  }

  /// Handles a completed horizontal drag gesture to trigger chapter navigation.
  ///
  /// Left swipe (negative velocity) = next chapter (like turning a page forward).
  /// Right swipe (positive velocity) = previous chapter (like turning back).
  ///
  /// The [_swipeChapterVelocityThreshold] guards against accidental micro-swipes.
  void _onHorizontalSwipeEnd(DragEndDetails details) {
    final velocity = details.primaryVelocity;
    if (velocity == null) return;

    if (velocity < -_swipeChapterVelocityThreshold) {
      // Finger moved left → go forward to next chapter.
      _navigateToChapter(_nextChapterRef);
    } else if (velocity > _swipeChapterVelocityThreshold) {
      // Finger moved right → go back to previous chapter.
      _navigateToChapter(_prevChapterRef);
    }
  }

  /// Handles keyboard events for chapter navigation on desktop and web.
  ///
  /// Arrow Left / Page Up  → previous chapter.
  /// Arrow Right / Page Down → next chapter.
  /// All other keys are ignored so normal text/scroll shortcuts still work.
  ///
  /// IMPORTANT: only return [KeyEventResult.handled] when navigation will
  /// actually occur (i.e. the destination is non-null).  At Bible boundaries
  /// (Genesis 1 has no previous; last Revelation chapter has no next) the
  /// destination is null and we must return [KeyEventResult.ignored] so the
  /// platform and scroll view can still use Page Up/Down for normal scrolling.
  ///
  /// IMPORTANT: modifier-key combinations (Alt+Left for browser back,
  /// Ctrl+Right for word-jump, etc.) must also be ignored.  We only intercept
  /// the plain, unmodified arrow/page keys to avoid hijacking well-known
  /// platform and browser shortcuts on desktop and web.
  KeyEventResult _onKeyEvent(FocusNode node, KeyEvent event) {
    // Only act on initial key-down events to avoid double-firing on key repeat.
    if (event is! KeyDownEvent) return KeyEventResult.ignored;

    // Pass through any combo that involves a modifier key (Alt, Ctrl, Meta/Cmd,
    // Shift).  Examples that must not be consumed:
    //   Alt+Left/Right  — browser history back/forward on web
    //   Ctrl+Left/Right — word-by-word cursor movement on desktop
    //   Shift+Page Down — extend text selection
    final HardwareKeyboard kb = HardwareKeyboard.instance;
    if (kb.isAltPressed || kb.isControlPressed ||
        kb.isMetaPressed || kb.isShiftPressed) {
      return KeyEventResult.ignored;
    }

    if (event.logicalKey == LogicalKeyboardKey.arrowLeft ||
        event.logicalKey == LogicalKeyboardKey.pageUp) {
      if (_prevChapterRef == null) return KeyEventResult.ignored;
      _navigateToChapter(_prevChapterRef);
      return KeyEventResult.handled;
    }

    if (event.logicalKey == LogicalKeyboardKey.arrowRight ||
        event.logicalKey == LogicalKeyboardKey.pageDown) {
      if (_nextChapterRef == null) return KeyEventResult.ignored;
      _navigateToChapter(_nextChapterRef);
      return KeyEventResult.handled;
    }

    return KeyEventResult.ignored;
  }

  // ---- Build ----

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    // Focus captures keyboard arrow / page keys for chapter navigation on
    // desktop and web.  autofocus claims focus when the screen first mounts.
    return Focus(
      autofocus: true,
      onKeyEvent: _onKeyEvent,
      // GestureDetector catches horizontal swipes for chapter navigation on
      // touch screens.  HitTestBehavior.translucent lets child widgets
      // (HtmlWidget link taps, scroll view) also receive pointer events.
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onHorizontalDragEnd: _onHorizontalSwipeEnd,
        child: Scaffold(
          body: Stack(
            children: [
              // ---- Main chapter content ----
              CustomScrollView(
                controller: _scrollController,
                slivers: [
                  _buildSliverAppBar(colorScheme),
                  _buildBody(colorScheme),
                ],
              ),

              // ---- Chapter navigation bar overlay ----
              //
              // Positioned at the bottom of the Stack so it overlays (rather
              // than displacing) the chapter text.  AnimatedSlide moves it
              // down one full bar-height when hidden, and back to 0 when shown.
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: AnimatedSlide(
                  offset: Offset(0.0, _chapterNavBarVisible ? 0.0 : 1.0),
                  duration: _chapterNavBarAnimDuration,
                  curve: Curves.easeInOut,
                  child: _buildChapterNavBar(colorScheme),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ---- Chapter navigation bar ----

  /// Sliding chapter navigation bar shown at the bottom of the screen.
  ///
  /// Contains a Previous and Next chapter button.  Each button shows the
  /// destination book abbreviation and chapter number.  A button is hidden
  /// (replaced by an empty [SizedBox]) when navigation is not available in
  /// that direction (e.g., Previous is hidden on Genesis 1).
  ///
  /// The bar uses a [Material] elevation shadow to separate it visually from
  /// the chapter text it overlays.  [MediaQuery.padding.bottom] is respected
  /// so buttons sit above the system navigation bar on devices that have one.
  Widget _buildChapterNavBar(ColorScheme colorScheme) {
    final bottomInset = MediaQuery.of(context).padding.bottom;

    // Build a single nav button.  [icon] appears on the leading side; text
    // shows the destination.  Returns an empty widget when [args] is null.
    Widget navButton({
      required ReadingArgs? args,
      required IconData icon,
      required bool isNext,
    }) {
      if (!_chapterNavLoaded || args == null) {
        return const Expanded(child: SizedBox.shrink());
      }

      final label = '${args.book.nameShort} ${args.chapter}';

      // Next button: text on the left, chevron on the right (→ direction).
      // Prev button: chevron on the left, text on the right (← direction).
      final buttonChild = isNext
          ? Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                  child: Text(
                    label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 6),
                Icon(icon, size: 16),
              ],
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(icon, size: 16),
                const SizedBox(width: 6),
                Flexible(
                  child: Text(
                    label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            );

      // Semantic label includes the directional context ("Next chapter:" /
      // "Previous chapter:") that the chevron icon provides visually but that
      // screen readers would otherwise never announce.  The visible button
      // text is kept short (just the reference) so it fits in the bar.
      //
      // The Semantics widget is placed INSIDE the button child (not around the
      // OutlinedButton) so the button keeps its own tap-action semantics node.
      // excludeSemantics on the inner node suppresses the Row's text/icon so
      // TalkBack/VoiceOver announces only the single directional label.
      final direction = isNext ? 'Next chapter' : 'Previous chapter';
      final semanticLabel = '$direction: $label';

      return Expanded(
        child: OutlinedButton(
          onPressed: () => _navigateToChapter(args),
          style: OutlinedButton.styleFrom(
            // The bar background is primaryContainer, so use the matching
            // contrast tokens for foreground text/icons and the border.
            // This ensures legibility across all Material 3 custom themes.
            foregroundColor: colorScheme.onPrimaryContainer,
            side: BorderSide(color: colorScheme.onPrimaryContainer.withAlpha(80)),
            alignment: isNext ? Alignment.centerRight : Alignment.centerLeft,
            visualDensity: VisualDensity.compact,
          ),
          child: Semantics(
            label: semanticLabel,
            excludeSemantics: true,
            child: buttonChild,
          ),
        ),
      );
    }

    return Material(
      // Match the sticky header's primaryContainer color for visual consistency.
      elevation: 4,
      color: colorScheme.primaryContainer,
      child: Padding(
        padding: EdgeInsets.fromLTRB(16, 8, 16, 8 + bottomInset),
        child: Row(
          children: [
            // Previous chapter button (left side).
            navButton(
              args: _prevChapterRef,
              icon: Icons.chevron_left_rounded,
              isNext: false,
            ),
            const SizedBox(width: 8),
            // Next chapter button (right side).
            navButton(
              args: _nextChapterRef,
              icon: Icons.chevron_right_rounded,
              isNext: true,
            ),
          ],
        ),
      ),
    );
  }

  // ---- Header ----

  /// Builds collapsible top app bar plus sticky quick-nav controls.
  SliverAppBar _buildSliverAppBar(ColorScheme colorScheme) {
    return SliverAppBar(
      expandedHeight: _expandedHeight,
      pinned: true,
      backgroundColor: colorScheme.primaryContainer,
      foregroundColor: colorScheme.onPrimaryContainer,
      title: _isCollapsed
          ? Text(
              '${widget.book.nameShort} ${widget.chapter}',
              style: const TextStyle(fontWeight: FontWeight.w700),
            )
          : null,
      // ---- AppBar actions (right side) ----
      // Home icon — clears the back stack and returns to the home screen.
      // Uses pushNamedAndRemoveUntil so the user cannot accidentally swipe
      // back into a stale reading session.
      actions: [
        IconButton(
          icon: const Icon(Icons.home_rounded),
          tooltip: 'Home',
          onPressed: () => Navigator.pushNamedAndRemoveUntil(
            context,
            AppRoutes.home,
            (route) => false, // Remove every route below home.
          ),
        ),
        // Bookmarks icon — opens the book-selection screen with the
        // Bookmarks tab pre-selected (index 2).
        IconButton(
          icon: const Icon(Icons.bookmarks_rounded),
          tooltip: 'Bookmarks',
          onPressed: () => Navigator.pushNamed(
            context,
            AppRoutes.bookSelect,
            arguments: const BookSelectArgs(initialTab: 2),
          ),
        ),
        // Add bookmark icon — opens the add-bookmark bottom sheet.
        IconButton(
          icon: const Icon(Icons.bookmark_add_rounded),
          tooltip: 'Add bookmark',
          onPressed: _openAddBookmarkSheet,
        ),
        // Settings icon — opens the settings screen.
        IconButton(
          icon: const Icon(Icons.settings_rounded),
          tooltip: 'Settings',
          onPressed: () => Navigator.pushNamed(context, AppRoutes.settings),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.zero,
        background: _buildExpandedHeader(colorScheme),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(_quickNavBarHeight),
        child: _buildQuickNavBar(colorScheme),
      ),
    );
  }

  /// Expanded header content (testament, book title, chapter title).
  Widget _buildExpandedHeader(ColorScheme colorScheme) {
    return Container(
      color: colorScheme.primaryContainer,
      // Reserve vertical space so the expanded title block never sits under
      // the sticky quick-nav row at the bottom of the SliverAppBar.
      padding: const EdgeInsets.fromLTRB(20, 0, 20, _quickNavBarHeight + 12),
      alignment: Alignment.bottomLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.book.testament.label.toUpperCase(),
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.4,
              color: colorScheme.onPrimaryContainer.withAlpha(178),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            widget.book.nameShort,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w800,
              color: colorScheme.onPrimaryContainer,
              height: 1.1,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            'Chapter ${widget.chapter}',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: colorScheme.onPrimaryContainer.withAlpha(204),
            ),
          ),
        ],
      ),
    );
  }

  /// Sticky quick-nav row shown in both expanded and collapsed app-bar states.
  Widget _buildQuickNavBar(ColorScheme colorScheme) {
    return Container(
      color: colorScheme.primaryContainer,
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
      child: Row(
        children: [
          Expanded(
            child: _QuickNavButton(
              icon: Icons.menu_book_rounded,
              label: '${widget.book.nameShort} ${widget.chapter}',
              onPressed: _openBookChapterQuickNav,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: _QuickNavButton(
              icon: Icons.format_list_numbered_rounded,
              label: 'Verse $_currentVerseLabel',
              onPressed: _verses == null || _verses!.isEmpty
                  ? null
                  : _openVerseQuickNav,
            ),
          ),
        ],
      ),
    );
  }

  // ---- Body states ----

  /// Returns loading, empty, error, or rendered chapter sliver.
  Widget _buildBody(ColorScheme colorScheme) {
    if (_html == null && _errorMessage == null && _emptyMessage == null) {
      return const SliverFillRemaining(
        child: Center(child: CircularProgressIndicator()),
      );
    }

    if (_emptyMessage != null) {
      return SliverFillRemaining(child: _buildEmptyState(colorScheme));
    }

    if (_errorMessage != null) {
      return SliverFillRemaining(child: _buildErrorState(colorScheme));
    }

    return _buildHtmlContent(_html!);
  }

  /// Neutral info state for permanently absent chapter content.
  Widget _buildEmptyState(ColorScheme colorScheme) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.book_outlined,
              size: 48,
              color: colorScheme.onSurface.withAlpha(127),
            ),
            const SizedBox(height: 16),
            Text(
              _emptyMessage!,
              textAlign: TextAlign.center,
              style: TextStyle(color: colorScheme.onSurface.withAlpha(178)),
            ),
          ],
        ),
      ),
    );
  }

  /// Error state for transient chapter load/render failures.
  Widget _buildErrorState(ColorScheme colorScheme) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.error_outline_rounded, size: 48, color: colorScheme.error),
            const SizedBox(height: 16),
            Text(
              _errorMessage!,
              textAlign: TextAlign.center,
              style: TextStyle(color: colorScheme.onSurface),
            ),
            const SizedBox(height: 24),
            FilledButton.icon(
              onPressed: _loadChapter,
              icon: const Icon(Icons.refresh_rounded),
              label: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }

  // ---- HTML content ----

  /// Builds rendered chapter content and invisible per-verse semantics overlay.
  Widget _buildHtmlContent(String html) {
    return SliverToBoxAdapter(
      child: Padding(
        key: _contentTopKey,
        // Bottom padding is extended by [_chapterNavBarHeight] so the last
        // verse is never hidden behind the overlaid chapter navigation bar.
        padding: const EdgeInsets.fromLTRB(16, 16, 16, _contentBottomPadding),
        child: Stack(
          children: [
            ExcludeSemantics(
              child: HtmlWidget(
                html,
                key: _htmlWidgetKey,
                // `textStyle` sets the Flutter-level base font size for ALL
                // rendered text.  Without it, flutter_widget_from_html_core
                // inherits the ambient Material theme size (typically 14 sp)
                // and ignores the `body { font-size }` CSS rule for plain
                // paragraph text.  Explicit inline styles (verse numbers,
                // headings) already carry absolute px values computed from
                // baseFontSizePx, so they continue to scale correctly.
                // `line-height:1.65` keeps the same comfortable reading
                // rhythm regardless of which font-size the user chose.
                textStyle: TextStyle(
                  fontSize: SettingsService.instance.fontSizePx,
                  height: 1.65,
                ),
                customWidgetBuilder: _buildCustomHtmlWidget,
                // Ensure the <div data-cbv="N"> block markers take up exactly
                // zero vertical space so they don't introduce visual gaps.
                customStylesBuilder: (element) {
                  final attrs = element.attributes as Map?;
                  if (element.localName == 'div' &&
                      attrs != null &&
                      attrs.containsKey('data-cbv')) {
                    return {
                      'padding': '0',
                      'margin': '0',
                      'line-height': '0',
                      'height': '0',
                      'overflow': 'hidden',
                    };
                  }
                  return null;
                },
              ),
            ),
            if (_verses != null && _verses!.isNotEmpty)
              Visibility(
                visible: false,
                maintainState: true,
                maintainAnimation: true,
                maintainSize: true,
                maintainSemantics: true,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _verses!
                      .map(
                        (v) => Semantics(
                          label: 'Verse ${v.verse}: ${v.textPlain}',
                          excludeSemantics: true,
                          child: const SizedBox.shrink(),
                        ),
                      )
                      .toList(),
                ),
              ),
          ],
        ),
      ),
    );
  }

  /// Maps `<div data-cbv="N">` block markers to zero-sized keyed widgets.
  ///
  /// The renderer emits `<div data-cbv="{verseId}">` as a block sibling
  /// BEFORE each verse paragraph. Each marker receives a stable [GlobalKey]
  /// so this screen can compute exact verse positions after layout.
  ///
  /// Using `<div>` (block-level) rather than `<span>` (inline) is critical:
  /// `flutter_widget_from_html_core` wraps `customWidgetBuilder` results in
  /// `WidgetBit.block()` unconditionally. An inline `<span>` with a block
  /// widget would cause the HTML5 parser to close the enclosing `<p>`,
  /// putting every verse on its own line. A `<div>` placed as a sibling
  /// before the `<p>` is valid HTML5 and never interrupts paragraph flow.
  Widget? _buildCustomHtmlWidget(dynamic element) {
    // Only handle our verse-position marker divs.
    if (element.localName != 'div') return null;
    final attributes = element.attributes as Map<dynamic, dynamic>?;
    final verseId = (attributes?['data-cbv'] as String?)?.trim();
    if (verseId == null || verseId.isEmpty) {
      return null; // Not a marker div — use default rendering.
    }

    final key = _verseMarkerKeys.putIfAbsent(
      verseId,
      () => GlobalKey(debugLabel: 'verse-marker-$verseId'),
    );

    return SizedBox(key: key, width: 0, height: 0);
  }

  // ---- Colour utility ----

  /// Converts Flutter [Color] to CSS color string for pure-Dart renderer input.
  static String _colorToCss(Color c) {
    final r = (c.r * 255.0).round().clamp(0, 255);
    final g = (c.g * 255.0).round().clamp(0, 255);
    final b = (c.b * 255.0).round().clamp(0, 255);
    final a = (c.a * 255.0).round().clamp(0, 255);

    if (a >= 255) {
      return '#'
          '${r.toRadixString(16).padLeft(2, '0')}'
          '${g.toRadixString(16).padLeft(2, '0')}'
          '${b.toRadixString(16).padLeft(2, '0')}';
    }

    final alpha = (a / 255.0).toStringAsFixed(3);
    return 'rgba($r, $g, $b, $alpha)';
  }
}

// ---------------------------------------------------------------------------
// Shared quick-nav button
// ---------------------------------------------------------------------------

/// Compact quick-nav button used in the sticky header row.
class _QuickNavButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onPressed;

  const _QuickNavButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: 18),
      label: Text(
        label,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      style: OutlinedButton.styleFrom(
        visualDensity: VisualDensity.compact,
        alignment: Alignment.centerLeft,
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Book/chapter quick-nav sheet
// ---------------------------------------------------------------------------

/// Result returned by the two-step book/chapter sheet.
class _BookChapterSelectionResult {
  final Book book;
  final int chapter;

  const _BookChapterSelectionResult({required this.book, required this.chapter});
}

/// Two-step bottom sheet:
///   step 1 = choose book
///   step 2 = choose chapter for selected book
class _BookChapterQuickNavSheet extends StatefulWidget {
  final String currentBookCode;

  const _BookChapterQuickNavSheet({
    required this.currentBookCode,
  });

  @override
  State<_BookChapterQuickNavSheet> createState() => _BookChapterQuickNavSheetState();
}

class _BookChapterQuickNavSheetState extends State<_BookChapterQuickNavSheet>
    with SingleTickerProviderStateMixin {
  static const double _alphabeticalBookRowExtent = 56.0;
  static const double _traditionalBookRowExtent = 56.0;
  static const double _traditionalHeaderExtent = 42.0;
  static const Duration _quickNavScrollDuration = Duration(milliseconds: 700);

  /// Max frame retries while waiting for the scroll controller to attach
  /// before attempting the Traditional-tab auto-scroll.
  static const int _maxTraditionalScrollEnsureRetries = 8;

  final ScrollController _traditionalScrollController = ScrollController();
  final ScrollController _alphabeticalScrollController = ScrollController();
  late final TabController _tabController;

  List<Book>? _books;
  List<int>? _chapters;
  String? _error;
  Book? _selectedBook;
  bool _loadingChapters = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_onBookTabChanged);
    _loadBooks();
  }

  @override
  void dispose() {
    _tabController.removeListener(_onBookTabChanged);
    _tabController.dispose();
    _traditionalScrollController.dispose();
    _alphabeticalScrollController.dispose();
    super.dispose();
  }

  /// Re-scroll to the current book when switching between Traditional and
  /// Alphabetical tabs so both tabs open at the current reading context.
  void _onBookTabChanged() {
    // Ignore intermediate animation ticks; act once tab change is settled.
    if (_tabController.indexIsChanging) return;
    // Chapter grid view is active, no book list to scroll.
    if (_selectedBook != null) return;

    final books = _books;
    if (books == null || books.isEmpty) return;
    _scrollCurrentBookIntoView(books);
  }

  Future<void> _loadBooks() async {
    setState(() {
      _error = null;
      _books = null;
      _chapters = null;
      _selectedBook = null;
    });

    try {
      await BibleService.ensureOpen();
      final books = await BibleService.getBooks();
      if (!mounted) return;
      setState(() => _books = books);
      _scrollCurrentBookIntoView(books);
    } catch (e) {
      if (!mounted) return;
      setState(() => _error = 'Could not load books. Please try again.');
    }
  }

  Future<void> _selectBook(Book book) async {
    setState(() {
      _selectedBook = book;
      _chapters = null;
      _loadingChapters = true;
      _error = null;
    });

    try {
      final chapters = await BibleService.getChapters(book.code);
      if (!mounted) return;
      setState(() {
        _chapters = chapters;
        _loadingChapters = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _loadingChapters = false;
        _error = 'Could not load chapters. Please try again.';
      });
    }
  }

  /// Scrolls both the Traditional and Alphabetical book pickers to the
  /// current book when the quick-nav sheet opens or the active tab changes.
  ///
  /// The Traditional list now uses fixed row/header extents plus canonical
  /// section ordering, so index-to-offset math is deterministic even when the
  /// destination row is not mounted yet.
  void _scrollCurrentBookIntoView(List<Book> books) {
    if (books.isEmpty) return;

    // Pre-sort the alphabetical list and find the current book's index.
    final alphabeticalBooks = [...books]
      ..sort((a, b) => a.nameShort.compareTo(b.nameShort));
    final alphabeticalIndex =
        alphabeticalBooks.indexWhere((b) => b.code == widget.currentBookCode);

    // Scrolls the Traditional list using computed offset math from fixed
    // extents, so off-screen rows can be reached without mounted row contexts.
    // Retries a few frames if the controller has not attached yet.
    void animateTraditionalToCurrent({int attempt = 0}) {
      if (!_traditionalScrollController.hasClients) {
        if (attempt >= _maxTraditionalScrollEnsureRetries) return;
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (!mounted) return;
          animateTraditionalToCurrent(attempt: attempt + 1);
        });
        return;
      }

      final itemOffset = _computeTraditionalScrollOffset(books);
      const desiredTopPadding = 72.0;
      final target = (itemOffset - desiredTopPadding).clamp(
        0.0,
        _traditionalScrollController.position.maxScrollExtent,
      );

      _traditionalScrollController.animateTo(
        target,
        duration: _quickNavScrollDuration,
        curve: Curves.easeInOutCubic,
      );
    }

    // Scrolls the Alphabetical list using the fixed row extent — unchanged.
    void animateAlphabeticalToIndex(int index) {
      if (index < 0) return;
      if (!_alphabeticalScrollController.hasClients) return;

      // Alphabetical list uses fixed itemExtent, so index→offset is exact.
      final target = (index * _alphabeticalBookRowExtent) -
          (_alphabeticalBookRowExtent * 1.5);
      final clamped = target.clamp(
        0.0,
        _alphabeticalScrollController.position.maxScrollExtent,
      );

      _alphabeticalScrollController.animateTo(
        clamped,
        duration: _quickNavScrollDuration,
        curve: Curves.easeInOutCubic,
      );
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      animateTraditionalToCurrent();
      animateAlphabeticalToIndex(alphabeticalIndex);
    });
  }

  /// Computes the pixel offset of the current book row in the Traditional tab.
  ///
  /// This math is reliable because the Traditional list enforces fixed extents
  /// for section headers and rows.
  double _computeTraditionalScrollOffset(List<Book> books) {
    final otBooks = books.where((b) => b.testament == Testament.ot).toList();
    final ntBooks = books.where((b) => b.testament == Testament.nt).toList();
    final dcBooks = books.where((b) => b.testament == Testament.dc).toList();

    double y = 0;

    y += _traditionalHeaderExtent;
    for (final b in otBooks) {
      if (b.code == widget.currentBookCode) return y;
      y += _traditionalBookRowExtent;
    }

    y += _traditionalHeaderExtent;
    for (final b in ntBooks) {
      if (b.code == widget.currentBookCode) return y;
      y += _traditionalBookRowExtent;
    }

    if (dcBooks.isNotEmpty) {
      y += _traditionalHeaderExtent;
      for (final b in dcBooks) {
        if (b.code == widget.currentBookCode) return y;
        y += _traditionalBookRowExtent;
      }
    }

    return 0.0;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final maxHeight = MediaQuery.of(context).size.height * 0.88;

    return SizedBox(
      height: maxHeight,
      child: Column(
        children: [
          const SizedBox(height: 8),
          Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: theme.colorScheme.outlineVariant,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                if (_selectedBook != null)
                  IconButton(
                    tooltip: 'Back to books',
                    icon: const Icon(Icons.arrow_back_rounded),
                    onPressed: () {
                      setState(() {
                        _selectedBook = null;
                        _chapters = null;
                        _error = null;
                      });
                      final books = _books;
                      if (books != null) {
                        _scrollCurrentBookIntoView(books);
                      }
                    },
                  ),
                Expanded(
                  child: Text(
                    _selectedBook == null
                        ? 'Select Book'
                        : 'Select Chapter (${_selectedBook!.nameShort})',
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Expanded(child: _buildBody(theme)),
        ],
      ),
    );
  }

  Widget _buildBody(ThemeData theme) {
    if (_books == null && _error == null) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_error != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(_error!, textAlign: TextAlign.center),
              const SizedBox(height: 12),
              FilledButton.icon(
                onPressed: _selectedBook == null ? _loadBooks : () => _selectBook(_selectedBook!),
                icon: const Icon(Icons.refresh_rounded),
                label: const Text('Retry'),
              ),
            ],
          ),
        ),
      );
    }

    if (_selectedBook == null) {
      return _buildBooksPicker(theme);
    }

    if (_loadingChapters || _chapters == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return _buildChapterGrid(theme, _selectedBook!, _chapters!);
  }

  Widget _buildBooksPicker(ThemeData theme) {
    final books = _books!;

    return Column(
      children: [
        TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Traditional'),
            Tab(text: 'Alphabetical'),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              _buildTraditionalBooksTab(theme, books),
              _buildAlphabeticalBooksTab(theme, books),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTraditionalBooksTab(ThemeData theme, List<Book> books) {
    // Explicit OT -> NT -> DC order, regardless of underlying DB ordering.
    final otBooks = books.where((b) => b.testament == Testament.ot).toList();
    final ntBooks = books.where((b) => b.testament == Testament.nt).toList();
    final dcBooks = books.where((b) => b.testament == Testament.dc).toList();

    final items = <Widget>[
      _QuickNavSectionHeader(label: Testament.ot.label),
      ...otBooks.map((b) => _buildBookRow(theme, b, forceFixedHeight: true)),
      _QuickNavSectionHeader(label: Testament.nt.label),
      ...ntBooks.map((b) => _buildBookRow(theme, b, forceFixedHeight: true)),
      if (dcBooks.isNotEmpty) ...[
        _QuickNavSectionHeader(label: Testament.dc.label),
        ...dcBooks.map((b) => _buildBookRow(theme, b, forceFixedHeight: true)),
      ],
      const SizedBox(height: 16),
    ];

    return ListView(
      controller: _traditionalScrollController,
      children: items,
    );
  }

  Widget _buildAlphabeticalBooksTab(ThemeData theme, List<Book> books) {
    final sorted = [...books]..sort((a, b) => a.nameShort.compareTo(b.nameShort));

    return ListView.builder(
      controller: _alphabeticalScrollController,
      itemExtent: _alphabeticalBookRowExtent,
      itemCount: sorted.length,
      itemBuilder: (context, index) => _buildBookRow(theme, sorted[index]),
    );
  }

  Widget _buildBookRow(
    ThemeData theme,
    Book book, {
    bool forceFixedHeight = false,
  }) {
    final isCurrent = book.code == widget.currentBookCode;
    final tile = ListTile(
      title: Text(
        book.nameShort,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Icon(
        Icons.chevron_right_rounded,
        color: theme.colorScheme.onSurfaceVariant,
      ),
      tileColor: isCurrent ? theme.colorScheme.secondaryContainer.withAlpha(90) : null,
      shape: isCurrent
          ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
          : null,
      onTap: () => _selectBook(book),
    );

    if (!forceFixedHeight) {
      return tile;
    }

    return SizedBox(
      height: _traditionalBookRowExtent,
      child: tile,
    );
  }

  Widget _buildChapterGrid(ThemeData theme, Book book, List<int> chapters) {
    return GridView.builder(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: chapters.length,
      itemBuilder: (context, index) {
        final chapter = chapters[index];
        // Semantics wrapper announces "Chapter N" so screen readers give full
        // context, not just the bare number "1".  button: true + ExcludeSemantics
        // on the inner text mirrors the _ChapterTile pattern used on the main
        // chapter-selection screen.
        return Semantics(
          label: 'Chapter $chapter',
          button: true,
          child: Material(
            color: theme.colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(12),
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () {
                Navigator.pop(
                  context,
                  _BookChapterSelectionResult(book: book, chapter: chapter),
                );
              },
              // ExcludeSemantics suppresses the bare Text number so TalkBack
              // only announces the label from the outer Semantics node above.
              child: ExcludeSemantics(
                child: Center(
                  child: Text(
                    '$chapter',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: theme.colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

/// Section header row used in the Traditional quick-nav tab.
class _QuickNavSectionHeader extends StatelessWidget {
  final String label;

  const _QuickNavSectionHeader({required this.label});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      height: _BookChapterQuickNavSheetState._traditionalHeaderExtent,
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 8),
      color: colorScheme.primaryContainer.withAlpha(100),
      child: Text(
        label.toUpperCase(),
        style: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.1,
          fontSize: 12,
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Verse picker sheets (adaptive)
// ---------------------------------------------------------------------------

/// Wheel-based verse picker for touch-first layouts.
class _VerseWheelPickerSheet extends StatefulWidget {
  final List<Verse> verses;
  final String currentVerse;

  const _VerseWheelPickerSheet({required this.verses, required this.currentVerse});

  @override
  State<_VerseWheelPickerSheet> createState() => _VerseWheelPickerSheetState();
}

class _VerseWheelPickerSheetState extends State<_VerseWheelPickerSheet> {
  late int _selectedIndex;
  late final FixedExtentScrollController _controller;

  @override
  void initState() {
    super.initState();
    final index = widget.verses.indexWhere((v) => v.verse == widget.currentVerse);
    _selectedIndex = index >= 0 ? index : 0;
    _controller = FixedExtentScrollController(initialItem: _selectedIndex);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.of(context).size.height * 0.55;

    return SizedBox(
      height: maxHeight,
      child: Column(
        children: [
          const SizedBox(height: 8),
          Text(
            'Select Verse',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: ListWheelScrollView.useDelegate(
              controller: _controller,
              itemExtent: 44,
              perspective: 0.003,
              diameterRatio: 1.3,
              onSelectedItemChanged: (index) => _selectedIndex = index,
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: widget.verses.length,
                builder: (context, index) {
                  final verse = widget.verses[index];
                  return Center(
                    child: Text(
                      'Verse ${verse.verse}',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            child: SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {
                  Navigator.pop(context, widget.verses[_selectedIndex].verse);
                },
                child: const Text('Go to Verse'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// List-based verse picker for desktop/web ergonomics.
class _VerseListPickerSheet extends StatelessWidget {
  final List<Verse> verses;
  final String currentVerse;

  const _VerseListPickerSheet({required this.verses, required this.currentVerse});

  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.of(context).size.height * 0.72;
    final theme = Theme.of(context);

    return SizedBox(
      height: maxHeight,
      child: Column(
        children: [
          const SizedBox(height: 8),
          Text(
            'Select Verse',
            style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: ListView.builder(
              itemCount: verses.length,
              itemBuilder: (context, index) {
                final verse = verses[index];
                final isCurrent = verse.verse == currentVerse;
                return ListTile(
                  title: Text('Verse ${verse.verse}'),
                  subtitle: Text(
                    verse.textPlain,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  tileColor:
                      isCurrent ? theme.colorScheme.secondaryContainer.withAlpha(80) : null,
                  onTap: () => Navigator.pop(context, verse.verse),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Add Bookmark sheet — Step 1.15
// ---------------------------------------------------------------------------

/// Bottom sheet for creating a new bookmark at the current reading location.
///
/// Defaults to a chapter-level bookmark (verse = '').  The user can tap
/// "Change verse" to select a specific verse from a picker.
///
/// Fields:
///   • Verse selector — shows "Full chapter" or a specific verse; tappable
///   • Label — single-line optional text field (hint: "Memorize")
///   • Notes — multi-line optional text field (hint: "Add a note...")
///
/// Returns `true` via [Navigator.pop] when a bookmark is successfully saved,
/// so the calling screen can refresh bookmark indicators.
class AddBookmarkSheet extends StatefulWidget {
  /// The book being read, used for the bookmark's [Bookmark.bookCode] and
  /// display title.
  final Book book;

  /// The current chapter number, used as the bookmark's chapter.
  final int chapter;

  /// All verses in the chapter.  Passed to the verse picker sheet so the
  /// user can select a specific verse.  May be empty when the chapter has
  /// no verse data (e.g. an intro page), in which case verse selection is
  /// disabled.
  final List<Verse> verses;

  const AddBookmarkSheet({
    super.key,
    required this.book,
    required this.chapter,
    required this.verses,
  });

  @override
  State<AddBookmarkSheet> createState() => _AddBookmarkSheetState();
}

class _AddBookmarkSheetState extends State<AddBookmarkSheet> {
  // ---- State ----

  /// Currently selected verse ID; empty string means the full chapter.
  String _selectedVerse = '';

  /// Text controllers for label and notes inputs.
  final TextEditingController _labelController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();

  /// Whether a save is in progress (prevents double-taps).
  bool _saving = false;

  // ---- Lifecycle ----

  @override
  void dispose() {
    _labelController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  // ---- Verse picker ----

  /// Opens the verse list picker and updates [_selectedVerse].
  Future<void> _pickVerse() async {
    if (widget.verses.isEmpty) return;

    final picked = await showModalBottomSheet<String>(
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      builder: (_) => _VerseListPickerSheet(
        verses: widget.verses,
        // If nothing selected yet, highlight the first verse.
        currentVerse: _selectedVerse.isEmpty
            ? widget.verses.first.verse
            : _selectedVerse,
      ),
    );

    if (picked != null && mounted) {
      setState(() => _selectedVerse = picked);
    }
  }

  // ---- Save ----

  /// Saves the bookmark and closes the sheet.
  Future<void> _save() async {
    if (_saving) return;
    setState(() => _saving = true);

    try {
      await UserDataService.ensureOpen();

      // Build a plain-text verse snippet for the card display in BookmarksTab.
      // For chapter-level bookmarks (verse = '') there is no verse text.
      String? verseText;
      if (_selectedVerse.isNotEmpty) {
        try {
          final match = widget.verses
              .where((v) => v.verse == _selectedVerse)
              .firstOrNull;
          verseText = match?.textPlain;
        } catch (_) {
          verseText = null;
        }
      }

      final bm = Bookmark(
        bookCode: widget.book.code,
        bookSortOrder: widget.book.sortOrder,
        chapter: widget.chapter,
        verse: _selectedVerse,
        // verseEnd is null in Phase 1 — verse-range bookmarks are Phase 8.
        // Using null (not '') ensures the reference getter does not append a
        // trailing dash (the getter checks `if (verseEnd != null)`).
        verseEnd: null,
        verseText: verseText,
        label: _labelController.text.trim().isEmpty
            ? null
            : _labelController.text.trim(),
        notes: _notesController.text.trim().isEmpty
            ? null
            : _notesController.text.trim(),
        createdAt: DateTime.now(),
      );

      await UserDataService.addBookmark(bm);

      if (mounted) {
        // Return true to signal the caller that a bookmark was saved.
        Navigator.pop(context, true);
      }
    } catch (e) {
      if (mounted) {
        setState(() => _saving = false);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Could not save bookmark.')),
        );
      }
    }
  }

  // ---- Build ----

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    // Display label for the current verse selection.
    final verseLabel = _selectedVerse.isEmpty
        ? 'Full chapter: ${widget.book.nameShort} ${widget.chapter}'
        : '${widget.book.nameShort} ${widget.chapter}:$_selectedVerse';

    return Padding(
      // Inset for the on-screen keyboard.
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              // ---- Sheet handle / title ----
              Center(
                child: Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: colorScheme.onSurfaceVariant.withAlpha(80),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Add Bookmark',
                style: textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 20),

              // ---- Verse selector ----
              // Shows which location will be bookmarked; tapping opens the
              // verse list picker.  Disabled when there are no verses.
              InkWell(
                onTap: widget.verses.isNotEmpty ? _pickVerse : null,
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: colorScheme.outline.withAlpha(128)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.bookmark_outline_rounded,
                          color: colorScheme.primary, size: 20),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          verseLabel,
                          style: textTheme.bodyMedium?.copyWith(
                            color: colorScheme.onSurface,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      if (widget.verses.isNotEmpty)
                        Icon(Icons.chevron_right_rounded,
                            color: colorScheme.onSurfaceVariant),
                    ],
                  ),
                ),
              ),

              // "Full chapter" reset chip — only shown when a specific verse
              // is selected, so the user can revert to chapter-level.
              if (_selectedVerse.isNotEmpty) ...[
                const SizedBox(height: 8),
                Semantics(
                  label: 'Switch to full chapter bookmark',
                  button: true,
                  child: ActionChip(
                    avatar: const Icon(Icons.layers_rounded, size: 16),
                    label: const Text('Full chapter'),
                    onPressed: () => setState(() => _selectedVerse = ''),
                    visualDensity: VisualDensity.compact,
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                  ),
                ),
              ],

              const SizedBox(height: 20),

              // ---- Label field ----
              TextField(
                controller: _labelController,
                decoration: InputDecoration(
                  labelText: 'Label (optional)',
                  hintText: 'Memorize',
                  border: const OutlineInputBorder(),
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 12),
                ),
                textCapitalization: TextCapitalization.words,
                maxLines: 1,
                // Dismiss keyboard on submit; move focus to notes field.
                textInputAction: TextInputAction.next,
              ),

              const SizedBox(height: 16),

              // ---- Notes field ----
              TextField(
                controller: _notesController,
                decoration: InputDecoration(
                  labelText: 'Notes (optional)',
                  hintText: 'Add a note...',
                  border: const OutlineInputBorder(),
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 12),
                  alignLabelWithHint: true,
                ),
                maxLines: 4,
                minLines: 2,
                textCapitalization: TextCapitalization.sentences,
                textInputAction: TextInputAction.newline,
              ),

              const SizedBox(height: 24),

              // ---- Action buttons ----
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Cancel
                  Semantics(
                    label: 'Cancel, close bookmark sheet',
                    button: true,
                    child: TextButton(
                      onPressed: _saving
                          ? null
                          : () => Navigator.pop(context, false),
                      child: const Text('Cancel'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  // Save
                  Semantics(
                    label: 'Save bookmark',
                    button: true,
                    child: FilledButton(
                      onPressed: _saving ? null : _save,
                      child: _saving
                          ? const SizedBox(
                              width: 18,
                              height: 18,
                              child: CircularProgressIndicator(
                                  strokeWidth: 2),
                            )
                          : const Text('Save'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

