/// Unit tests for [UserDataService] and the [Bookmark] model.
///
/// ## Test groups
///
///   1. **Pre-open guard** — verifies that every public query method throws a
///      [StateError] with a clear "ensureOpen" message when called before
///      [UserDataService.ensureOpen].
///
///   2. **Bookmark model** — pure-Dart tests for [Bookmark.fromMap],
///      [Bookmark.toMap], [Bookmark.copyWith], [Bookmark.reference], and
///      the [BookmarkSortOrder] enum values.  No database required.
///
///   3. **CRUD** — end-to-end tests against a real (in-memory) SQLite database
///      using [sqflite_common_ffi].  Tests cover adding, removing, querying,
///      and the [isBookmarked] helper.
///
/// ## sqflite_common_ffi
///
/// [sqflite_common_ffi] provides a dart:ffi–based SQLite implementation that
/// works on Windows, macOS, and Linux without platform channels or a physical
/// device.  The CRUD group uses it with [inMemoryDatabasePath] so each test
/// gets a fresh, isolated database with no side effects on the file system.
///
/// Run with:
///   flutter test test/services/user_data_service_test.dart
library;

import 'package:flutter_test/flutter_test.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'package:cyber_bible_app/models/bookmark.dart';
import 'package:cyber_bible_app/services/user_data_service.dart';

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

/// Creates a [Bookmark] with predictable test data.
///
/// [bookCode]      — defaults to `'GEN'` (Genesis).
/// [bookSortOrder] — defaults to `1` (Genesis is the first book).
/// [chapter]       — defaults to `1`.
/// [verse]         — defaults to `'1'`.
/// [notes]         — optional free-text note; defaults to `null`.
/// [createdAt]     — defaults to Unix epoch (1970-01-01 00:00:00 UTC) for
///                   deterministic ordering in sort tests.
Bookmark _makeBookmark({
  String bookCode = 'GEN',
  int bookSortOrder = 1,
  int chapter = 1,
  String verse = '1',
  String? verseEnd,
  String? verseText = 'In the beginning God created the heavens and the earth.',
  String? label,
  String? notes,
  DateTime? createdAt,
}) {
  return Bookmark(
    bookCode: bookCode,
    bookSortOrder: bookSortOrder,
    chapter: chapter,
    verse: verse,
    verseEnd: verseEnd,
    verseText: verseText,
    label: label,
    notes: notes,
    createdAt: createdAt ?? DateTime.fromMillisecondsSinceEpoch(0),
  );
}

// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------

