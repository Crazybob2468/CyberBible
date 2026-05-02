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
import '../models/chapter.dart';
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

  /// The loaded chapter data, or null while the initial load is in progress.
  ///
  /// Contains the raw USFX XML in [Chapter.contentUsfx], which is converted
  /// to HTML by [renderChapterToHtml] when the body is built. A null value
  /// while [_errorMessage] is also null means loading is still in progress.
  Chapter? _chapter;

  /// Non-null when the chapter-load operation threw an error, or when
  /// [BibleService.getChapter] returned null (chapter absent from this
  /// translation).
  ///
  /// When set, the error card with a Retry button is shown instead of the
  /// chapter HTML.
  String? _errorMessage;

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
  /// Incremented at the start of every [_loadVerses] call. After the async
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
  /// On failure — including when `getChapter()` returns null because this
  /// translation lacks the requested chapter — [_errorMessage] is set so the
  /// UI can show a Retry button.
  Future<void> _loadChapter() async {
    // Capture the generation for this call. Results are applied only when
    // generation == _loadGeneration, discarding any stale concurrent loads.
    final generation = ++_loadGeneration;

    // Reset state so a Retry press shows a fresh loading spinner.
    setState(() {
      _errorMessage = null;
      _chapter = null;
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
        // This translation does not have the requested chapter (common in
        // partial or New-Testament-only translations).
        setState(() => _errorMessage = 'No text available for this chapter.');
      } else {
        setState(() => _chapter = chapter);
      }
    } catch (e) {
      // Log raw error details in debug builds only — internal paths and SQL
      // messages must not be surfaced to users in production builds.
      if (kDebugMode) {
        debugPrint('ReadingScreen._loadChapter() failed: $e');
      }
      // Only apply the error if no newer load has superseded this one.
      if (mounted && generation == _loadGeneration) {
        setState(() =>
            _errorMessage = 'Could not load the chapter. Please try again.');
      }
    }
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
  /// Three states:
  ///   - Loading: [_chapter] is null and [_errorMessage] is null — spinner.
  ///   - Error: [_errorMessage] is non-null — error card with Retry.
  ///   - Content: [_chapter] is non-null — USFX → HTML rendered widget.
  Widget _buildBody(ColorScheme colorScheme) {
    // ---- Loading ----
    if (_chapter == null && _errorMessage == null) {
      return const SliverFillRemaining(
        child: Center(child: CircularProgressIndicator()),
      );
    }

    // ---- Error ----
    if (_errorMessage != null) {
      return SliverFillRemaining(
        child: _buildErrorState(colorScheme),
      );
    }

    // ---- HTML content ----
    return _buildHtmlContent(colorScheme, _chapter!);
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

  /// Converts the chapter's raw USFX XML to an HTML document and renders it
  /// inside a [SliverToBoxAdapter] via [HtmlWidget].
  ///
  /// [renderChapterToHtml] takes CSS color strings, so Flutter [Color] values
  /// are converted via [_colorToCss] before being passed in.  The conversion
  /// produces `#rrggbb` for fully-opaque colours and `rgba(r,g,b,a)` for
  /// partially-transparent ones (e.g. de-emphasised heading colours).
  ///
  /// Colours are sourced from the current [ColorScheme] so the HTML content
  /// adapts automatically to light/dark mode and dynamic colour themes.
  ///
  /// The 48 px bottom padding ensures the last line of text is never hidden
  /// behind a bottom navigation bar or gesture handle.
  Widget _buildHtmlContent(ColorScheme colorScheme, Chapter chapter) {
    // Convert the USFX XML fragment to a self-contained HTML document string.
    // baseFontSizePx 17 matches the reading size used by the plain-text
    // fallback removed in this step.
    final html = renderChapterToHtml(
      chapter.contentUsfx,
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

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 48),
        // HtmlWidget (flutter_widget_from_html_core) renders the HTML as native
        // Flutter widgets — no WebView, no platform overhead.
        child: HtmlWidget(html),
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
