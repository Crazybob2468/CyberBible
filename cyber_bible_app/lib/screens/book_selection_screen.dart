// Book selection screen — Step 1.8.
//
// Lists all books of the Bible in two tabs:
//
//   • "Traditional" tab — books grouped in canonical order under three
//     section headers: Old Testament, New Testament, and (only when the
//     loaded translation includes them) Deuterocanon / Apocrypha.
//
//   • "Alphabetical" tab — all books sorted A–Z by their short name,
//     using whatever language/script the translation stores in nameShort.
//     Deuterocanon books appear inline in the sorted list — no special
//     handling needed.
//
// Tapping any book navigates to [ChapterSelectionScreen] via the named
// route [AppRoutes.chapters].

import 'package:flutter/material.dart';

import '../models/book.dart';
import '../routes.dart';
import '../services/bible_service.dart';

// ---------------------------------------------------------------------------
// Section header labels
// ---------------------------------------------------------------------------

/// Display label for the Old Testament section header.
const _labelOT = 'Old Testament';

/// Display label for the New Testament section header.
const _labelNT = 'New Testament';

/// Display label for the Deuterocanon / Apocrypha section header.
const _labelDC = 'Deuterocanon / Apocrypha';

// ---------------------------------------------------------------------------
// Main screen widget
// ---------------------------------------------------------------------------

/// Displays all books of the Bible in Traditional and Alphabetical tabs.
///
/// Books are loaded from [BibleService] when the screen first mounts.
/// While loading, a centered activity indicator is shown. If loading fails,
/// an error message with a retry button is shown instead.
class BookSelectionScreen extends StatefulWidget {
  const BookSelectionScreen({super.key});

  @override
  State<BookSelectionScreen> createState() => _BookSelectionScreenState();
}

