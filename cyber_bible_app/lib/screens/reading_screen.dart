// Scripture reading screen — Step 1.12.
//
// Displays a fully formatted chapter of Bible text for the selected book and
// chapter, plus quick navigation controls for:
//   1) Book + chapter (two-step selector in a bottom sheet)
//   2) Verse (adaptive picker: wheel on touch-centric layouts, list on desktop/web)
//
// The renderer emits an internal <cb-verse-marker data-verse="..."> tag before
// every verse number. HtmlWidget maps each marker to a zero-sized keyed widget,
// allowing this screen to compute exact verse offsets for:
//   - smooth jump-to-verse scrolling
//   - exact "verse at top of viewport" tracking for the sticky header label

import 'dart:async';

import 'package:flutter/foundation.dart'; // kDebugMode, defaultTargetPlatform
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart'; // RenderAbstractViewport
import 'package:flutter/services.dart'; // SemanticsService, SystemNavigator
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

import '../app_routes.dart';
import '../models/book.dart';
import '../models/verse.dart';
import '../services/bible_service.dart';
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

/// Maximum post-frame retries while waiting for HtmlWidget to finish async
/// building marker widgets for a large chapter.
const int _maxMarkerCollectRetries = 12;

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

  const ReadingScreen({super.key, required this.book, required this.chapter});

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

  /// Timer that clears temporary verse highlight state.
  Timer? _highlightClearTimer;

  /// Number of retry attempts while waiting for marker widgets to mount.
  int _markerCollectRetryCount = 0;

  /// Prevents queuing duplicate marker-collection callbacks while scrolling.
  bool _markerCollectionScheduled = false;

  // ---- Lifecycle ----

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_onScroll);
    _loadChapter();
  }

  @override
  void dispose() {
    _highlightClearTimer?.cancel();
    _scrollController.dispose();
    super.dispose();
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

  /// Updates collapsed-header state and keeps top-verse label in sync.
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
        if (kDebugMode) {
          debugPrint('ReadingScreen._loadChapter() getVerses() failed: $e');
        }
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

      _rebuildHtml();
    } catch (e) {
      if (kDebugMode) {
        debugPrint('ReadingScreen._loadChapter() failed: $e');
      }
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
    final html = renderChapterToHtml(
      _contentUsfx!,
      bodyColorCss: _colorToCss(colorScheme.onSurface),
      verseNumColorCss: _colorToCss(colorScheme.primary),
      headingColorCss: _colorToCss(colorScheme.onSurface.withAlpha(153)),
      dHeadingColorCss: _colorToCss(colorScheme.onSurface.withAlpha(127)),
      footnoteColorCss: _colorToCss(colorScheme.primary),
      baseFontSizePx: 17.0,
      highlightedVerseId: _highlightedVerseId,
      highlightedVerseBackgroundCss: _colorToCss(colorScheme.tertiaryContainer.withAlpha(191)),
    );

    setState(() => _html = html);
    _scheduleMarkerCollection(resetRetryCounter: true);
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
    _rebuildHtml();

    _highlightClearTimer = Timer(_verseHighlightDuration, () {
      if (!mounted || _highlightedVerseId != verseId) return;
      _highlightedVerseId = null;
      _rebuildHtml();
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

    final location =
        '/read?book=${Uri.encodeQueryComponent(widget.book.code)}&chapter=${widget.chapter}&verse=${Uri.encodeQueryComponent(verseId)}';

    SystemNavigator.routeInformationUpdated(
      uri: Uri.parse(location),
      replace: false,
    );
  }

  /// Returns the current quick-nav verse label shown in the sticky header.
  String get _currentVerseLabel {
    if (_topVerse != null) return _topVerse!;
    if (_verseOrder.isNotEmpty) return _verseOrder.first;
    return '-';
  }

  // ---- Build ----

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          _buildSliverAppBar(colorScheme),
          _buildBody(colorScheme),
        ],
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
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 48),
        child: Stack(
          children: [
            ExcludeSemantics(
              child: HtmlWidget(
                html,
                key: _htmlWidgetKey,
                customWidgetBuilder: _buildCustomHtmlWidget,
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

  /// Maps internal renderer marker tags to zero-sized keyed widgets.
  ///
  /// The renderer outputs: `<cb-verse-marker data-verse="..."></cb-verse-marker>`
  /// before each verse number. Each marker receives a stable GlobalKey so this
  /// screen can compute exact verse positions after layout.
  Widget? _buildCustomHtmlWidget(dynamic element) {
    final localName = element.localName as String?;
    if (localName != 'cb-verse-marker') {
      return null;
    }

    final attributes = element.attributes as Map<dynamic, dynamic>?;
    final verseId = (attributes?['data-verse'] as String?)?.trim();
    if (verseId == null || verseId.isEmpty) {
      return const SizedBox.shrink();
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
      if (kDebugMode) {
        debugPrint('Book/chapter quick nav: failed to load books: $e');
      }
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
      if (kDebugMode) {
        debugPrint('Book/chapter quick nav: failed to load chapters: $e');
      }
      if (!mounted) return;
      setState(() {
        _loadingChapters = false;
        _error = 'Could not load chapters. Please try again.';
      });
    }
  }

  void _scrollCurrentBookIntoView(List<Book> books) {
    if (books.isEmpty) return;

    final traditionalIndex = books.indexWhere((b) => b.code == widget.currentBookCode);
    final alphabeticalBooks = [...books]..sort((a, b) => a.nameShort.compareTo(b.nameShort));
    final alphabeticalIndex =
        alphabeticalBooks.indexWhere((b) => b.code == widget.currentBookCode);

    void animateToIndex(ScrollController controller, int index) {
      if (index < 0) return;
      if (!controller.hasClients) return;

      // Scroll to place the selected/current book near the top (not centered).
      // This keeps the book visible without scrolling too far.
      const rowExtent = 72.0;
      final target = (index * rowExtent) - 100; // Top margin offset for padding
      final clamped = target.clamp(0.0, controller.position.maxScrollExtent);

      controller.animateTo(
        clamped,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOutCubic,
      );
    }

    void animateAlphabeticalToIndex(int index) {
      if (index < 0) return;
      if (!_alphabeticalScrollController.hasClients) return;

      // Alphabetical list uses fixed itemExtent, so index->offset is exact.
      final target = (index * _alphabeticalBookRowExtent) -
          (_alphabeticalBookRowExtent * 1.5);
      final clamped = target.clamp(
        0.0,
        _alphabeticalScrollController.position.maxScrollExtent,
      );

      _alphabeticalScrollController.animateTo(
        clamped,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOutCubic,
      );
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      animateToIndex(_traditionalScrollController, traditionalIndex);
      animateAlphabeticalToIndex(alphabeticalIndex);
    });
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
      ...otBooks.map((b) => _buildBookRow(theme, b)),
      _QuickNavSectionHeader(label: Testament.nt.label),
      ...ntBooks.map((b) => _buildBookRow(theme, b)),
      if (dcBooks.isNotEmpty) ...[
        _QuickNavSectionHeader(label: Testament.dc.label),
        ...dcBooks.map((b) => _buildBookRow(theme, b)),
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

  Widget _buildBookRow(ThemeData theme, Book book) {
    final isCurrent = book.code == widget.currentBookCode;

    return ListTile(
      title: Text(book.nameShort),
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
        return Material(
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
      margin: const EdgeInsets.only(top: 8),
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
