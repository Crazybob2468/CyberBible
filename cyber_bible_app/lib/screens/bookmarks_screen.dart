// Bookmarks list screen — Step 1.15.
//
// Displays all saved bookmarks as stacked cards, with label-based filtering
// and a sort toggle (recent-first ↔ canonical order).
//
// This widget is designed to be embedded as a tab inside the
// BookSelectionScreen's TabBarView.  It does NOT use Scaffold itself —
// the enclosing BookSelectionScreen provides the AppBar and scaffold.
//
// Card anatomy:
//   • Title:     scripture reference (e.g. "MAT 5:3")
//   • Subtitle:  label in uppercase accent color (omitted when null)
//   • Body:      verse text snapshot (omitted for chapter-level bookmarks)
//   • Notes:     free-text note in italic secondary color (omitted when null)
//   • Action:    trash icon → confirm dialog → delete
//
// Filtering:
//   • "All" chip — shows everything (default)
//   • One chip per unique label in the user's bookmark collection
//   • "Unlabeled" chip — shows only bookmarks with label == null/empty
//
// Tapping a card navigates to the reading screen at the saved location.

import 'package:flutter/material.dart';

import '../app_routes.dart';
import '../models/bookmark.dart';
import '../services/bible_service.dart';
import '../services/user_data_service.dart';

// ---------------------------------------------------------------------------
// Public widget
// ---------------------------------------------------------------------------

/// Embeddable bookmarks list widget for use inside a [TabBarView].
///
/// Loads bookmarks from [UserDataService] when first mounted and after any
/// add/delete operation.  Does not manage its own [Scaffold].
class BookmarksTab extends StatefulWidget {
  const BookmarksTab({super.key});

  @override
  State<BookmarksTab> createState() => _BookmarksTabState();
}

class _BookmarksTabState extends State<BookmarksTab> {
  // ---- State ----

  /// All bookmarks returned by [UserDataService.getBookmarks], in the current
  /// sort order.
  List<Bookmark>? _bookmarks;

  /// Non-null when a load or delete operation throws.
  String? _errorMessage;

  /// Current sort order — defaults to most-recently-saved first.
  BookmarkSortOrder _sortOrder = BookmarkSortOrder.recentFirst;

  /// The currently selected filter label.
  ///
  /// `null` means "All" (no filter active).
  /// An empty string `''` means the "Unlabeled" chip is active.
  /// Any other value is a user-created label string.
  String? _activeFilter;

  // ---- Lifecycle ----

  @override
  void initState() {
    super.initState();
    _loadBookmarks();
  }

  // ---- Data loading ----

  /// Fetches all bookmarks from [UserDataService] in the current [_sortOrder].
  Future<void> _loadBookmarks() async {
    // Reset error state before each attempt.
    setState(() => _errorMessage = null);

    try {
      await UserDataService.ensureOpen();
      final bookmarks = await UserDataService.getBookmarks(sort: _sortOrder);
      if (mounted) {
        setState(() => _bookmarks = bookmarks);
      }
    } catch (e) {
      if (mounted) {
        setState(() =>
            _errorMessage = 'Could not load bookmarks. Please try again.');
      }
    }
  }

  // ---- Filtering helpers ----

  /// Returns every unique non-null, non-empty label across [_bookmarks].
  ///
  /// Labels are returned in alphabetical order for stable chip ordering.
  List<String> _uniqueLabels() {
    final labels = <String>{};
    for (final bm in _bookmarks ?? []) {
      if (bm.label != null && bm.label!.isNotEmpty) {
        labels.add(bm.label!);
      }
    }
    return labels.toList()..sort();
  }

  /// Returns the subset of [_bookmarks] matching the active filter.
  List<Bookmark> _filteredBookmarks() {
    final all = _bookmarks ?? [];
    if (_activeFilter == null) return all; // "All" selected — no filter
    if (_activeFilter == '') {
      // "Unlabeled" — only bookmarks with no label
      return all
          .where((bm) => bm.label == null || bm.label!.isEmpty)
          .toList();
    }
    // Specific label filter
    return all.where((bm) => bm.label == _activeFilter).toList();
  }

