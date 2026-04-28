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
    items.add(const _SectionHeader(label: _labelOT, icon: Icons.history_edu));
    for (int i = 0; i < otBooks.length; i++) {
      items.add(_BookTile(book: otBooks[i], onTap: onBookTapped));
      // Add a divider between tiles but not after the last one in the group.
      if (i < otBooks.length - 1) items.add(const _TileDivider());
    }

    // --- New Testament ---
    items.add(const _SectionHeader(label: _labelNT, icon: Icons.auto_stories));
    for (int i = 0; i < ntBooks.length; i++) {
      items.add(_BookTile(book: ntBooks[i], onTap: onBookTapped));
      if (i < ntBooks.length - 1) items.add(const _TileDivider());
    }

    // --- Deuterocanon / Apocrypha (only if translation includes them) ---
    if (dcBooks.isNotEmpty) {
      items.add(const _SectionHeader(label: _labelDC, icon: Icons.library_books));
      for (int i = 0; i < dcBooks.length; i++) {
        items.add(_BookTile(book: dcBooks[i], onTap: onBookTapped));
        if (i < dcBooks.length - 1) items.add(const _TileDivider());
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

    // Build a flat list of items interleaved with letter-group headers.
    // A new [_LetterHeader] is inserted whenever the first character of
    // nameShort changes — like a contacts list.
    final items = <Widget>[];
    String? currentLetter;

    for (int i = 0; i < sorted.length; i++) {
      final book = sorted[i];
      // First character of the book name, upper-cased for grouping.
      final letter =
          book.nameShort.isNotEmpty ? book.nameShort[0].toUpperCase() : '#';

      // Insert a letter header whenever the group changes.
      if (letter != currentLetter) {
        currentLetter = letter;
        items.add(_LetterHeader(letter: letter));
      }

      items.add(_BookTile(book: book, onTap: onBookTapped));

      // Add a divider between tiles within the same letter group, but not
      // before the next letter header (which provides its own visual break).
      final isLastInGroup = i == sorted.length - 1 ||
          sorted[i + 1].nameShort[0].toUpperCase() != letter;
      if (!isLastInGroup) items.add(const _TileDivider());
    }

    return ListView.builder(
      padding: const EdgeInsets.only(bottom: 24),
      itemCount: items.length,
      itemBuilder: (_, index) => items[index],
    );
  }
}

// ---------------------------------------------------------------------------
// Reusable widgets
// ---------------------------------------------------------------------------

/// A styled section header row used between testament groups in the
/// Traditional tab.
///
/// Features a 4 px left accent bar in [ColorScheme.primary], a tinted
/// [ColorScheme.primaryContainer] background, an optional leading [icon],
/// and uppercase bold text — all driven by the active Material theme so
/// it looks correct in both light and dark mode and respects any accent
/// color the user picks in Settings (Step 1.16).
class _SectionHeader extends StatelessWidget {
  /// The text to display (e.g. "Old Testament").
  final String label;

  /// Optional leading icon displayed to the left of the label.
  final IconData? icon;

  const _SectionHeader({required this.label, this.icon});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      // A small top margin visually separates consecutive sections.
      margin: const EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        // Muted primary tint as background — readable in both themes.
        color: colorScheme.primaryContainer,
        border: Border(
          // 4 px accent bar on the left edge in the primary brand color.
          left: BorderSide(color: colorScheme.primary, width: 4),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      child: Row(
        children: [
          if (icon != null) ...[           
            Icon(icon, size: 16, color: colorScheme.onPrimaryContainer),
            const SizedBox(width: 8),
          ],
          Text(
            // All-caps gives a strong section-header feel.
            label.toUpperCase(),
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
              color: colorScheme.onPrimaryContainer,
            ),
          ),
        ],
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
    final colorScheme = Theme.of(context).colorScheme;

    // Compact chapter count — "39 ch." saves horizontal space for the chevron.
    final chapterLabel =
        book.chapterCount == 1 ? '1 ch.' : '${book.chapterCount} ch.';

    return ListTile(
      // Abbreviation badge on the left — gives each row a visual anchor.
      leading: _AbbreviationBadge(abbreviation: book.abbreviation),
      // Book name as the primary content, slightly bolder than default.
      title: Text(
        book.nameShort,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      // Chapter count + forward chevron on the right.
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            chapterLabel,
            style: TextStyle(
              fontSize: 12,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(width: 2),
          Icon(
            Icons.chevron_right_rounded,
            size: 20,
            color: colorScheme.onSurfaceVariant,
          ),
        ],
      ),
      // Navigate to chapter selection on tap.
      onTap: () => onTap(book),
    );
  }
}

// ---------------------------------------------------------------------------
// Reusable: abbreviation badge
// ---------------------------------------------------------------------------

/// A small rounded-rectangle badge displaying a book abbreviation.
///
/// Uses [ColorScheme.primaryContainer] as the background and
/// [ColorScheme.onPrimaryContainer] as the text color, so it adapts
/// automatically to both light and dark mode and to any theme accent color
/// chosen in Settings (Step 1.16).
class _AbbreviationBadge extends StatelessWidget {
  /// The abbreviation text to display (e.g. "Gen", "Matt", "Rev").
  ///
  /// Capped at 4 characters to keep the badge compact.
  final String abbreviation;

  const _AbbreviationBadge({required this.abbreviation});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    // Cap at 4 characters — some abbreviations can be longer.
    final display = abbreviation.length > 4
        ? abbreviation.substring(0, 4)
        : abbreviation;

    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
      child: Text(
        display,
        style: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 11,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.2,
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Reusable: tile divider
// ---------------------------------------------------------------------------

/// A thin horizontal divider placed between book tiles within a section.
///
/// The [indent] of 72 px aligns the left edge of the line with the start of
/// the book name text (after the leading badge). This is a common Material
/// convention that keeps the list from feeling too cluttered.
class _TileDivider extends StatelessWidget {
  const _TileDivider();

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 1,
      indent: 72,  // aligns with the title text start
      endIndent: 16,
    );
  }
}

// ---------------------------------------------------------------------------
// Reusable: alphabetical letter header
// ---------------------------------------------------------------------------

/// A compact letter-group header used in the Alphabetical tab.
///
/// Displayed between groups of books that start with the same letter,
/// similar to a contacts list. Uses [ColorScheme.primary] for the letter
/// text so it picks up the active theme accent color automatically.
class _LetterHeader extends StatelessWidget {
  /// The uppercase letter for this group (e.g. "A", "G", "R").
  final String letter;

  const _LetterHeader({required this.letter});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 2),
      child: Text(
        letter,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: colorScheme.primary,
          letterSpacing: 1.0,
        ),
      ),
    );
  }
}
