// Pure chapter navigation utility for Cyber Bible.
//
// Computes the immediately preceding and following chapter destinations
// (as [ReadingArgs]) given a canonical book list, the current reading
// position, and a map of each book's available chapter numbers.
//
// Extracting this logic into a standalone function keeps it unit-testable
// without any Flutter UI, database, or platform-plugin dependencies.

import '../app_routes.dart';
import '../models/book.dart';

// ---------------------------------------------------------------------------
// Result type
// ---------------------------------------------------------------------------

/// The resolved previous and next chapter destinations for the current
/// reading position.
///
/// Either field is null when no further navigation is available in that
/// direction:
/// - [prev] is null when reading Genesis chapter 1 (start of Bible).
/// - [next] is null when reading the last chapter of the last book.
class ChapterNavResult {
  /// Previous chapter destination, or null if at the start of the Bible.
  final ReadingArgs? prev;

  /// Next chapter destination, or null if at the end of the Bible.
  final ReadingArgs? next;

  /// Creates a [ChapterNavResult] with the given adjacent destinations.
  const ChapterNavResult({this.prev, this.next});
}

// ---------------------------------------------------------------------------
// Public function
// ---------------------------------------------------------------------------

/// Computes the previous and next chapter destinations for the current
/// reading position.
///
/// Parameters:
/// - [books]          — all books in canonical DB sort-order sequence.
/// - [bookCode]       — 3-letter code of the book currently being read.
/// - [chapter]        — chapter number currently being read.
/// - [chaptersByBook] — map of book code → sorted available chapter numbers,
///                      as returned by [BibleService.getChapters]. Entries
///                      for absent books are treated as empty lists (no
///                      navigation in that direction).
///
/// Returns a [ChapterNavResult] with both navigation destinations.
/// Either destination is null when no further navigation is possible:
/// - [ChapterNavResult.prev] is null when at Genesis 1.
/// - [ChapterNavResult.next] is null when at the last chapter of the Bible.
///
/// When [chapter] is not found in [chaptersByBook] for [bookCode] (e.g. a
/// chapter that exists in the DB but not in the available-chapters list),
/// both destinations are null rather than crashing.
ChapterNavResult computeChapterNavigation({
  required List<Book> books,
  required String bookCode,
  required int chapter,
  required Map<String, List<int>> chaptersByBook,
}) {
  // Nothing to navigate if the book list is empty or the book is unknown.
  if (books.isEmpty) return const ChapterNavResult();

  final bookIdx = books.indexWhere((b) => b.code == bookCode);
  if (bookIdx < 0) return const ChapterNavResult();

  final currentChapters = chaptersByBook[bookCode] ?? const <int>[];
  final chapterIdx = currentChapters.indexOf(chapter);

  // chapterIdx == -1 means the requested chapter was not found in the
  // available-chapters list. Return empty result gracefully.
  if (chapterIdx < 0) return const ChapterNavResult();

  ReadingArgs? prev;
  ReadingArgs? next;

  // ---- Previous chapter -----------------------------------------------

  if (chapterIdx > 0) {
    // There is an earlier chapter within the same book.
    prev = ReadingArgs(
      book: books[bookIdx],
      chapter: currentChapters[chapterIdx - 1],
    );
  } else if (bookIdx > 0) {
    // At the very first chapter of a non-first book.
    // Navigate to the last chapter of the preceding book.
    final prevBook = books[bookIdx - 1];
    final prevChapters = chaptersByBook[prevBook.code] ?? const <int>[];
    if (prevChapters.isNotEmpty) {
      prev = ReadingArgs(book: prevBook, chapter: prevChapters.last);
    }
    // prevChapters empty → no chapter data for that book; leave prev null.
  }
  // bookIdx == 0 && chapterIdx == 0 → Genesis 1 → prev stays null.

  // ---- Next chapter ---------------------------------------------------

  if (chapterIdx < currentChapters.length - 1) {
    // There is a later chapter within the same book.
    next = ReadingArgs(
      book: books[bookIdx],
      chapter: currentChapters[chapterIdx + 1],
    );
  } else if (bookIdx < books.length - 1) {
    // At the very last chapter of a non-final book.
    // Navigate to the first chapter of the following book.
    final nextBook = books[bookIdx + 1];
    final nextChapters = chaptersByBook[nextBook.code] ?? const <int>[];
    if (nextChapters.isNotEmpty) {
      next = ReadingArgs(book: nextBook, chapter: nextChapters.first);
    }
    // nextChapters empty → no chapter data for that book; leave next null.
  }
  // Last chapter of last book → next stays null.

  return ChapterNavResult(prev: prev, next: next);
}
