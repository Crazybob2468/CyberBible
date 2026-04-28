// Chapter selection screen — Step 1.9.
//
// Displays a grid of chapter number tiles for the selected book.
// Tapping a tile navigates to the reading screen for that chapter.
//
// Navigation flow:
//   HomeScreen → BookSelectionScreen → ChapterSelectionScreen → ReadingScreen
//
// Visual design:
//   A SliverAppBar provides a large, collapsible header showing the book
//   name and its testament (Old Testament / New Testament /
//   Deuterocanon / Apocrypha). As the user scrolls into the chapter grid
//   the header collapses to a compact AppBar — all in the system theme so
//   it responds to the user's light/dark preference and the Step 1.16
//   accent color picker.
//
//   Chapter tiles are rounded-square cards in a fixed 4-column grid.
//   Each tile shows only the chapter number — clean and scannable.

import 'package:flutter/foundation.dart'; // kDebugMode, debugPrint
import 'package:flutter/material.dart';

import '../models/book.dart';
import '../app_routes.dart';
import '../services/bible_service.dart';

// Note: testament display labels come from `Testament.label` (book.dart) —
// the single source of truth shared with BookSelectionScreen.

// ---------------------------------------------------------------------------
// Main screen widget
// ---------------------------------------------------------------------------

/// Displays a grid of chapter numbers for the given [book].
///
/// Chapters are loaded from [BibleService] when the screen first mounts.
/// While loading, a centred activity indicator is shown. If loading fails,
/// an error card with a Retry button is shown instead.
///
/// Tapping a chapter navigates to [ReadingScreen] via [AppRoutes.reading]
/// carrying a [ReadingArgs] instance.
class ChapterSelectionScreen extends StatefulWidget {
  /// The book whose chapters are displayed.
  final Book book;

  const ChapterSelectionScreen({super.key, required this.book});

  @override
  State<ChapterSelectionScreen> createState() => _ChapterSelectionScreenState();
}

class _ChapterSelectionScreenState extends State<ChapterSelectionScreen> {
  // ---- State ----

  /// Chapter numbers loaded from [BibleService.getChapters()].
  ///
  /// Null while the initial load is in progress.
  List<int>? _chapters;

  /// Non-null when the chapter-load operation threw an error.
  String? _errorMessage;

  /// Scroll controller for the [CustomScrollView].
  ///
  /// Used to detect when the [SliverAppBar] has fully collapsed so the
  /// compact toolbar title can be shown only when the large expanded header
  /// has scrolled out of view — avoiding the redundant double-title that
  /// occurs when [SliverAppBar.title] is always visible.
  late final ScrollController _scrollController;

  /// True when the [SliverAppBar] has collapsed to its minimum (toolbar) height.
  ///
  /// Drives the visibility of the compact book title in the AppBar toolbar.
  /// Flips to `true` once the scroll offset exceeds
  /// `expandedHeight − kToolbarHeight` (≈ 104 px).
  bool _isCollapsed = false;

