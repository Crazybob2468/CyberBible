// Scripture reading screen — updated in Step 1.11.
//
// Displays a fully formatted chapter of Bible text for the selected book and
// chapter. The raw USFX XML fragment is loaded from BibleService.getChapter(),
// converted to HTML+CSS by usfx_renderer.dart, and rendered as native Flutter
// widgets by flutter_widget_from_html_core's HtmlWidget.
//
// Navigation flow:
//   HomeScreen → BookSelectionScreen → ChapterSelectionScreen → ReadingScreen

import 'package:flutter/foundation.dart'; // kDebugMode, debugPrint
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

import '../models/book.dart';
import '../models/verse.dart';
import '../services/bible_service.dart';
import '../utils/usfx_renderer.dart';

// ---------------------------------------------------------------------------
// Layout constants
// ---------------------------------------------------------------------------

/// Height of the SliverAppBar's expanded flexible space (in logical pixels).
///
/// Slightly taller than ChapterSelectionScreen's 160 px because the reading
/// screen header contains three lines: testament label, book name, and chapter
/// number. Defined as a single constant so [SliverAppBar.expandedHeight] and
/// the collapse-detection threshold in [_onScroll] always stay in sync.
const double _expandedHeight = 200.0;

// ---------------------------------------------------------------------------
// Main screen widget
// ---------------------------------------------------------------------------