void main() {
  // Initialise the FFI SQLite bindings once for the entire test run.
  // This is required on Windows/macOS/Linux before any FFI-based database
  // operation. It is a no-op if called multiple times.
  setUpAll(() {
    sqfliteFfiInit();

    // Redirect the global sqflite factory to the FFI implementation so that
    // openDatabase calls in UserDataService._doOpen() use in-memory SQLite
    // instead of the platform plugin (which is unavailable in unit tests).
    databaseFactory = databaseFactoryFfi;
  });

  // ---------------------------------------------------------------------------
  // Group 1 — Pre-open guard
  // ---------------------------------------------------------------------------

  group('UserDataService — pre-open guard', () {
    // Ensure the database is closed before each guard test so that _db is null
    // and the StateError is always thrown.
    setUp(() async {
      await UserDataService.closeForTesting();
      UserDataService.testDbPath = null;
    });

    tearDown(() async {
      // Reset after each guard test in case a test accidentally opened the DB.
      await UserDataService.closeForTesting();
      UserDataService.testDbPath = null;
    });

    test('addBookmark throws StateError before ensureOpen', () {
      // _db is null here because setUp closed it. Calling addBookmark accesses
      // _database, which throws StateError immediately.
      expect(
        () async => UserDataService.addBookmark(_makeBookmark()),
        throwsA(
          isA<StateError>().having(
            (e) => e.message,
            'message',
            contains('ensureOpen'),
          ),
        ),
      );
    });

    test('removeBookmark throws StateError before ensureOpen', () {
      expect(
        () async => UserDataService.removeBookmark(1),
        throwsA(isA<StateError>()),
      );
    });

    test('getBookmarks throws StateError before ensureOpen', () {
      expect(
        () async => UserDataService.getBookmarks(),
        throwsA(isA<StateError>()),
      );
    });

    test('isBookmarked throws StateError before ensureOpen', () {
      expect(
        () async => UserDataService.isBookmarked('GEN', 1, '1'),
        throwsA(isA<StateError>()),
      );
    });

    test('getBookmarkedVerses throws StateError before ensureOpen', () {
      // getBookmarkedVerses should guard like all other query methods.
      expect(
        () async => UserDataService.getBookmarkedVerses('GEN', 1),
        throwsA(isA<StateError>()),
      );
    });
  });

  // ---------------------------------------------------------------------------
  // Group 2 — Bookmark model (pure Dart, no database)
  // ---------------------------------------------------------------------------

  group('Bookmark model', () {
    // A fully-populated bookmark used across model tests.
    final fullBookmark = Bookmark(
      id: 42,
      bookCode: 'MAT',
      bookSortOrder: 40,
      chapter: 5,
      verse: '3',
      verseEnd: '12',
      verseText: 'Blessed are the poor in spirit...',
      label: 'Beatitudes',
      notes: 'Study this passage for Sunday sermon.',
      createdAt: DateTime.fromMillisecondsSinceEpoch(1_700_000_000_000),
    );

    test('BookmarkSortOrder has recentFirst and canonicalOrder values', () {
      // Verify enum values exist and the total count is exactly 2.
      // This test will fail if values are accidentally removed.
      expect(BookmarkSortOrder.values, contains(BookmarkSortOrder.recentFirst));
      expect(
        BookmarkSortOrder.values,
        contains(BookmarkSortOrder.canonicalOrder),
      );
      expect(BookmarkSortOrder.values, hasLength(2));
    });

    test('toMap includes all non-null fields', () {
      final map = fullBookmark.toMap();

      expect(map['id'], 42);
      expect(map['book_code'], 'MAT');
      expect(map['book_sort_order'], 40);
      expect(map['chapter'], 5);
      expect(map['verse'], '3');
      expect(map['verse_end'], '12');
      expect(map['verse_text'], 'Blessed are the poor in spirit...');
      expect(map['label'], 'Beatitudes');
      expect(map['notes'], 'Study this passage for Sunday sermon.');
      // created_at stored as Unix milliseconds.
      expect(map['created_at'], 1_700_000_000_000);
    });

    test('toMap omits id when id is null', () {
      final bm = _makeBookmark(); // id defaults to null
      final map = bm.toMap();
      // The 'id' key must be absent so SQLite AUTOINCREMENT assigns a new key.
      expect(map.containsKey('id'), isFalse);
    });

    test('fromMap round-trips all fields', () {
      // Serialise then deserialise and verify every field survives intact.
      final map = fullBookmark.toMap();
      final restored = Bookmark.fromMap(map);

      expect(restored.id, fullBookmark.id);
      expect(restored.bookCode, fullBookmark.bookCode);
      expect(restored.bookSortOrder, fullBookmark.bookSortOrder);
      expect(restored.chapter, fullBookmark.chapter);
      expect(restored.verse, fullBookmark.verse);
      expect(restored.verseEnd, fullBookmark.verseEnd);
      expect(restored.verseText, fullBookmark.verseText);
      expect(restored.label, fullBookmark.label);
      expect(restored.notes, fullBookmark.notes);
      expect(
        restored.createdAt.millisecondsSinceEpoch,
        fullBookmark.createdAt.millisecondsSinceEpoch,
      );
    });

    test('fromMap handles nullable fields that are null', () {
      // All optional fields absent from the map — should deserialise to null.
      final map = {
        'id': 1,
        'book_code': 'REV',
        'book_sort_order': 66,
        'chapter': 22,
        'verse': '21',
        'verse_end': null,
        'verse_text': null,
        'label': null,
        'notes': null,
        'created_at': 0,
      };
      final bm = Bookmark.fromMap(map);
      expect(bm.verseEnd, isNull);
      expect(bm.verseText, isNull);
      expect(bm.label, isNull);
      expect(bm.notes, isNull);
    });

    test('reference getter returns book:chapter:verse string', () {
      final bm = _makeBookmark(bookCode: 'PSA', chapter: 23, verse: '1');
      expect(bm.reference, 'PSA 23:1');
    });

    test('reference getter returns book-space-chapter (no colon) for chapter-level bookmarks', () {
      // Chapter-level bookmarks use verse = '' (empty string). The reference
      // should be "GEN 1" (no colon, no trailing content) to distinguish them
      // from verse-level bookmarks.
      final bm = _makeBookmark(bookCode: 'GEN', chapter: 1, verse: '');
      expect(bm.reference, 'GEN 1');
    });

    test('reference getter includes verseEnd for a range', () {
      final bm = _makeBookmark(
        bookCode: 'PSA',
        chapter: 23,
        verse: '1',
        verseEnd: '3',
      );
      expect(bm.reference, 'PSA 23:1-3');
    });

    test('copyWith replaces specified fields only', () {
      final updated = fullBookmark.copyWith(label: 'New label', chapter: 99);
      expect(updated.label, 'New label');
      expect(updated.chapter, 99);
      // Unchanged fields retain original values.
      expect(updated.bookCode, fullBookmark.bookCode);
      expect(updated.verse, fullBookmark.verse);
      expect(updated.id, fullBookmark.id);
    });

    test('copyWith(notes: ...) replaces notes field', () {
      // Verify that the notes field can be updated via copyWith while all
      // other fields remain unchanged.
      final updated = fullBookmark.copyWith(notes: 'Updated note');
      expect(updated.notes, 'Updated note');
      expect(updated.label, fullBookmark.label);
      expect(updated.verse, fullBookmark.verse);
    });

    test('notes field round-trips through toMap/fromMap', () {
      // Create a bookmark with a non-null notes value, serialise, deserialise,
      // and confirm the notes string is preserved exactly.
      final bm = _makeBookmark(notes: 'Test note content');
      final map = bm.toMap();
      expect(map['notes'], 'Test note content');

      final restored = Bookmark.fromMap(map);
      expect(restored.notes, 'Test note content');
    });

    test('equality is based on id, bookCode, chapter, verse', () {
      // Two bookmarks with the same location but different label are equal.
      final a = fullBookmark;
      final b = fullBookmark.copyWith(label: 'Different label');
      expect(a, equals(b));
    });

    test('equality differs when verse changes', () {
      final a = _makeBookmark(verse: '1');
      final b = _makeBookmark(verse: '2');
      expect(a, isNot(equals(b)));
    });
  });

  // ---------------------------------------------------------------------------
  // Group 3 — CRUD (in-memory SQLite via sqflite_common_ffi)
  // ---------------------------------------------------------------------------

  group('UserDataService — CRUD', () {
    // Before each test: inject the in-memory path and open a fresh database.
    // The in-memory database is discarded when closeForTesting() is called
    // in tearDown, so every test starts with an empty bookmarks table.
    setUp(() async {
      UserDataService.testDbPath = inMemoryDatabasePath;
      await UserDataService.ensureOpen();
    });

    tearDown(() async {
      await UserDataService.closeForTesting();
      UserDataService.testDbPath = null;
    });

    // -- addBookmark --

    test('addBookmark returns a positive integer id', () async {
      final id = await UserDataService.addBookmark(_makeBookmark());
      expect(id, greaterThan(0));
    });

    test('addBookmark assigns unique ids to successive bookmarks', () async {
      final id1 = await UserDataService.addBookmark(_makeBookmark(verse: '1'));
      final id2 = await UserDataService.addBookmark(_makeBookmark(verse: '2'));
      expect(id1, isNot(equals(id2)));
    });

    test('addBookmark allows duplicate location (same verse twice)', () async {
      // The user is allowed to bookmark the same verse with different labels.
      final id1 = await UserDataService.addBookmark(
        _makeBookmark(label: 'First save'),
      );
      final id2 = await UserDataService.addBookmark(
        _makeBookmark(label: 'Second save'),
      );
      expect(id1, isNot(equals(id2)));
    });

    // -- getBookmarks (empty) --

    test('getBookmarks returns empty list when no bookmarks exist', () async {
      final all = await UserDataService.getBookmarks();
      expect(all, isEmpty);
    });

    // -- getBookmarks round-trip --

    test('getBookmarks returns saved bookmark with correct fields', () async {
      final original = _makeBookmark(
        bookCode: 'JHN',
        bookSortOrder: 43,
        chapter: 3,
        verse: '16',
        verseText: 'For God so loved the world...',
        label: 'Favourite verse',
        createdAt: DateTime.fromMillisecondsSinceEpoch(1_000_000_000_000),
      );
      final id = await UserDataService.addBookmark(original);

      final all = await UserDataService.getBookmarks();
      expect(all, hasLength(1));

      final fetched = all.first;
      expect(fetched.id, id);
      expect(fetched.bookCode, 'JHN');
      expect(fetched.bookSortOrder, 43);
      expect(fetched.chapter, 3);
      expect(fetched.verse, '16');
      expect(fetched.verseText, 'For God so loved the world...');
      expect(fetched.label, 'Favourite verse');
      expect(
        fetched.createdAt.millisecondsSinceEpoch,
        1_000_000_000_000,
      );
    });

    // -- getBookmarks sort order --

    test(
      'getBookmarks(sort: recentFirst) returns most recently added first',
      () async {
        // Add three bookmarks at different timestamps.
        final oldest = _makeBookmark(
          verse: '1',
          createdAt: DateTime.fromMillisecondsSinceEpoch(1000),
        );
        final middle = _makeBookmark(
          verse: '2',
          createdAt: DateTime.fromMillisecondsSinceEpoch(2000),
        );
        final newest = _makeBookmark(
          verse: '3',
          createdAt: DateTime.fromMillisecondsSinceEpoch(3000),
        );
        // Insert in non-chronological order to confirm sort is applied.
        await UserDataService.addBookmark(middle);
        await UserDataService.addBookmark(oldest);
        await UserDataService.addBookmark(newest);

        final results = await UserDataService.getBookmarks(
          sort: BookmarkSortOrder.recentFirst,
        );

        expect(results, hasLength(3));
        // Most recent (3000 ms) first.
        expect(results[0].verse, '3');
        expect(results[1].verse, '2');
        expect(results[2].verse, '1');
      },
    );

    test(
      'getBookmarks(sort: canonicalOrder) returns Genesis before Revelation',
      () async {
        // Add bookmarks for Revelation and Genesis (out of canonical order).
        final revelation = _makeBookmark(
          bookCode: 'REV',
          bookSortOrder: 66,
          chapter: 22,
          verse: '21',
          createdAt: DateTime.fromMillisecondsSinceEpoch(1000),
        );
        final genesis = _makeBookmark(
          bookCode: 'GEN',
          bookSortOrder: 1,
          chapter: 1,
          verse: '1',
          createdAt: DateTime.fromMillisecondsSinceEpoch(2000),
        );
        final psalms = _makeBookmark(
          bookCode: 'PSA',
          bookSortOrder: 19,
          chapter: 23,
          verse: '1',
          createdAt: DateTime.fromMillisecondsSinceEpoch(500),
        );

        // Insert in reverse canonical order.
        await UserDataService.addBookmark(revelation);
        await UserDataService.addBookmark(psalms);
        await UserDataService.addBookmark(genesis);

        final results = await UserDataService.getBookmarks(
          sort: BookmarkSortOrder.canonicalOrder,
        );

        expect(results, hasLength(3));
        // Canonical order: Genesis (1) → Psalms (19) → Revelation (66).
        expect(results[0].bookCode, 'GEN');
        expect(results[1].bookCode, 'PSA');
        expect(results[2].bookCode, 'REV');
      },
    );

    test(
      'getBookmarks(sort: canonicalOrder) sorts verses numerically not lexicographically',
      () async {
        // Regression test for PR #17 review comment: verse column is TEXT, so
        // a plain `verse ASC` ORDER BY would sort lexicographically and place
        // "10" before "2". The fix uses CAST(verse AS INTEGER) as the primary
        // verse sort key so numeric order is preserved.
        final verse1 = _makeBookmark(
          bookCode: 'PSA',
          bookSortOrder: 19,
          chapter: 1,
          verse: '1',
          createdAt: DateTime.fromMillisecondsSinceEpoch(1000),
        );
        final verse2 = _makeBookmark(
          bookCode: 'PSA',
          bookSortOrder: 19,
          chapter: 1,
          verse: '2',
          createdAt: DateTime.fromMillisecondsSinceEpoch(2000),
        );
        final verse10 = _makeBookmark(
          bookCode: 'PSA',
          bookSortOrder: 19,
          chapter: 1,
          verse: '10',
          createdAt: DateTime.fromMillisecondsSinceEpoch(3000),
        );

        // Insert in reverse canonical order to confirm sort is not insertion-order.
        await UserDataService.addBookmark(verse10);
        await UserDataService.addBookmark(verse2);
        await UserDataService.addBookmark(verse1);

        final results = await UserDataService.getBookmarks(
          sort: BookmarkSortOrder.canonicalOrder,
        );

        expect(results, hasLength(3));
        // Must be 1, 2, 10 — NOT 1, 10, 2 (lexicographic text order).
        expect(results[0].verse, '1');
        expect(results[1].verse, '2');
        expect(results[2].verse, '10');
      },
    );

    // -- removeBookmark --

    test('removeBookmark removes the bookmark from the database', () async {
      final id = await UserDataService.addBookmark(_makeBookmark());
      expect(await UserDataService.getBookmarks(), hasLength(1));

      await UserDataService.removeBookmark(id);
      expect(await UserDataService.getBookmarks(), isEmpty);
    });

    test('removeBookmark with non-existent id does not throw', () async {
      // The database is empty; removing id 999 should be a silent no-op.
      await expectLater(
        UserDataService.removeBookmark(999),
        completes,
      );
    });

    test('removeBookmark only removes the targeted bookmark', () async {
      final id1 = await UserDataService.addBookmark(_makeBookmark(verse: '1'));
      final id2 = await UserDataService.addBookmark(_makeBookmark(verse: '2'));

      await UserDataService.removeBookmark(id1);

      final remaining = await UserDataService.getBookmarks();
      expect(remaining, hasLength(1));
      expect(remaining.first.id, id2);
    });

    // -- isBookmarked --

    test('isBookmarked returns false when no bookmarks exist', () async {
      final result = await UserDataService.isBookmarked('GEN', 1, '1');
      expect(result, isFalse);
    });

    test('isBookmarked returns true after adding a bookmark', () async {
      await UserDataService.addBookmark(
        _makeBookmark(bookCode: 'GEN', chapter: 1, verse: '1'),
      );
      final result = await UserDataService.isBookmarked('GEN', 1, '1');
      expect(result, isTrue);
    });

    test('isBookmarked returns false for a different verse', () async {
      await UserDataService.addBookmark(
        _makeBookmark(bookCode: 'GEN', chapter: 1, verse: '1'),
      );
      // Verse '2' was not bookmarked.
      final result = await UserDataService.isBookmarked('GEN', 1, '2');
      expect(result, isFalse);
    });

    test('isBookmarked returns false after the bookmark is removed', () async {
      final id = await UserDataService.addBookmark(
        _makeBookmark(bookCode: 'GEN', chapter: 1, verse: '1'),
      );
      await UserDataService.removeBookmark(id);

      final result = await UserDataService.isBookmarked('GEN', 1, '1');
      expect(result, isFalse);
    });

    test(
      'isBookmarked returns true when multiple bookmarks exist for same verse',
      () async {
        // The user bookmarked the same verse twice with different labels.
        await UserDataService.addBookmark(
          _makeBookmark(bookCode: 'GEN', chapter: 1, verse: '1', label: 'A'),
        );
        await UserDataService.addBookmark(
          _makeBookmark(bookCode: 'GEN', chapter: 1, verse: '1', label: 'B'),
        );
        final result = await UserDataService.isBookmarked('GEN', 1, '1');
        expect(result, isTrue);
      },
    );

    // -- edge cases --

    test('verse stored as string survives segment identifiers like "1a"', () async {
      await UserDataService.addBookmark(
        _makeBookmark(bookCode: 'ISA', bookSortOrder: 23, chapter: 38, verse: '1a'),
      );
      final result = await UserDataService.isBookmarked('ISA', 38, '1a');
      expect(result, isTrue);
    });

    test('bookmark with null optional fields round-trips correctly', () async {
      final bm = Bookmark(
        bookCode: 'GEN',
        bookSortOrder: 1,
        chapter: 1,
        verse: '1',
        // verseEnd, verseText, label, and notes all omitted (null).
        createdAt: DateTime.fromMillisecondsSinceEpoch(0),
      );
      final id = await UserDataService.addBookmark(bm);

      final all = await UserDataService.getBookmarks();
      final fetched = all.firstWhere((b) => b.id == id);
      expect(fetched.verseEnd, isNull);
      expect(fetched.verseText, isNull);
      expect(fetched.label, isNull);
      expect(fetched.notes, isNull);
    });

    // -- notes field --

    test('notes field round-trips through the database', () async {
      // Save a bookmark that has a non-null notes value, then reload and verify.
      final bm = _makeBookmark(notes: 'A persistent study note');
      final id = await UserDataService.addBookmark(bm);

      final all = await UserDataService.getBookmarks();
      final fetched = all.firstWhere((b) => b.id == id);
      expect(fetched.notes, 'A persistent study note');
    });

    // -- getBookmarkedVerses --

    test('getBookmarkedVerses returns empty set when chapter has no bookmarks',
        () async {
      // No bookmarks added — result should be an empty set.
      final set = await UserDataService.getBookmarkedVerses('GEN', 1);
      expect(set, isEmpty);
    });

    test('getBookmarkedVerses returns correct verse IDs for a chapter',
        () async {
      // Add two verse-level bookmarks in GEN 1.
      await UserDataService.addBookmark(
          _makeBookmark(bookCode: 'GEN', chapter: 1, verse: '1'));
      await UserDataService.addBookmark(
          _makeBookmark(bookCode: 'GEN', chapter: 1, verse: '3'));
      // Add a bookmark in a different chapter — must not appear.
      await UserDataService.addBookmark(
          _makeBookmark(bookCode: 'GEN', chapter: 2, verse: '5'));

      final set = await UserDataService.getBookmarkedVerses('GEN', 1);
      expect(set, containsAll(['1', '3']));
      expect(set, isNot(contains('5')));
      expect(set.length, 2);
    });

    test('getBookmarkedVerses includes empty string for chapter-level bookmarks',
        () async {
      // A chapter-level bookmark has verse = ''. The set must include ''.
      await UserDataService.addBookmark(
          _makeBookmark(bookCode: 'MAT', chapter: 5, verse: ''));
      // Also add a verse-level bookmark in the same chapter.
      await UserDataService.addBookmark(
          _makeBookmark(bookCode: 'MAT', chapter: 5, verse: '3'));

      final set = await UserDataService.getBookmarkedVerses('MAT', 5);
      expect(set, contains(''));   // chapter-level
      expect(set, contains('3'));  // verse-level
    });

    test('getBookmarkedVerses deduplicates when same verse bookmarked twice',
        () async {
      // A verse bookmarked twice with different labels still appears once.
      await UserDataService.addBookmark(
          _makeBookmark(bookCode: 'GEN', chapter: 1, verse: '1', label: 'A'));
      await UserDataService.addBookmark(
          _makeBookmark(bookCode: 'GEN', chapter: 1, verse: '1', label: 'B'));

      final set = await UserDataService.getBookmarkedVerses('GEN', 1);
      expect(set, contains('1'));
      // Set deduplication means the verse appears only once.
      expect(set.length, 1);
    });
  });
}
