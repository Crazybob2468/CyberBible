// Scripture reading screen — Step 1.10.
//
// Displays a full chapter of Bible text for the selected book and chapter.
// Verses are fetched from BibleService.getVerses() and shown as a scrollable,
// verse-numbered list. The collapsible SliverAppBar matches the visual style
// established in ChapterSelectionScreen (Step 1.9).
//
// Navigation flow:
//   HomeScreen → BookSelectionScreen → ChapterSelectionScreen → ReadingScreen
//
// =============================================================================
// IMPORTANT — Step 1.11 (Basic text formatting) MUST complete this screen:
// =============================================================================
//
// This screen INTENTIONALLY renders PLAIN TEXT from the `verses` table. That
// approach is correct for Step 1.10 because it is simple, works offline with
// no extra packages, and unblocks end-to-end navigation testing.
//
// Step 1.11 MUST replace plain-text rendering with proper USFX → HTML output:
//
//   1. Load data differently:
//      Replace the `BibleService.getVerses()` call in `_loadVerses()` with
//      `BibleService.getChapter()` to get the raw `content_usfx` XML string
//      stored in the `chapters` table.
//
//   2. Write a USFX → HTML converter:
//      Create `lib/utils/usfx_renderer.dart` (or similar). It should accept
//      a USFX XML string and return an HTML+CSS string that preserves:
//        - Paragraph breaks       <p>, <pi>, <m>
//        - Poetry indentation     <q1>, <q2>, <q3>
//        - Section headings       <s>, <ms>
//        - Verse numbers          <v id="N" />…<ve/>
//        - Words of Jesus         <wj>…<wj*>  (red or black — Step 1.16 pref)
//        - Footnote markers       <f>…<f*>    (tappable in Step 2.1)
//        - Supplied-text italics  <add>…</add>
//        - Divine names small caps <nd>…</nd>
//      Use the patterns in `lib/utils/usfx_utils.dart` as a reference.
//
//   3. Render the HTML:
//      Add `flutter_widget_from_html` (or a WebView) to pubspec.yaml and
//      replace `_buildVerseList()` / `_VerseItem` with an HTML widget that
//      renders the converter output. Ensure the HTML widget respects
//      ColorScheme text colors and the font size from Step 1.16.
//
//   4. Clean up:
//      Delete `_buildVerseList()` and the `_VerseItem` class below once the
//      HTML renderer is working and all verses display correctly.
//
// =============================================================================

import 'package:flutter/foundation.dart'; // kDebugMode, debugPrint
import 'package:flutter/material.dart';

