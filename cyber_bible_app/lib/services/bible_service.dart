/// The primary data-access layer for Bible content.
///
/// [BibleService] is the single class that all screens and features use to
/// read from a Bible translation database. It hides the platform differences
/// (native file-based SQLite vs. web in-memory SQLite) behind a clean,
/// platform-neutral API.
///
/// ## How it works
///
/// On **native platforms** (Android, iOS, Windows, macOS, Linux):
///   - The [BibleSetupService.ensureReady] call in `main()` has already copied
///     the bundled `eng-web.db` asset to the app's writable support directory.
///   - [BibleService] opens that file via the standard `sqflite` `openDatabase`
///     function.
///
/// On **Flutter Web**:
///   - There is no writable file system. `sqflite_common_ffi_web` is used
///     instead, backed by a SQLite WebAssembly build.
///   - The bundled asset bytes are loaded from `rootBundle` on every cold
///     page load and placed into an `InMemoryFileSystem` VFS so that sqflite
///     can open them as if they were a normal file.
///   - **Known limitation:** Because the database lives in memory, data is lost
///     on every page reload. This is intentional for Phase 1 (it keeps the
///     implementation simple while still allowing web testing). A persistent
///     IndexedDB-backed implementation will be added in Phase 3.2 when the
///     full Bible library download infrastructure is built.
///
/// ## Usage
///
/// Call [BibleService.ensureOpen] once (or ensure [BibleSetupService.ensureReady]
/// has run, which triggers the web setup automatically). Then call any of the
/// read methods:
///
/// ```dart
/// await BibleService.ensureOpen();
/// final books = await BibleService.getBooks();
/// final chapters = await BibleService.getChapters('GEN');
/// final chapter = await BibleService.getChapter('GEN', 1);
/// final verses = await BibleService.getVerses('GEN', 1);
/// final info = await BibleService.getBibleInfo();
/// ```
///
/// ## Conditional imports
///
/// Like [BibleSetupService], this file uses a conditional import to select the
/// correct implementation at compile time, keeping `dart:io` out of the web
/// build and web-only packages out of native builds.
library;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:sqflite/sqflite.dart';

// Conditional import: selects the sqflite_common_ffi_web implementation on
// Flutter Web (when dart.library.io is absent) and the thin native stub on
// all other platforms (where BibleService handles opening directly).
//
// The web file (bible_service_web.dart) imports sqflite_common_ffi_web and
// sqlite3/wasm — packages that must not appear in native builds because they
// reference browser-only APIs. Confining them to this conditionally-imported
// file keeps the native build clean.
import 'bible_service_web.dart'
    if (dart.library.io) 'bible_service_io.dart' as platform_impl;

import '../models/bible_info.dart';
import '../models/book.dart';
import '../models/chapter.dart';
import '../models/verse.dart';
import 'bible_setup_service.dart';

/// Provides read-only access to a Bible translation SQLite database.
///
/// All methods are static and async. Call [ensureOpen] before the first
/// query, or rely on [BibleSetupService.ensureReady] in `main()` having
/// already prepared the platform-specific database path/handle.
class BibleService {
  // ---------------------------------------------------------------------------
  // Constants
  // ---------------------------------------------------------------------------

  /// Asset path of the bundled Bible database (used on web to load bytes).
  static const String _assetPath = 'assets/bibles/eng-web.db';

  // ---------------------------------------------------------------------------
  // State
  // ---------------------------------------------------------------------------

  /// The open sqflite [Database] instance, or null before [ensureOpen] runs.
  ///
  /// Opened once on first use and kept open for the lifetime of the app session
  /// (lazy singleton pattern). sqflite handles thread-safety internally.
  static Database? _db;

  // ---------------------------------------------------------------------------
  // Lifecycle
  // ---------------------------------------------------------------------------

  /// Opens the Bible database if it is not already open.
  ///
  /// On native platforms this reads the path from [BibleSetupService.dbPath]
  /// (which requires [BibleSetupService.ensureReady] to have completed first).
  /// On web it delegates to the platform-specific implementation which loads
  /// the asset bytes and sets up the in-memory SQLite database.
  ///
  /// Safe to call multiple times — only opens the database once.
  static Future<void> ensureOpen() async {
    // Already open — nothing to do.
    if (_db != null) return;

    if (kIsWeb) {
      // Delegate to the web implementation. It loads the .db asset bytes into
      // an InMemoryFileSystem VFS and returns an open sqflite Database handle.
      // This takes 1–2 seconds on first call due to the 28.9 MB asset load.
      _db = await platform_impl.platformOpenDatabase(_assetPath);
    } else {
      // On native platforms, the database file is already on disk (copied by
      // BibleSetupService.ensureReady in main()). Open it as a read-only
      // single-instance database for efficiency.
      _db = await openReadOnlyDatabase(
        BibleSetupService.dbPath,
        singleInstance: true,
      );
    }
  }