  // ---- Delete flow ----

  /// Shows a confirmation dialog and, if confirmed, deletes [bookmark].
  Future<void> _confirmDelete(Bookmark bookmark) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Delete bookmark?'),
        content: Text(
          'Remove "${bookmark.reference}"'
          '${bookmark.label != null && bookmark.label!.isNotEmpty ? ' (${bookmark.label})' : ''}?'
          '\n\nThis cannot be undone.',
        ),
        actions: [
          // Cancel — do nothing
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Cancel'),
          ),
          // Delete — styled with error color for visual weight
          TextButton(
            onPressed: () => Navigator.pop(ctx, true),
            style: TextButton.styleFrom(
              foregroundColor: Theme.of(ctx).colorScheme.error,
            ),
            child: const Text('Delete'),
          ),
        ],
      ),
    );

    if (confirmed != true || !mounted) return;
    if (bookmark.id == null) return;

    try {
      await UserDataService.removeBookmark(bookmark.id!);
      // Reload to reflect the deletion.
      await _loadBookmarks();
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Could not delete bookmark.')),
        );
      }
    }
  }

  // ---- Navigation ----

  /// Navigates to the reading screen at the location saved in [bookmark].
  ///
  /// Looks up the [Book] object from [BibleService] using [bookmark.bookCode].
  /// If the book is not found (e.g., a bookmark from a no-longer-installed
  /// translation), shows a snackbar instead of crashing.
  Future<void> _navigateTo(Bookmark bookmark) async {
    try {
      final books = await BibleService.getBooks();
      final book = books.firstWhere(
        (b) => b.code == bookmark.bookCode,
        orElse: () => throw StateError('Book not found'),
      );

      if (!mounted) return;

      // Determine the verse to scroll to after navigation.
      // Chapter-level bookmarks have verse = ''; use '1' as the jump target.
      final verse = bookmark.verse.isEmpty ? '1' : bookmark.verse;

      Navigator.pushNamed(
        context,
        AppRoutes.reading,
        arguments: ReadingArgs(
          book: book,
          chapter: bookmark.chapter,
          initialVerse: verse,
        ),
      );
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content:
                Text('Could not navigate to ${bookmark.reference}.'),
          ),
        );
      }
    }
  }

  // ---- Sort toggle ----

  /// Toggles between [BookmarkSortOrder.recentFirst] and
  /// [BookmarkSortOrder.canonicalOrder], then reloads bookmarks.
  void _toggleSort() {
    setState(() {
      _sortOrder = _sortOrder == BookmarkSortOrder.recentFirst
          ? BookmarkSortOrder.canonicalOrder
          : BookmarkSortOrder.recentFirst;
    });
    _loadBookmarks();
  }

  // ---- Build ----

  @override
  Widget build(BuildContext context) {
    // Loading state
    if (_bookmarks == null && _errorMessage == null) {
      return const Center(child: CircularProgressIndicator());
    }

    // Error state
    if (_errorMessage != null) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.error_outline,
              size: 48,
              // Use the theme's error color so this adapts to light/dark mode
              // and any user-chosen accent color in Step 1.16.
              color: Theme.of(context).colorScheme.error,
            ),
            const SizedBox(height: 16),
            Text(_errorMessage!, textAlign: TextAlign.center),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: _loadBookmarks,
              icon: const Icon(Icons.refresh),
              label: const Text('Retry'),
            ),
          ],
        ),
      );
    }

    final bookmarks = _bookmarks!;

    // Empty state — no bookmarks at all
    if (bookmarks.isEmpty) {
      return _EmptyBookmarksState();
    }

    final labels = _uniqueLabels();
    final filtered = _filteredBookmarks();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // ---- Header row: sort toggle ----
        _SortHeader(
          sortOrder: _sortOrder,
          onToggle: _toggleSort,
        ),

        // ---- Filter chips ----
        if (labels.isNotEmpty || bookmarks.any(
            (bm) => bm.label == null || bm.label!.isEmpty))
          _FilterChipRow(
            labels: labels,
            activeFilter: _activeFilter,
            hasUnlabeled: bookmarks
                .any((bm) => bm.label == null || bm.label!.isEmpty),
            onFilterChanged: (value) => setState(() => _activeFilter = value),
          ),

        // ---- Card list ----
        // RefreshIndicator lets users pull-to-refresh after adding bookmarks
        // from the reading screen (the tab does not auto-reload on navigator pop).
        Expanded(
          child: filtered.isEmpty
              ? _EmptyFilterState(
                  onClear: () => setState(() => _activeFilter = null),
                )
              : RefreshIndicator(
                  onRefresh: _loadBookmarks,
                  child: ListView.builder(
                    padding: const EdgeInsets.fromLTRB(12, 8, 12, 24),
                    itemCount: filtered.length,
                    itemBuilder: (_, index) => _BookmarkCard(
                      bookmark: filtered[index],
                      onDelete: () => _confirmDelete(filtered[index]),
                      onTap: () => _navigateTo(filtered[index]),
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// Sort header
// ---------------------------------------------------------------------------

/// Header row showing the current sort order and a toggle button.
class _SortHeader extends StatelessWidget {
  /// The current sort order.
  final BookmarkSortOrder sortOrder;

  /// Called when the user taps the sort toggle button.
  final VoidCallback onToggle;

  const _SortHeader({required this.sortOrder, required this.onToggle});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final label = sortOrder == BookmarkSortOrder.recentFirst
        ? 'Recent first'
        : 'Canonical order';

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 12, 4),
      child: Row(
        children: [
          Text(
            'Bookmarks',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: colorScheme.onSurface,
                  fontWeight: FontWeight.w700,
                ),
          ),
          const Spacer(),
          // Sort toggle button — labeled for screen readers
          Semantics(
            label: 'Sort order: $label. Tap to toggle.',
            button: true,
            child: TextButton.icon(
              onPressed: onToggle,
              icon: Icon(
                sortOrder == BookmarkSortOrder.recentFirst
                    ? Icons.access_time_rounded
                    : Icons.menu_book_rounded,
                size: 18,
              ),
              label: Text(label),
              style: TextButton.styleFrom(
                foregroundColor: colorScheme.primary,
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                minimumSize: const Size(48, 48),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Filter chip row
// ---------------------------------------------------------------------------

/// Horizontally scrollable row of filter chips.
///
/// Always includes "All"; adds one chip per unique label plus "Unlabeled"
/// when there are bookmarks without a label.
class _FilterChipRow extends StatelessWidget {
  /// Sorted list of unique user-created label strings.
  final List<String> labels;

  /// Currently active filter value (null = All, '' = Unlabeled, other = label).
  final String? activeFilter;

  /// Whether to show the "Unlabeled" chip.
  final bool hasUnlabeled;

  /// Called when the user taps a chip; passes the new filter value.
  final ValueChanged<String?> onFilterChanged;

  const _FilterChipRow({
    required this.labels,
    required this.activeFilter,
    required this.hasUnlabeled,
    required this.onFilterChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        children: [
          // "All" chip — always first
          _chip(context, label: 'All', value: null),
          // One chip per unique label
          for (final label in labels) _chip(context, label: label, value: label),
          // "Unlabeled" chip — last, only when there are unlabeled bookmarks
          if (hasUnlabeled) _chip(context, label: 'Unlabeled', value: ''),
        ],
      ),
    );
  }

  /// Builds a single filter chip.
  Widget _chip(BuildContext context, {required String label, required String? value}) {
    final isSelected = activeFilter == value;
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: FilterChip(
        label: Text(label),
        selected: isSelected,
        onSelected: (_) => onFilterChanged(isSelected ? null : value),
        selectedColor: colorScheme.primaryContainer,
        checkmarkColor: colorScheme.onPrimaryContainer,
        labelStyle: TextStyle(
          color: isSelected
              ? colorScheme.onPrimaryContainer
              : colorScheme.onSurface,
          fontSize: 13,
        ),
        // Ensure minimum 48 dp tap target
        materialTapTargetSize: MaterialTapTargetSize.padded,
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Bookmark card
// ---------------------------------------------------------------------------

/// A single bookmark displayed as a Material 3 Card.
///
/// Layout:
///   • Row: reference title (left, bold) + delete icon (right)
///   • Label subtitle — omitted when null
///   • Verse text body — omitted for chapter-level bookmarks (verse = '')
///   • Notes text — omitted when null
class _BookmarkCard extends StatelessWidget {
  /// The bookmark to display.
  final Bookmark bookmark;

  /// Called when the user confirms deletion.
  final VoidCallback onDelete;

  /// Called when the user taps the card body to navigate.
  final VoidCallback onTap;

  const _BookmarkCard({
    required this.bookmark,
    required this.onDelete,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final hasLabel = bookmark.label != null && bookmark.label!.isNotEmpty;
    // Chapter-level bookmarks (verse = '') have no verse-text body.
    final hasVerseText =
        bookmark.verseText != null && bookmark.verse.isNotEmpty;
    final hasNotes = bookmark.notes != null && bookmark.notes!.isNotEmpty;

    return Semantics(
      // Announce the full card content for screen readers.
      label: [
        bookmark.reference,
        if (hasLabel) bookmark.label,
        if (hasVerseText) bookmark.verseText,
        if (hasNotes) bookmark.notes,
      ].join('. '),
      button: true,
      child: Card(
        margin: const EdgeInsets.only(bottom: 12),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 8, 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ---- Title row: reference + delete icon ----
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Scripture reference as the card title
                    Expanded(
                      child: Text(
                        bookmark.reference,
                        style: textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: colorScheme.onSurface,
                        ),
                      ),
                    ),
                    // Delete button — uses error color for visual destructive signal
                    Semantics(
                      label: 'Delete bookmark ${bookmark.reference}',
                      button: true,
                      // excludeSemantics suppresses the IconButton's auto-generated
                      // semantics node (which would duplicate the label and button flag).
                      // onTap is required here: without it the Semantics node has no
                      // semantic action and screen readers can hear the label but cannot
                      // activate delete.
                      onTap: onDelete,
                      excludeSemantics: true,
                      child: IconButton(
                        icon: Icon(
                          Icons.delete_outline_rounded,
                          color: colorScheme.error,
                        ),
                        onPressed: onDelete,
                        tooltip: 'Delete bookmark',
                        // Ensure minimum 48 × 48 dp tap target
                        constraints: const BoxConstraints(
                          minWidth: 48,
                          minHeight: 48,
                        ),
                      ),
                    ),
                  ],
                ),

                // ---- Label subtitle ----
                if (hasLabel) ...[
                  const SizedBox(height: 2),
                  Text(
                    bookmark.label!.toUpperCase(),
                    style: textTheme.labelMedium?.copyWith(
                      color: colorScheme.primary,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.8,
                    ),
                  ),
                ],

                // ---- Verse text body ----
                if (hasVerseText) ...[
                  const SizedBox(height: 8),
                  Text(
                    '"${bookmark.verseText!}"',
                    style: textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                      height: 1.5,
                    ),
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],

                // ---- Notes ----
                if (hasNotes) ...[
                  const SizedBox(height: 6),
                  Text(
                    bookmark.notes!,
                    style: textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                      fontStyle: FontStyle.italic,
                      height: 1.4,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Empty states
// ---------------------------------------------------------------------------

/// Shown when the user has no bookmarks at all.
class _EmptyBookmarksState extends StatelessWidget {
  const _EmptyBookmarksState();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.bookmark_add_outlined,
              size: 56,
              color: colorScheme.onSurfaceVariant.withAlpha(128),
            ),
            const SizedBox(height: 16),
            Text(
              'No bookmarks yet.',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                    fontWeight: FontWeight.w600,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              'Tap the bookmark icon while reading to save a location.',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

/// Shown when the active filter matches zero bookmarks.
class _EmptyFilterState extends StatelessWidget {
  /// Called when the user taps "Clear filter".
  final VoidCallback onClear;

  const _EmptyFilterState({required this.onClear});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('No bookmarks match this filter.'),
          const SizedBox(height: 12),
          TextButton(
            onPressed: onClear,
            child: const Text('Clear filter'),
          ),
        ],
      ),
    );
  }
}