import '../models/book.dart';
import '../models/verse.dart';
import '../services/bible_service.dart';

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
/// `ReadingArgs` in `app_routes.dart`). Fetches all verses for that chapter
/// from `BibleService` and displays them as a scrollable, verse-numbered list.
///
/// **Step 1.11 note:** This screen currently renders plain verse text. Step 1.11
/// will replace this with a proper USFX → HTML renderer. See the top-of-file
/// comment block for the full migration plan.
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

  /// Verses loaded from [BibleService.getVerses()].
  ///
  /// Null while the initial load is in progress. An empty list is a valid
  /// result — some partial Bible translations have chapters with no indexed
  /// verse content.
  List<Verse>? _verses;

  /// Non-null when the verse-load operation threw an error.
  ///
  /// When set, the error card with a Retry button is shown instead of the
  /// verse list.
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
    // Load verses as soon as the screen mounts.
    _loadVerses();
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

  /// Fetches all verses for the current book + chapter from [BibleService].
  ///
  /// Increments [_loadGeneration] on each call so that results from any
  /// concurrent or earlier in-flight request are discarded — preventing a
  /// slow Retry from overwriting the UI state set by a newer request.
  ///
  /// Calls `ensureOpen()` as defence-in-depth for any in-app navigation path
  /// that reaches [ReadingScreen] before [HomeScreen] has opened the database.
  /// Note: a raw browser refresh on `/read` redirects to [HomeScreen] via
  /// `onGenerateRoute` (missing [ReadingArgs] guard), so `ensureOpen()` here
  /// is not a web deep-link fix — it guards in-app navigation only.
  ///
  /// On failure, [_errorMessage] is set so the UI can show a Retry button.
  Future<void> _loadVerses() async {
    // Capture the generation for this call. Results are applied only when
    // generation == _loadGeneration, discarding any stale concurrent loads.
    final generation = ++_loadGeneration;

    // Reset state so a Retry press shows a fresh loading spinner.
    setState(() {
      _errorMessage = null;
      _verses = null;
    });

    try {
      // Ensure the DB is open before querying. HomeScreen normally handles
      // this on startup; this guard covers any in-app navigation path that
      // bypasses HomeScreen. It is NOT a web browser-refresh fix — a raw
      // refresh on /read redirects to HomeScreen before this widget builds.
      await BibleService.ensureOpen();
      final verses =
          await BibleService.getVerses(widget.book.code, widget.chapter);
      // Only apply the result if no newer load has superseded this one.
      if (mounted && generation == _loadGeneration) {
        setState(() => _verses = verses);
      }
    } catch (e) {
      // Log raw error details in debug builds only — internal paths and SQL
      // messages must not be surfaced to users in production builds.
      if (kDebugMode) {
        debugPrint('ReadingScreen._loadVerses() failed: $e');
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

  // ---- Body (loading / error / verse list) ----

  /// Returns the appropriate body sliver based on the current loading state.
  Widget _buildBody(ColorScheme colorScheme) {
    // ---- Loading ----
    if (_verses == null && _errorMessage == null) {
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

    // ---- Verse list ----
    return _buildVerseList(colorScheme, _verses!);
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
              onPressed: _loadVerses,
              icon: const Icon(Icons.refresh_rounded),
              label: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // STEP 1.11 TODO — Replace this verse list with USFX → HTML rendering.
  //
  // `_buildVerseList()` and `_VerseItem` below are TEMPORARY. They render
  // plain text from the `verses` table, which intentionally skips all
  // formatting markup (paragraphs, poetry, headings, red letters, etc.).
  //
  // Step 1.11 must:
  //   1. Replace `BibleService.getVerses()` (in `_loadVerses()` above) with
  //      `BibleService.getChapter()` to load the raw USFX XML fragment.
  //   2. Write `lib/utils/usfx_renderer.dart` to convert USFX → HTML + CSS.
  //   3. Render the HTML with `flutter_widget_from_html` or a WebView widget.
  //   4. Delete `_buildVerseList()` and `_VerseItem` once working.
  //
  // See the top-of-file comment block for the full element-by-element plan.
  // ---------------------------------------------------------------------------

  /// Builds a scrollable [SliverList] of [_VerseItem] widgets.
  ///
  /// Handles the empty-list edge case (partial translations may have chapters
  /// with no indexed verses).
  ///
  /// **TEMPORARY** — will be replaced by a USFX → HTML widget in Step 1.11.
  Widget _buildVerseList(ColorScheme colorScheme, List<Verse> verses) {
    // Edge case: chapter exists in the DB but has no verse rows indexed.
    // This can happen with some partial or in-progress translations.
    if (verses.isEmpty) {
      return SliverFillRemaining(
        child: Center(
          child: Text(
            'No text available for this chapter.',
            style: TextStyle(
                color: colorScheme.onSurface.withAlpha(153)),
          ),
        ),
      );
    }

    return SliverPadding(
      // Comfortable side margins; generous bottom padding so the last verse
      // is not hidden behind any future bottom navigation bar.
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 48),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) => _VerseItem(
            verse: verses[index],
            colorScheme: colorScheme,
          ),
          childCount: verses.length,
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Verse item widget  (TEMPORARY — deleted in Step 1.11)
// ---------------------------------------------------------------------------
//
// STEP 1.11 TODO — Delete this class once USFX → HTML rendering is in place.
// ---------------------------------------------------------------------------

/// A single Bible verse rendered as an inline verse number + plain text.
///
/// The verse number is displayed as a small, bold, primary-coloured label at
/// the start of the verse text — the conventional inline style used by most
/// modern Bible-reading apps and printed study Bibles.
///
/// **TEMPORARY:** This widget will be deleted in Step 1.11 when the USFX → HTML
/// renderer replaces plain-text verse rendering. See the top-of-file comment
/// block for the full migration plan.
class _VerseItem extends StatelessWidget {
  /// The verse data to display.
  final Verse verse;

  /// The app's current colour scheme — used for verse-number and text colours.
  final ColorScheme colorScheme;

  const _VerseItem({required this.verse, required this.colorScheme});

  @override
  Widget build(BuildContext context) {
    // Build a single combined semantic label (e.g. "Verse 1: In the beginning
    // God created...") so screen readers announce the entire verse as one
    // coherent unit. ExcludeSemantics on the inner Row prevents assistive
    // technology from also traversing the two child Text widgets individually
    // (which would read the bare number "1" and the text as separate nodes).
    return Semantics(
      label: 'Verse ${verse.verse}: ${verse.textPlain}',
      child: ExcludeSemantics(
        child: Padding(
          // Vertical breathing room between verses — makes the text easier to
          // scan without being so spaced that the chapter feels fragmented.
          padding: const EdgeInsets.symmetric(vertical: 6),
          // Row layout: verse number pinned top-left, verse text in an Expanded
          // column beside it. CrossAxisAlignment.start ensures the number aligns
          // to the very top of the text block regardless of how many lines the
          // verse wraps to — more reliable than inline TextSpan baseline tricks.
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Verse number — small, bold, primary color, top-aligned.
              // Separate Text widget in a Row so it is visually pinned to the
              // top-left corner of the verse block — the conventional typography
              // style used in printed study Bibles and modern Bible apps.
              Text(
                '${verse.verse} ',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  color: colorScheme.primary,
                ),
              ),
              // Verse text — plain text for Step 1.10.
              // Step 1.11 will replace this Text with formatted USFX → HTML
              // content (paragraphs, poetry, headings, red letters, etc.).
              Expanded(
                child: Text(
                  verse.textPlain,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: colorScheme.onSurface,
                    // Generous line height — Bible prose benefits from more
                    // vertical breathing room than typical UI body text.
                    height: 1.65,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