  // ---- Lifecycle ----

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_onScroll);
    // Load chapters as soon as the screen mounts.
    _loadChapters();
  }

  @override
  void dispose() {
    // Always dispose controllers to avoid memory leaks.
    _scrollController.dispose();
    super.dispose();
  }

  // ---- Scroll tracking ----

  /// Listens to scroll events and updates [_isCollapsed] accordingly.
  ///
  /// The SliverAppBar finishes collapsing when the scroll offset exceeds
  /// `expandedHeight (160) − kToolbarHeight (≈ 56) = 104 px`.
  void _onScroll() {
    const collapseThreshold = 160.0 - kToolbarHeight;
    final collapsed = _scrollController.offset > collapseThreshold;
    if (collapsed != _isCollapsed) {
      setState(() => _isCollapsed = collapsed);
    }
  }

  // ---- Data loading ----

  /// Fetches all chapter numbers from [BibleService] for the current book.
  ///
  /// Opens the DB first (guards against web deep-link / browser refresh
  /// arriving here before HomeScreen has called ensureOpen). On failure,
  /// [_errorMessage] is set so the UI can show a Retry button.
  Future<void> _loadChapters() async {
    // Reset state so a retry shows a fresh spinner.
    setState(() {
      _errorMessage = null;
      _chapters = null;
    });

    try {
      // Ensure the database is open before querying — HomeScreen normally
      // handles this, but guarding here makes /chapters safe when the user
      // navigates directly via a web deep-link or browser refresh.
      await BibleService.ensureOpen();
      final chapters = await BibleService.getChapters(widget.book.code);
      if (mounted) {
        setState(() => _chapters = chapters);
      }
    } catch (e) {
      // Log the raw exception in debug builds only — internal paths and SQL
      // errors should not be surfaced to end users in production.
      if (kDebugMode) {
        debugPrint('ChapterSelectionScreen._loadChapters() failed: $e');
      }
      if (mounted) {
        setState(() =>
            _errorMessage = 'Could not load chapters. Please try again.');
      }
    }
  }

  // ---- Navigation ----

  /// Navigate to the reading screen for [chapter].
  void _onChapterTapped(int chapter) {
    Navigator.pushNamed(
      context,
      AppRoutes.reading,
      arguments: ReadingArgs(book: widget.book, chapter: chapter),
    );
  }

  // ---- Build ----

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      // Use a CustomScrollView so the SliverAppBar and the chapter grid
      // share a single scroll position — the header collapses naturally
      // as the user scrolls down into the grid.
      body: CustomScrollView(
        // Attach controller so _onScroll can track the collapse state.
        controller: _scrollController,
        slivers: [
          _buildSliverAppBar(colorScheme),
          _buildBody(colorScheme),
        ],
      ),
    );
  }

  // ---- Header ----

  /// Builds the collapsible SliverAppBar.
  ///
  /// When expanded: the large flexible-space header is the only visible title;
  /// the toolbar title is hidden so the book name is not shown twice.
  /// When collapsed (scroll offset > 104 px): the compact toolbar title
  /// appears and the flexible space has scrolled away.
  SliverAppBar _buildSliverAppBar(ColorScheme colorScheme) {
    return SliverAppBar(
      // Height of the expanded (large) header area.
      expandedHeight: 160,
      // Pin the collapsed bar at the top while the user scrolls.
      pinned: true,
      // Background color for both expanded and collapsed states.
      backgroundColor: colorScheme.primaryContainer,
      foregroundColor: colorScheme.onPrimaryContainer,
      // Show the compact title only once the expanded header has scrolled
      // away — avoids displaying the book name in both the toolbar and the
      // large flexible-space header at the same time.
      title: _isCollapsed
          ? Text(
              widget.book.nameShort,
              style: const TextStyle(fontWeight: FontWeight.w700),
            )
          : null,
      // Expanded content — the large decorative header.
      flexibleSpace: FlexibleSpaceBar(
        // Disable the default title (we supply our own content below).
        titlePadding: EdgeInsets.zero,
        background: _buildExpandedHeader(colorScheme),
      ),
    );
  }

  /// Builds the expanded header content: book name + testament label.
  Widget _buildExpandedHeader(ColorScheme colorScheme) {
    return Container(
      // Match the SliverAppBar's background color.
      color: colorScheme.primaryContainer,
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      // Align content to the bottom of the expanded space so it sits just
      // above the fold line and flows naturally into the grid below.
      alignment: Alignment.bottomLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Testament label — small, slightly subdued.
          // Testament.label is the single source of truth (book.dart).
          Text(
            widget.book.testament.label.toUpperCase(),
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.4,
              // Slightly de-emphasised relative to the book name.
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
        ],
      ),
    );
  }

  // ---- Body (loading / error / grid) ----

  /// Returns the appropriate body sliver based on the current loading state.
  Widget _buildBody(ColorScheme colorScheme) {
    // ---- Loading ----
    if (_chapters == null && _errorMessage == null) {
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

    // ---- Chapter grid ----
    return _buildChapterGrid(colorScheme, _chapters!);
  }

  /// Error card with message and a Retry button.
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
              onPressed: _loadChapters,
              icon: const Icon(Icons.refresh_rounded),
              label: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }

  /// Builds the 4-column chapter number grid.
  ///
  /// Each tile is a rounded-square card with the chapter number centred
  /// inside. All colours come from [ColorScheme] so the grid responds to
  /// light/dark mode and the Step 1.16 accent colour picker automatically.
  Widget _buildChapterGrid(ColorScheme colorScheme, List<int> chapters) {
    return SliverPadding(
      // Comfortable padding around the entire grid.
      padding: const EdgeInsets.all(16),
      sliver: SliverGrid(
        // Fixed 4-column layout — works well from 1 chapter (Obadiah) to
        // 150 chapters (Psalms) without needing adaptive logic.
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        delegate: SliverChildBuilderDelegate(
          (context, index) =>
              _ChapterTile(
                chapter: chapters[index],
                colorScheme: colorScheme,
                onTap: () => _onChapterTapped(chapters[index]),
              ),
          childCount: chapters.length,
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Chapter tile widget
// ---------------------------------------------------------------------------

/// A single rounded-square tile displaying one chapter number.
///
/// Tapping the tile fires [onTap] to navigate to the reading screen.
/// All colours are sourced from [colorScheme] for theme compatibility.
class _ChapterTile extends StatelessWidget {
  /// The chapter number to display (1-based).
  final int chapter;

  /// The app's current colour scheme — used for tile and text colours.
  final ColorScheme colorScheme;

  /// Called when the tile is tapped.
  final VoidCallback onTap;

  const _ChapterTile({
    required this.chapter,
    required this.colorScheme,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      // Announce "Chapter N" to screen readers instead of just the bare
      // number — gives assistive technology enough context to describe the
      // action without the user needing to infer it from surroundings.
      label: 'Chapter $chapter',
      button: true,
      child: Material(
        // Rounded-square tile background.
        color: colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(14),
        // InkWell provides the ripple effect inside the rounded rect.
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(14),
          // ExcludeSemantics prevents the Text widget from adding a
          // duplicate bare-number announcement on top of our label.
          child: ExcludeSemantics(
            child: Center(
              child: Text(
                '$chapter',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: colorScheme.onPrimaryContainer,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

