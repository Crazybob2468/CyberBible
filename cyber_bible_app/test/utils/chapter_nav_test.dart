// Unit tests for computeChapterNavigation() in lib/utils/chapter_nav.dart.
//
// All test cases run without any Flutter UI, database, or platform-plugin
// dependencies — the function is pure Dart.

import 'package:flutter_test/flutter_test.dart';

import 'package:cyber_bible_app/utils/chapter_nav.dart';
import 'package:cyber_bible_app/models/book.dart';

// ---------------------------------------------------------------------------
// Test helpers
// ---------------------------------------------------------------------------

/// Creates a minimal [Book] instance for use in tests.
///
/// Only [code], [sortOrder], and [testament] vary between test books.
/// The remaining required fields are filled with placeholder values.
Book _book(String code, int sortOrder, Testament testament) => Book(
      code: code,
      sortOrder: sortOrder,
      nameShort: code,
      nameLong: code,
      abbreviation: code,
      testament: testament,
      chapterCount: 0, // Not used by computeChapterNavigation.
    );

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  // ---- Fixture data -------------------------------------------------------
  //
  // Four books in canonical order, mirroring a minimal Bible structure:
  //   GEN  (OT, chapters 1–3)  → first book
  //   EXO  (OT, chapters 1–2)  → second book
  //   MAT  (NT, chapters 1–2)  → third book
  //   REV  (NT, chapters 1, 22)→ last book
  //
  // REV has chapters 1 and 22 with a gap to test "last chapter" logic using
  // the actual chapter list rather than counting.

  final gen = _book('GEN', 1, Testament.ot);
  final exo = _book('EXO', 2, Testament.ot);
  final mat = _book('MAT', 3, Testament.nt);
  final rev = _book('REV', 4, Testament.nt);

  final books = [gen, exo, mat, rev];

  const chaptersByBook = <String, List<int>>{
    'GEN': [1, 2, 3],
    'EXO': [1, 2],
    'MAT': [1, 2],
    'REV': [1, 22], // Gap between chapters is intentional.
  };

  // ---- Bible boundaries ---------------------------------------------------

  group('Bible-boundary cases', () {
    test('Genesis 1: no previous chapter (start of Bible)', () {
      final result = computeChapterNavigation(
        books: books,
        bookCode: 'GEN',
        chapter: 1,
        chaptersByBook: chaptersByBook,
      );

      expect(result.prev, isNull,
          reason: 'Genesis 1 is the very first chapter — no prev exists');
      // Next should be Genesis 2.
      expect(result.next?.book.code, equals('GEN'));
      expect(result.next?.chapter, equals(2));
    });

    test('Revelation 22: no next chapter (end of Bible)', () {
      final result = computeChapterNavigation(
        books: books,
        bookCode: 'REV',
        chapter: 22,
        chaptersByBook: chaptersByBook,
      );

      expect(result.next, isNull,
          reason: 'Revelation 22 is the last chapter — no next exists');
      // Prev should be Revelation 1.
      expect(result.prev?.book.code, equals('REV'));
      expect(result.prev?.chapter, equals(1));
    });
  });

  // ---- Within-book navigation ---------------------------------------------

  group('Within-book navigation', () {
    test('middle chapter: prev and next are both in the same book', () {
      final result = computeChapterNavigation(
        books: books,
        bookCode: 'GEN',
        chapter: 2,
        chaptersByBook: chaptersByBook,
      );

      expect(result.prev?.book.code, equals('GEN'));
      expect(result.prev?.chapter, equals(1));
      expect(result.next?.book.code, equals('GEN'));
      expect(result.next?.chapter, equals(3));
    });

    test('first chapter of a multi-chapter non-first book: prev navigates cross-book', () {
      final result = computeChapterNavigation(
        books: books,
        bookCode: 'EXO',
        chapter: 1,
        chaptersByBook: chaptersByBook,
      );

      // Next is within Exodus.
      expect(result.next?.book.code, equals('EXO'));
      expect(result.next?.chapter, equals(2));
    });

    test('last chapter of a multi-chapter non-final book: next navigates cross-book', () {
      final result = computeChapterNavigation(
        books: books,
        bookCode: 'EXO',
        chapter: 2,
        chaptersByBook: chaptersByBook,
      );

      // Prev is within Exodus.
      expect(result.prev?.book.code, equals('EXO'));
      expect(result.prev?.chapter, equals(1));
    });
  });

  // ---- Cross-book boundary navigation ------------------------------------

  group('Cross-book boundary navigation', () {
    test('last chapter of GEN: next goes to EXO chapter 1', () {
      final result = computeChapterNavigation(
        books: books,
        bookCode: 'GEN',
        chapter: 3,
        chaptersByBook: chaptersByBook,
      );

      expect(result.next?.book.code, equals('EXO'));
      expect(result.next?.chapter, equals(1));
    });

    test('first chapter of EXO: prev goes to GEN last chapter (3)', () {
      final result = computeChapterNavigation(
        books: books,
        bookCode: 'EXO',
        chapter: 1,
        chaptersByBook: chaptersByBook,
      );

      expect(result.prev?.book.code, equals('GEN'));
      expect(result.prev?.chapter, equals(3));
    });

    test('last chapter of MAT: next goes to REV chapter 1', () {
      final result = computeChapterNavigation(
        books: books,
        bookCode: 'MAT',
        chapter: 2,
        chaptersByBook: chaptersByBook,
      );

      expect(result.next?.book.code, equals('REV'));
      expect(result.next?.chapter, equals(1));
    });

    test('REV chapter 1 (non-last): prev goes to MAT chapter 2', () {
      final result = computeChapterNavigation(
        books: books,
        bookCode: 'REV',
        chapter: 1,
        chaptersByBook: chaptersByBook,
      );

      expect(result.prev?.book.code, equals('MAT'));
      expect(result.prev?.chapter, equals(2));
    });
  });

  // ---- Chapter-gap handling (non-contiguous chapter numbers) -------------

  group('Non-contiguous chapter numbers (gap in REV)', () {
    test('REV 1 → next is REV 22, not REV 2 (gap skipped)', () {
      final result = computeChapterNavigation(
        books: books,
        bookCode: 'REV',
        chapter: 1,
        chaptersByBook: chaptersByBook,
      );

      // REV's available chapters are [1, 22].  Next after 1 is 22.
      expect(result.next?.book.code, equals('REV'));
      expect(result.next?.chapter, equals(22));
    });
  });

  // ---- Edge and error cases ----------------------------------------------

  group('Edge and error cases', () {
    test('empty books list: both directions null', () {
      final result = computeChapterNavigation(
        books: [],
        bookCode: 'GEN',
        chapter: 1,
        chaptersByBook: chaptersByBook,
      );

      expect(result.prev, isNull);
      expect(result.next, isNull);
    });

    test('unknown book code: both directions null', () {
      final result = computeChapterNavigation(
        books: books,
        bookCode: 'ZZZ',
        chapter: 1,
        chaptersByBook: chaptersByBook,
      );

      expect(result.prev, isNull);
      expect(result.next, isNull);
    });

    test('chapter not in chaptersByBook list: both directions null (graceful)', () {
      // Chapter 99 does not exist in Genesis.
      final result = computeChapterNavigation(
        books: books,
        bookCode: 'GEN',
        chapter: 99,
        chaptersByBook: chaptersByBook,
      );

      // chapterIdx == -1 → no valid position → both null rather than crash.
      expect(result.prev, isNull);
      expect(result.next, isNull);
    });

    test('missing chaptersByBook entry for current book: both directions null', () {
      // Remove GEN from chapters map entirely.
      final sparse = Map<String, List<int>>.from(chaptersByBook)..remove('GEN');

      final result = computeChapterNavigation(
        books: books,
        bookCode: 'GEN',
        chapter: 1,
        chaptersByBook: sparse,
      );

      expect(result.prev, isNull);
      expect(result.next, isNull);
    });

    test('missing chaptersByBook entry for adjacent book: null in that direction', () {
      // Remove EXO from chapters map — crossing from GEN into EXO should
      // produce a null next rather than throwing.
      final sparse = Map<String, List<int>>.from(chaptersByBook)..remove('EXO');

      final result = computeChapterNavigation(
        books: books,
        bookCode: 'GEN',
        chapter: 3,
        chaptersByBook: sparse,
      );

      // EXO has no chapter data → cannot navigate there.
      expect(result.next, isNull);
      // Prev (GEN 2) is unaffected.
      expect(result.prev?.book.code, equals('GEN'));
      expect(result.prev?.chapter, equals(2));
    });

    test('single-book Bible: no cross-book navigation in either direction', () {
      final singleBook = [gen];

      final result = computeChapterNavigation(
        books: singleBook,
        bookCode: 'GEN',
        chapter: 2,
        chaptersByBook: const {'GEN': [1, 2, 3]},
      );

      // Both neighbours are within the same book.
      expect(result.prev?.book.code, equals('GEN'));
      expect(result.prev?.chapter, equals(1));
      expect(result.next?.book.code, equals('GEN'));
      expect(result.next?.chapter, equals(3));
    });

    test('single-chapter single-book Bible: both null', () {
      final singleBook = [gen];

      final result = computeChapterNavigation(
        books: singleBook,
        bookCode: 'GEN',
        chapter: 1,
        chaptersByBook: const {'GEN': [1]},
      );

      expect(result.prev, isNull);
      expect(result.next, isNull);
    });
  });
}