  /// Returns the open database. Throws a [StateError] if [ensureOpen] has not
  /// been called and completed successfully.
  ///
  /// Used internally by all query methods to access the database handle.
  static Database get _database {
    if (_db == null) {
      throw StateError(
        'BibleService: database not open. '
        'Call and await BibleService.ensureOpen() before querying.',
      );
    }
    return _db!;
  }

  // ---------------------------------------------------------------------------
  // Public query API
  // ---------------------------------------------------------------------------

  /// Returns metadata about this Bible translation.
  ///
  /// Reads the single row in the `bible_info` table (there is always exactly
  /// one row per database). Returns null if the table is somehow empty, which
  /// should not happen with a valid Bible database.
  static Future<BibleInfo?> getBibleInfo() async {
    final rows = await _database.query('bible_info', limit: 1);
    if (rows.isEmpty) return null;
    return BibleInfo.fromMap(rows.first);
  }

  /// Returns all books in this Bible translation, ordered by canonical sort order.
  ///
  /// Each [Book] contains the book code, testament, display names, and chapter
  /// count — everything needed to build a book-selection screen.
  ///
  /// The returned list is ordered by [Book.sortOrder] (ascending), which follows
  /// the canonical Bible book order as stored in the `books` table.
  static Future<List<Book>> getBooks() async {
    final rows = await _database.query(
      'books',
      orderBy: 'sort_order ASC',
    );
    return rows.map(Book.fromMap).toList();
  }

  /// Returns the chapter numbers available for the given book.
  ///
  /// [bookCode] is the 3-letter USFX/Paratext identifier, e.g. "GEN", "MAT".
  ///
  /// Returns a list of integers in ascending order. For most books this is
  /// simply [1, 2, 3, ..., N]. Only the numbers are returned (not full
  /// Chapter objects with USFX content) because chapter-list screens only need
  /// numbers to draw a grid of buttons — loading full USFX for all chapters
  /// would fetch potentially megabytes of XML that won't be used.
  static Future<List<int>> getChapters(String bookCode) async {
    final rows = await _database.query(
      'chapters',
      columns: ['number'],
      where: 'book_code = ?',
      whereArgs: [bookCode],
      orderBy: 'number ASC',
    );
    return rows.map((row) => row['number'] as int).toList();
  }

  /// Returns the full content of a single chapter, including raw USFX XML.
  ///
  /// [bookCode] is the 3-letter USFX/Paratext book identifier, e.g. "GEN".
  /// [chapterNumber] is the 1-based chapter number.
  ///
  /// Returns null if the requested chapter does not exist in this translation
  /// (e.g. a New-Testament-only translation queried for an OT chapter).
  ///
  /// The [Chapter.contentUsfx] field contains the raw USFX XML fragment for
  /// the chapter, which the rendering layer will convert to HTML at display
  /// time. This field can be 10–100 KB; avoid loading many chapters at once.
  static Future<Chapter?> getChapter(
    String bookCode,
    int chapterNumber,
  ) async {
    final rows = await _database.query(
      'chapters',
      where: 'book_code = ? AND number = ?',
      whereArgs: [bookCode, chapterNumber],
      limit: 1,
    );
    if (rows.isEmpty) return null;
    return Chapter.fromMap(rows.first);
  }

  /// Returns all verses for a given chapter as plain-text records.
  ///
  /// [bookCode] is the 3-letter USFX/Paratext book identifier, e.g. "GEN".
  /// [chapterNumber] is the 1-based chapter number.
  ///
  /// Each [Verse] contains the verse identifier (a string to handle non-integer
  /// verses like "1a", "1-2") and the plain text stripped of all markup.
  /// Verses are returned in the order they appear in the database (which
  /// matches canonical verse order as stored by the build tool).
  ///
  /// Note: for rich formatted display of a chapter, prefer [getChapter] which
  /// returns the full USFX XML. The [getVerses] method is primarily useful for
  /// search highlighting and verse-list display.
  static Future<List<Verse>> getVerses(
    String bookCode,
    int chapterNumber,
  ) async {
    final rows = await _database.query(
      'verses',
      where: 'book_code = ? AND chapter = ?',
      whereArgs: [bookCode, chapterNumber],
    );
    return rows.map(Verse.fromMap).toList();
  }
}