class _BookSelectionScreenState extends State<BookSelectionScreen>
    with SingleTickerProviderStateMixin {
  // ---- State ----

  /// All books returned by [BibleService.getBooks()], in canonical sort order.
  List<Book>? _books;

  /// Non-null when the book-load operation threw an error.
  String? _errorMessage;

  /// Controls the two-tab layout (Traditional / Alphabetical).
  late TabController _tabController;

  // ---- Lifecycle ----

  @override
  void initState() {
    super.initState();

    // Create a tab controller for the two tabs.
    _tabController = TabController(length: 2, vsync: this);

    // Load books as soon as the screen mounts.
    _loadBooks();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // ---- Data loading ----

  /// Fetches all books from [BibleService] and stores them in [_books].
  ///
  /// If the call fails, [_errorMessage] is set so the UI can show a
  /// retry button.
  Future<void> _loadBooks() async {
    // Reset any previous error before retrying.
    setState(() {
      _errorMessage = null;
      _books = null;
    });

    try {
      final books = await BibleService.getBooks();
      if (mounted) {
        setState(() => _books = books);
      }
    } catch (e) {
      if (mounted) {
        setState(() => _errorMessage = 'Could not load books: $e');
      }
    }
  }

  // ---- Navigation ----

  /// Navigate to the chapter selection screen for the given [book].
  void _onBookTapped(Book book) {
    Navigator.pushNamed(
      context,
      AppRoutes.chapters,
      arguments: ChapterArgs(book: book),
    );
  }

  // ---- Build ----

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select a Book'),
        // The tab bar lives inside the AppBar's bottom slot so it scrolls
        // with the page on smaller screens.
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Traditional'),
            Tab(text: 'Alphabetical'),
          ],
        ),
      ),
      body: _buildBody(),
    );
  }

  /// Builds the body: loading spinner, error state, or the two tabs.
  Widget _buildBody() {
    // While waiting for books to load, show a spinner.
    if (_books == null && _errorMessage == null) {
      return const Center(child: CircularProgressIndicator());
    }

    // If loading failed, show the error and a retry button.
    if (_errorMessage != null) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.error_outline, size: 48, color: Colors.red),
            const SizedBox(height: 16),
            Text(
              _errorMessage!,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: _loadBooks,
              icon: const Icon(Icons.refresh),
              label: const Text('Retry'),
            ),
          ],
        ),
      );
    }

    // Books loaded — build the two-tab view.
    final books = _books!;
    return TabBarView(
      controller: _tabController,
      children: [
        _TraditionalTab(books: books, onBookTapped: _onBookTapped),
        _AlphabeticalTab(books: books, onBookTapped: _onBookTapped),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// Traditional tab
// ---------------------------------------------------------------------------

/// The "Traditional" tab — books grouped in canonical order under section
/// headers for Old Testament, New Testament, and (if present) Deuterocanon.
///
/// Section headers for Deuterocanon are only shown when the active translation
/// actually contains DC books.
class _TraditionalTab extends StatelessWidget {
  /// All books in canonical sort order.
  final List<Book> books;

  /// Called when the user taps a book row.
  final ValueChanged<Book> onBookTapped;

  const _TraditionalTab({required this.books, required this.onBookTapped});

  @override
  Widget build(BuildContext context) {
    // Split books by testament. The sort order from the DB preserves canonical
    // ordering within each group.
    final otBooks = books.where((b) => b.testament == Testament.ot).toList();
    final ntBooks = books.where((b) => b.testament == Testament.nt).toList();
    final dcBooks = books.where((b) => b.testament == Testament.dc).toList();

    // Build a flat list of widgets interleaved with section headers.
    // Each item is either a [_SectionHeader] or a [_BookTile].
    final items = <Widget>[];

    // --- Old Testament ---
    items.add(const _SectionHeader(label: _labelOT));
    for (final book in otBooks) {
      items.add(_BookTile(book: book, onTap: onBookTapped));
    }

    // --- New Testament ---
    items.add(const _SectionHeader(label: _labelNT));
    for (final book in ntBooks) {
      items.add(_BookTile(book: book, onTap: onBookTapped));
    }

    // --- Deuterocanon / Apocrypha (only if translation includes them) ---
    if (dcBooks.isNotEmpty) {
      items.add(const _SectionHeader(label: _labelDC));
      for (final book in dcBooks) {
        items.add(_BookTile(book: book, onTap: onBookTapped));
      }
    }

    return ListView.builder(
      // Add padding at top and bottom for comfortable scrolling.
      padding: const EdgeInsets.only(bottom: 24),
      itemCount: items.length,
      itemBuilder: (_, index) => items[index],
    );
  }
}

// ---------------------------------------------------------------------------
// Alphabetical tab
// ---------------------------------------------------------------------------

/// The "Alphabetical" tab — all books sorted A–Z by [Book.nameShort].
///
/// Works for any language/script because names come directly from the
/// translation's database record. Deuterocanon books appear inline in the
/// sorted list without special labelling.
class _AlphabeticalTab extends StatelessWidget {
  /// All books (will be sorted by this widget).
  final List<Book> books;

  /// Called when the user taps a book row.
  final ValueChanged<Book> onBookTapped;

  const _AlphabeticalTab({required this.books, required this.onBookTapped});

  @override
  Widget build(BuildContext context) {
    // Sort a copy so the original canonical list is not mutated.
    final sorted = [...books]
      ..sort((a, b) => a.nameShort.compareTo(b.nameShort));

    return ListView.builder(
      padding: const EdgeInsets.only(bottom: 24),
      itemCount: sorted.length,
      itemBuilder: (_, index) => _BookTile(
        book: sorted[index],
        onTap: onBookTapped,
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Reusable widgets
// ---------------------------------------------------------------------------

/// A non-interactive section header row.
///
/// Used between groups of books in the Traditional tab.
/// Styled to stand out clearly from the book tiles beneath it.
class _SectionHeader extends StatelessWidget {
  /// The text to display in the header (e.g. "Old Testament").
  final String label;

  const _SectionHeader({required this.label});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      // Tinted background to differentiate headers from list tiles.
      color: colorScheme.surfaceContainerHighest,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.8,
          color: colorScheme.onSurfaceVariant,
        ),
      ),
    );
  }
}

/// A tappable row representing one book of the Bible.
///
/// Shows the book's short name on the left and the chapter count on the
/// right, separated by a subtle divider. Tapping calls [onTap].
class _BookTile extends StatelessWidget {
  /// The book to display.
  final Book book;

  /// Callback invoked when the tile is tapped.
  final ValueChanged<Book> onTap;

  const _BookTile({required this.book, required this.onTap});

  @override
  Widget build(BuildContext context) {
    // Chapter count label — singular "chapter" vs plural "chapters".
    final chapterLabel = book.chapterCount == 1
        ? '1 chapter'
        : '${book.chapterCount} chapters';

    return ListTile(
      // Book name as the primary content.
      title: Text(book.nameShort),
      // Chapter count as a secondary hint on the right side.
      trailing: Text(
        chapterLabel,
        style: TextStyle(
          fontSize: 13,
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),
      ),
      // Navigate to chapter selection on tap.
      onTap: () => onTap(book),
    );
  }
}