/// The main scripture reading screen.
///
/// Receives a `Book` and a `chapter` number from route arguments (see
/// `ReadingArgs` in `app_routes.dart`). Loads the raw USFX XML for that
/// chapter from `BibleService`, converts it to HTML via [renderChapterToHtml],
/// and renders it as native Flutter widgets using `HtmlWidget`.
///
/// Formatting rendered in Step 1.11:
///   - Prose paragraphs (`<p>`, `<m>`) and indented paragraphs (`<pi>`)
///   - Poetry stanzas (`<q1>`, `<q2>`, `<q3>`) with indented lines
///   - Section headings (`<s>`) and major-section headings (`<ms>`)
///   - Psalm descriptive headings (`<d>`) — resolves Step 1.10 content gap
///   - Inline verse numbers from `<v id="N"/>` milestones
///   - Words of Jesus in red (`<wj>`) — toggle deferred to Step 1.16
///   - Footnote superscript markers (`<f>`) — tappable pop-up in Step 2.1
///   - Supplied-text italics (`<add>`) and divine-name small caps (`<nd>`)
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
  // ---- State ----

  /// The pre-rendered HTML string produced from [_contentUsfx], or null
  /// while loading is in progress.
  ///
  /// Rendered by [_rebuildHtml] inside [_loadChapter] (not during `build()`)
  /// so XML parse exceptions are caught by [_loadChapter]'s try/catch.
  /// Also re-rendered by [didChangeDependencies] on theme changes so the
  /// colour palette stays in sync with the active light/dark theme.
  ///
  /// Null while loading — indicated by all three of [_html], [_errorMessage],
  /// and [_emptyMessage] being null simultaneously.
  String? _html;

  /// The raw USFX XML most recently loaded from [BibleService.getChapter].
  ///
  /// Stored so [_rebuildHtml] can re-render with fresh CSS colours when
  /// [didChangeDependencies] detects a theme change (e.g., the device
  /// switching between light and dark mode while the screen is open).
  /// Null while loading is in progress or before any chapter has loaded.
  String? _contentUsfx;

  /// Non-null when this translation does not contain the requested chapter
  /// (e.g., an OT chapter in an NT-only Bible). This is a permanent
  /// condition — retrying can never produce a different result — so a
  /// neutral info message is shown with no Retry button.
  ///
  /// Distinct from [_errorMessage], which covers transient failures where
  /// retrying may succeed.
  String? _emptyMessage;

  /// Non-null when the chapter-load operation threw a technical error
  /// (e.g., database failure or malformed USFX XML).
  ///
  /// When set, the red error card with a Retry button is shown. Distinct from
  /// [_emptyMessage] because retrying may succeed for transient errors but
  /// cannot succeed for a permanently absent chapter.
  String? _errorMessage;

  /// Plain-text verse list loaded alongside [_contentUsfx].
  ///
  /// Used to build the invisible semantic-label overlay in [_buildHtmlContent]
  /// so TalkBack and VoiceOver users can navigate "Verse N: text" units
  /// instead of the fragmented inline elements produced by [HtmlWidget].
  /// Null before any chapter has successfully loaded.
  List<Verse>? _verses;

  /// Scroll controller for the [CustomScrollView].
  ///
  /// Used to detect when the [SliverAppBar] has fully collapsed so the compact
  /// toolbar title is shown only once the large expanded header has scrolled
  /// out of view — preventing the book name from appearing twice on screen.
  late final ScrollController _scrollController;

  /// True when the [SliverAppBar] has collapsed to its minimum toolbar height.
  ///
  /// Drives the visibility of the compact title in the AppBar toolbar.
  /// Flips to `true` once the scroll offset exceeds
  /// `_expandedHeight − kToolbarHeight` (≈ 144 px).
  bool _isCollapsed = false;

  /// Generation counter used to discard results from stale in-flight loads.
  ///
  /// Incremented at the start of every [_loadChapter] call. After the async
  /// work completes, the result is applied only if the counter still matches
  /// the value captured at the start of that call. This prevents a slow
  /// earlier request (e.g. from a Retry tap) from overwriting the result of
  /// a faster, newer request.
  int _loadGeneration = 0;

  // ---- Lifecycle ----

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_onScroll);
    // Load the chapter as soon as the screen mounts.
    _loadChapter();
  }

  @override
  void dispose() {
    // Always dispose controllers to avoid memory leaks.
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Re-render the HTML whenever an inherited dependency changes — in
    // particular when the device switches between light and dark mode.
    // Without this, the HTML retains the colours from the initial load
    // until the user navigates away and back.
    // Guards against re-rendering before any chapter has been loaded.
    if (_contentUsfx != null) {
      _rebuildHtml();
    }
  }

  // ---- Scroll tracking ----

  /// Listens to scroll events and flips [_isCollapsed] when the SliverAppBar
  /// transitions between expanded and collapsed states.
  ///
  /// The SliverAppBar finishes collapsing when the scroll offset exceeds
  /// `_expandedHeight (200 px) − kToolbarHeight (≈ 56 px) ≈ 144 px`.
  void _onScroll() {
    const collapseThreshold = _expandedHeight - kToolbarHeight;
    final collapsed = _scrollController.offset > collapseThreshold;
    if (collapsed != _isCollapsed) {
      setState(() => _isCollapsed = collapsed);
    }
  }

  // ---- Data loading ----

  /// Loads the raw USFX XML for the current book + chapter from [BibleService].
  ///
  /// Increments [_loadGeneration] on each call so that results from any
  /// concurrent or earlier in-flight request are discarded — preventing a
  /// slow Retry from overwriting the UI state set by a newer request.
  ///
  /// Calls `ensureOpen()` as defence-in-depth for any in-app navigation path
  /// that reaches [ReadingScreen] before [HomeScreen] has opened the database.
  /// Note: a raw browser refresh on `/read` redirects to [HomeScreen] via
  /// `onGenerateRoute` (the `ReadingArgs` type guard redirects when args are
  /// absent), so `ensureOpen()` here is not a web deep-link fix — it guards
  /// in-app navigation only.
  ///
  /// On a technical error (database failure, malformed XML) [_errorMessage]
  /// is set and the UI shows a red error card with a Retry button. When
  /// [BibleService.getChapter] returns null (chapter permanently absent from
  /// this translation), [_emptyMessage] is set instead and a neutral info
  /// message is shown with no Retry button.
  Future<void> _loadChapter() async {
    // Capture the generation for this call. Results are applied only when
    // generation == _loadGeneration, discarding any stale concurrent loads.
    final generation = ++_loadGeneration;

    // Reset all state so a Retry press shows a fresh loading spinner.
    setState(() {
      _errorMessage = null;
      _emptyMessage = null;
      _contentUsfx = null;
      _html = null;
      _verses = null;
    });

    try {
      // Ensure the DB is open before querying. HomeScreen normally handles
      // this on startup; this guard covers any in-app navigation path that
      // bypasses HomeScreen. It is NOT a web browser-refresh fix — a raw
      // refresh on /read redirects to HomeScreen before this widget builds.
      await BibleService.ensureOpen();
      final chapter =
          await BibleService.getChapter(widget.book.code, widget.chapter);

      // Only apply the result if no newer load has superseded this one.
      if (!mounted || generation != _loadGeneration) return;

      if (chapter == null) {
        // Chapter is permanently absent from this translation (common in
        // partial or NT-only Bibles). Use _emptyMessage — not _errorMessage —
        // so the UI shows a neutral info message with no Retry button.
        // Retrying can never make a missing chapter appear.
        setState(() => _emptyMessage = 'No text available for this chapter.');
      } else {
        // Store the raw USFX and render to HTML. Keeping the render call
        // inside _loadChapter() (not build()) means any XML parse exception
        // is caught by the surrounding try/catch and surfaces the error
        // state with a Retry button instead of crashing the widget tree.
        // Storing _contentUsfx lets _rebuildHtml() re-render on theme changes.
        _contentUsfx = chapter.contentUsfx;
        // Fetch the plain-text verse list for the accessibility overlay
        // in _buildHtmlContent (TalkBack/VoiceOver per-verse labels).
        // This is wrapped in its own try/catch so that a failure in the
        // verses table does NOT tear down the already-loaded chapter.
        // If getVerses() throws, _verses stays null and the a11y overlay
        // is simply omitted — the reading experience is unaffected.
        try {
          _verses = await BibleService.getVerses(
            widget.book.code,
            widget.chapter,
          );
        } catch (e) {
          // Log in debug builds; silently degrade to no overlay in prod.
          if (kDebugMode) {
            debugPrint('ReadingScreen._loadChapter() getVerses() failed: $e');
          }
          _verses = null;
        }
        // Guard again after the second await: a Retry tap during getVerses
        // would have incremented the generation counter.
        if (!mounted || generation != _loadGeneration) return;
        _rebuildHtml();
      }
    } catch (e) {
      // Log raw error details in debug builds only — internal paths and SQL
      // messages must not be surfaced to users in production builds.
      if (kDebugMode) {
        debugPrint('ReadingScreen._loadChapter() failed: $e');
      }
      // Only apply the error if no newer load has superseded this one.
      if (mounted && generation == _loadGeneration) {
        setState(() {
          // Clear any partially-stored USFX so that a later
          // didChangeDependencies() call does not try to re-render the same
          // bad XML outside this try/catch, which would throw an unhandled
          // exception from the framework.
          _contentUsfx = null;
          _verses = null;
          _errorMessage = 'Could not load the chapter. Please try again.';
        });
      }
    }
  }

  // ---- HTML rendering ----

  /// Renders [_contentUsfx] → HTML using the current [ColorScheme] and
  /// stores the result in [_html] via [setState].
  ///
  /// Called from two sites:
  ///
  /// 1. [_loadChapter] (initial load and Retry): the call is inside
  ///    `_loadChapter`'s `try/catch`, so any XML parse error is caught there
  ///    and surfaces the error state. [_contentUsfx] is null-cleared in the
  ///    catch block so this method is never retried on bad XML.
  /// 2. [didChangeDependencies] (theme change): [_contentUsfx] is only
  ///    non-null after a successful parse in [_loadChapter], so the XML is
  ///    guaranteed valid and re-parsing it is safe.
  ///
  /// Neither call site needs its own try/catch for these reasons.
  void _rebuildHtml() {
    final colorScheme = Theme.of(context).colorScheme;
    final html = renderChapterToHtml(
      _contentUsfx!,
      bodyColorCss: _colorToCss(colorScheme.onSurface),
      verseNumColorCss: _colorToCss(colorScheme.primary),
      // Section and major-section headings slightly de-emphasised (60 %).
      headingColorCss: _colorToCss(colorScheme.onSurface.withAlpha(153)),
      // Psalm superscription headings further de-emphasised (50 %).
      dHeadingColorCss: _colorToCss(colorScheme.onSurface.withAlpha(127)),
      // Footnote superscript markers share the primary accent colour.
      footnoteColorCss: _colorToCss(colorScheme.primary),
      baseFontSizePx: 17.0,
    );
    setState(() => _html = html);
  }

  // ---- Build ----

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      // CustomScrollView lets the SliverAppBar and the verse list share one
      // scroll position — the header collapses naturally as the user reads
      // down through the chapter text.
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

  /// Builds the collapsible [SliverAppBar].
  ///
  /// Expanded: a large flexible-space header shows the testament label, the
  ///   book name, and the chapter number — no toolbar title so nothing appears
  ///   twice.
  /// Collapsed: a compact toolbar title "{nameShort} {chapter}" (e.g.
  ///   "Genesis 1") reminds the reader of their position in the text.
  SliverAppBar _buildSliverAppBar(ColorScheme colorScheme) {
    return SliverAppBar(
      // Height of the expanded header — must match the _expandedHeight constant.
      expandedHeight: _expandedHeight,
      // Keep the toolbar pinned at the top as the user scrolls.
      pinned: true,
      // Use the primary-container tone for both expanded and collapsed states
      // so the header blends seamlessly with the rest of the inner screens.
      backgroundColor: colorScheme.primaryContainer,
      foregroundColor: colorScheme.onPrimaryContainer,
      // Show the compact title only after the large header has scrolled away.
      title: _isCollapsed
          ? Text(
              // e.g. "Genesis 1" — concise reference for orientation.
              '${widget.book.nameShort} ${widget.chapter}',
              style: const TextStyle(fontWeight: FontWeight.w700),
            )
          : null,
      flexibleSpace: FlexibleSpaceBar(
        // Disable the default FlexibleSpaceBar title — we supply our own.
        titlePadding: EdgeInsets.zero,
        background: _buildExpandedHeader(colorScheme),
      ),
    );
  }

  /// Builds the expanded header content: testament label + book name + chapter.
  Widget _buildExpandedHeader(ColorScheme colorScheme) {
    return Container(
      // Match the SliverAppBar background.
      color: colorScheme.primaryContainer,
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      // Anchor the text to the bottom of the expanded space so it flows
      // naturally toward the verse list below.
      alignment: Alignment.bottomLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Testament label — small, spaced, slightly de-emphasised.
          // Testament.label is the single source of truth (book.dart).
          Text(
            widget.book.testament.label.toUpperCase(),
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.4,
              // Slightly lighter than the primary text to create visual hierarchy.
              color: colorScheme.onPrimaryContainer.withAlpha(178),
            ),
          ),
          const SizedBox(height: 4),
          // Book name — large and prominent.
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
          // Chapter number — secondary prominence below the book name.
          Text(
            'Chapter ${widget.chapter}',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              // Slightly dimmed relative to the book name.
              color: colorScheme.onPrimaryContainer.withAlpha(204),
            ),
          ),
        ],
      ),
    );
  }

  // ---- Body (loading / error / HTML content) ----

  /// Returns the appropriate body sliver based on the current loading state.
  ///
  /// Four states:
  ///   - Loading: [_html], [_errorMessage], and [_emptyMessage] are all null.
  ///   - Empty: [_emptyMessage] is non-null — neutral info message, no Retry
  ///     (chapter permanently absent from this translation).
  ///   - Error: [_errorMessage] is non-null — red error card with Retry button
  ///     (transient failure; retrying may succeed).
  ///   - Content: [_html] is non-null — pre-rendered HTML via [HtmlWidget].
  Widget _buildBody(ColorScheme colorScheme) {
    // ---- Loading ----
    if (_html == null && _errorMessage == null && _emptyMessage == null) {
      return const SliverFillRemaining(
        child: Center(child: CircularProgressIndicator()),
      );
    }

    // ---- Empty (chapter absent — retry would never succeed) ----
    if (_emptyMessage != null) {
      return SliverFillRemaining(
        child: _buildEmptyState(colorScheme),
      );
    }

    // ---- Error (technical failure — retry may succeed) ----
    if (_errorMessage != null) {
      return SliverFillRemaining(
        child: _buildErrorState(colorScheme),
      );
    }

    // ---- HTML content ----
    return _buildHtmlContent(_html!);
  }

  /// Builds a neutral info message for chapters absent from this translation
  /// (e.g., an OT chapter in an NT-only Bible).
  ///
  /// No Retry button is shown because the chapter's absence is permanent —
  /// re-loading the database cannot make a missing chapter appear.
  Widget _buildEmptyState(ColorScheme colorScheme) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Book icon in a dimmed colour — neutral, not alarming.
            Icon(
              Icons.book_outlined,
              size: 48,
              color: colorScheme.onSurface.withAlpha(127),
            ),
            const SizedBox(height: 16),
            Text(
              _emptyMessage!,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: colorScheme.onSurface.withAlpha(178),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Builds an error card with a friendly message and a Retry button.
  Widget _buildErrorState(ColorScheme colorScheme) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.error_outline_rounded,
                size: 48, color: colorScheme.error),
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

  // ---- HTML content rendering ----

  /// Wraps the pre-rendered [html] string in a [SliverToBoxAdapter] and
  /// passes it to [HtmlWidget] for display.
  ///
  /// The HTML is produced by [renderChapterToHtml] inside [_loadChapter],
  /// not here, so that XML parse exceptions are handled there and surface
  /// as the error state with a Retry button rather than crashing the
  /// widget tree.
  ///
  /// The 48 px bottom padding ensures the last line of text is never hidden
  /// behind a bottom navigation bar or gesture handle.
  Widget _buildHtmlContent(String html) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 48),
        child: Stack(
          children: [
            // Visual layer: HtmlWidget renders the fully-formatted chapter.
            // Semantics are excluded here because the raw HTML produces
            // fragmented nodes (bare verse-number superscripts, inline spans)
            // that screen readers cannot navigate verse-by-verse.
            ExcludeSemantics(
              child: HtmlWidget(html),
            ),
            // Accessibility layer: invisible per-verse semantic labels so
            // TalkBack and VoiceOver users hear "Verse 1: In the beginning…"
            // instead of fragmented numbers and mid-sentence elements.
            //
            // Visibility(visible: false, maintainSize: true, maintainSemantics:
            // true) keeps the Column in the semantic tree with no visual
            // footprint. All children are SizedBox.shrink() (0×0) so the
            // Column contributes zero height and does not affect layout.
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
                          // e.g. "Verse 3: For God so loved the world…"
                          label: 'Verse ${v.verse}: ${v.textPlain}',
                          // Exclude the inner SizedBox so it does not create
                          // a redundant empty semantic node.
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

  // ---- Colour utilities ----

  /// Converts a Flutter [Color] to a CSS color string suitable for injection
  /// into inline `<style>` blocks.
  ///
  /// Returns `#rrggbb` for fully-opaque colours (alpha == 255) and
  /// `rgba(r, g, b, a)` for partially-transparent ones (alpha < 255), where
  /// `a` is a decimal fraction rounded to three places (e.g. `0.600`).
  ///
  /// This avoids a dependency on `package:flutter/painting.dart` colour
  /// utilities inside [renderChapterToHtml], which is a pure-Dart function.
  static String _colorToCss(Color c) {
    // Dart 3 Color uses floating-point channels in [0.0, 1.0].
    // Convert to 8-bit integer values for CSS output.
    final r = (c.r * 255.0).round().clamp(0, 255);
    final g = (c.g * 255.0).round().clamp(0, 255);
    final b = (c.b * 255.0).round().clamp(0, 255);
    final a = (c.a * 255.0).round().clamp(0, 255);

    // Fully opaque: shortest CSS representation, no floating-point rounding.
    if (a >= 255) {
      return '#'
          '${r.toRadixString(16).padLeft(2, '0')}'
          '${g.toRadixString(16).padLeft(2, '0')}'
          '${b.toRadixString(16).padLeft(2, '0')}';
    }

    // Partially transparent: use rgba() with three-decimal alpha fraction.
    final alpha = (a / 255.0).toStringAsFixed(3);
    return 'rgba($r, $g, $b, $alpha)';
  }
}
