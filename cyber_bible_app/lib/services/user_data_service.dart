/// The primary data-access layer for user-generated content.
///
/// [UserDataService] manages all data that belongs to the user rather than to
/// a Bible translation — bookmarks, and in later phases, notes and highlights.
/// It stores everything in a single SQLite file (`user_data.db`) in the app's
/// writable documents directory, completely separate from the read-only Bible
/// databases.
///
/// ## Usage
///
/// Always call and await [UserDataService.ensureOpen] before making any
/// queries.  A convenient place to call this is alongside
/// [BibleService.ensureOpen] in the app startup sequence.
///
/// ```dart
/// await Future.wait([
///   BibleService.ensureOpen(),
///   UserDataService.ensureOpen(),
/// ]);
/// ```
///
/// After that, all methods are safe to call from any widget or screen:
///
/// ```dart
/// final id = await UserDataService.addBookmark(bookmark);
/// final all = await UserDataService.getBookmarks();
/// final pinned = await UserDataService.isBookmarked('GEN', 1, '1');
/// await UserDataService.removeBookmark(id);
/// ```
///
/// ## Platform differences (hidden by this file)
///
/// | Platform | SQLite backend | Path |
/// |----------|----------------|------|
/// | Native (Android, iOS, Windows, macOS, Linux) | sqflite platform plugin | `getApplicationDocumentsDirectory()/user_data.db` |
/// | Flutter Web | sqflite_common_ffi_web (WASM + IndexedDB) | `'user_data.db'` key in IndexedDB |
///
/// The conditional import at the bottom of the import block selects the
/// correct platform setup function at compile time.
///
/// ## Schema versioning
///
/// The database is opened with `version: 1`. When future steps add columns or
/// tables, increment `_schemaVersion` and add migration code to [_upgradeSchema].
///
/// ## Concurrent safety
///
/// The static [_openFuture] guard ensures that concurrent calls to
/// [ensureOpen] all await the same in-flight open operation instead of opening
/// the database multiple times.
library;

import 'package:flutter/foundation.dart' show kIsWeb, visibleForTesting;
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart'
    show getApplicationDocumentsDirectory;
import 'package:sqflite/sqflite.dart';

// Conditional import: selects the web factory-setup implementation on
// Flutter Web (dart.library.io absent) and a no-op stub on native platforms.
// The imported symbol is [platformSetupUserDatabaseFactory].
import 'user_data_service_web.dart'
    if (dart.library.io) 'user_data_service_io.dart' as platform_impl;

import '../models/bookmark.dart';

/// Manages user-generated content (bookmarks) in a writable SQLite database.
///
/// All members are static — this class is never instantiated.  Use the
/// static API directly: [ensureOpen], [addBookmark], [removeBookmark],
/// [getBookmarks], [isBookmarked].
class UserDataService {
  // Prevent instantiation — this is a pure static service.
  UserDataService._();

  // ---------------------------------------------------------------------------
  // Schema constants
  // ---------------------------------------------------------------------------

  /// Name of the SQLite file on disk (and the IndexedDB key on web).
  static const String _dbFilename = 'user_data.db';

  /// Current schema version.
  ///
  /// Increment this when adding or changing tables / columns, and add the
  /// corresponding migration logic to [_upgradeSchema].
  static const int _schemaVersion = 1;

  /// SQL statement that creates the `bookmarks` table on a fresh install.
  ///
  /// Column notes:
  ///   - `id`              — auto-assigned primary key; never reused.
  ///   - `book_code`       — USFX 3-letter book code (e.g. "GEN").
  ///   - `book_sort_order` — denormalised from `books.sort_order`; avoids a
  ///                         cross-DB JOIN when querying in canonical order.
  ///   - `chapter`         — 1-based chapter number.
  ///   - `verse`           — string to handle "1a", "1-2" etc.
  ///   - `verse_end`       — nullable; reserved for Phase 8 verse-range highlights.
  ///   - `verse_text`      — plain-text snapshot for list preview; nullable.
  ///   - `label`           — optional user-written title; nullable.
  ///   - `created_at`      — Unix milliseconds; used for most-recent-first sort.
  static const String _createBookmarksTable = '''
    CREATE TABLE IF NOT EXISTS bookmarks (
      id              INTEGER PRIMARY KEY AUTOINCREMENT,
      book_code       TEXT    NOT NULL,
      book_sort_order INTEGER NOT NULL,
      chapter         INTEGER NOT NULL,
      verse           TEXT    NOT NULL,
      verse_end       TEXT,
      verse_text      TEXT,
      label           TEXT,
      created_at      INTEGER NOT NULL
    )
  ''';

  // ---------------------------------------------------------------------------
  // Singleton state
  // ---------------------------------------------------------------------------

  /// The open database handle. `null` before [ensureOpen] completes.
  static Database? _db;

  /// In-flight open future. Guards against concurrent [ensureOpen] calls.
  static Future<void>? _openFuture;

  // ---------------------------------------------------------------------------
  // Testing hooks
  // ---------------------------------------------------------------------------

  /// Override the database path used by [_doOpen] in tests.
  ///
  /// When set to `sqflite.inMemoryDatabasePath`, [_doOpen] creates a fresh
  /// in-memory database instead of using the real on-disk path from
  /// `path_provider`.  Set this before calling [ensureOpen] in your test's
  /// `setUp`, and clear it in `tearDown`.
  ///
  /// Never set this in production code.
  @visibleForTesting
  static String? testDbPath;

  /// Closes the database and resets all singleton state.
  ///
  /// Call this in test `tearDown` blocks to ensure each test starts with a
  /// fresh, empty database.  Has no effect if the database is not open.
  ///
  /// Never call this in production code.
  @visibleForTesting
  static Future<void> closeForTesting() async {
    await _db?.close();
    _db = null;
    _openFuture = null;
  }

  // ---------------------------------------------------------------------------
  // Lifecycle
  // ---------------------------------------------------------------------------

  /// Opens (or creates) the user-data database.
  ///
  /// Safe to call multiple times — only the first call does real work; all
  /// subsequent callers await the same in-flight future.  Also safe to call
  /// concurrently from multiple isolate entries or `initState` callbacks.
  ///
  /// If the open fails, [_openFuture] is reset to `null` so that a later call
  /// can retry.
  static Future<void> ensureOpen() {
    // Fast path: database is already open.
    if (_db != null) return Future.value();

    // Slow path: start one open future and share it among all callers.
    // The whenComplete guard resets _openFuture to null on failure so that
    // the next ensureOpen() call will retry instead of returning a failed future.
    _openFuture ??= _doOpen().whenComplete(() {
      if (_db == null) _openFuture = null;
    });
    return _openFuture!;
  }

  /// Internal: opens or creates `user_data.db` and stores the handle in [_db].
  static Future<void> _doOpen() async {
    // 1. Set the platform-appropriate sqflite factory.
    //    - Web: redirects to sqflite_common_ffi_web (WASM + IndexedDB).
    //    - Native: no-op; sqflite uses the native factory by default.
    await platform_impl.platformSetupUserDatabaseFactory();

    // 2. Resolve the database path.
    //    - testDbPath: in-memory path injected by unit tests.
    //    - Web:        filename used as the IndexedDB key.
    //    - Native:     full path inside the app's documents directory.
    final path = await _resolveDbPath();

    // 3. Open (or create) the database.
    //    - onCreate:  called once on a fresh install to create the schema.
    //    - onUpgrade: called when _schemaVersion is bumped in a future step.
    _db = await openDatabase(
      path,
      version: _schemaVersion,
      onCreate: _createSchema,
      onUpgrade: _upgradeSchema,
    );
  }

  /// Returns the platform-appropriate path for `user_data.db`.
  static Future<String> _resolveDbPath() async {
    // Test override: use the injected path (typically inMemoryDatabasePath).
    if (testDbPath != null) return testDbPath!;

    // Web: the factory's "path" is the IndexedDB storage key, not a file path.
    if (kIsWeb) return _dbFilename;

    // Native: store next to any future downloaded Bible databases, in the
    // app's documents directory (survives app updates on all platforms).
    final dir = await getApplicationDocumentsDirectory();
    return p.join(dir.path, _dbFilename);
  }

  /// Creates the full database schema on a fresh install (version 0 → 1).
  ///
  /// Called by sqflite's `onCreate` callback the first time the database file
  /// is created.  Creates the `bookmarks` table and its two indexes.
  static Future<void> _createSchema(Database db, int version) async {
    // Create the bookmarks table.
    await db.execute(_createBookmarksTable);

    // Index 1: support the default [BookmarkSortOrder.recentFirst] sort.
    // Querying most-recent-first is the common case; this index avoids a
    // full table scan.
    await db.execute(
      'CREATE INDEX IF NOT EXISTS idx_bm_created '
      'ON bookmarks(created_at DESC)',
    );

    // Index 2: support [BookmarkSortOrder.canonicalOrder] sort.
    // Sorting by book position then chapter then verse without scanning the
    // whole table.
    await db.execute(
      'CREATE INDEX IF NOT EXISTS idx_bm_canonical '
      'ON bookmarks(book_sort_order ASC, chapter ASC, verse ASC)',
    );
  }

  /// Migrates the schema when the app is updated with a new [_schemaVersion].
  ///
  /// Currently a no-op because [_schemaVersion] is 1 and [_createSchema]
  /// handles all fresh installs.  Add `ALTER TABLE` / `CREATE TABLE` statements
  /// here in future steps, guarded by `if (oldVersion < N)` checks.
  static Future<void> _upgradeSchema(
    Database db,
    int oldVersion,
    int newVersion,
  ) async {
    // No migrations needed for version 1.
    // Example for a future version 2:
    //   if (oldVersion < 2) {
    //     await db.execute('ALTER TABLE bookmarks ADD COLUMN color INTEGER');
    //   }
  }

  // ---------------------------------------------------------------------------
  // Internal database accessor
  // ---------------------------------------------------------------------------

  /// Returns the open database, throwing a [StateError] if [ensureOpen] has
  /// not been called.
  ///
  /// All public methods call this getter before executing any SQL so that the
  /// error is clear and actionable.
  static Database get _database {
    if (_db == null) {
      throw StateError(
        'UserDataService: database is not open. '
        'Call and await UserDataService.ensureOpen() before using this service.',
      );
    }
    return _db!;
  }

  // ---------------------------------------------------------------------------
  // Public CRUD API
  // ---------------------------------------------------------------------------

  /// Saves [bookmark] to the database and returns the auto-assigned id.
  ///
  /// The [bookmark]'s [Bookmark.id] should be `null` — SQLite AUTOINCREMENT
  /// will assign a new unique id.  The returned [int] is that id; use it with
  /// [removeBookmark] if you need to delete the bookmark immediately.
  ///
  /// Duplicate bookmarks (same book, chapter, verse) are allowed — the user
  /// may want to save the same verse with different [Bookmark.label] values.
  ///
  /// Throws [StateError] if [ensureOpen] has not been called.
  static Future<int> addBookmark(Bookmark bookmark) async {
    return _database.insert('bookmarks', bookmark.toMap());
  }

  /// Deletes the bookmark with the given [id] from the database.
  ///
  /// If no bookmark with [id] exists, this is a no-op (no error is thrown).
  ///
  /// Throws [StateError] if [ensureOpen] has not been called.
  static Future<void> removeBookmark(int id) async {
    await _database.delete(
      'bookmarks',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  /// Returns all saved bookmarks in the requested order.
  ///
  /// [sort] controls the order:
  ///   - [BookmarkSortOrder.recentFirst] (default) — most recently added first.
  ///   - [BookmarkSortOrder.canonicalOrder] — Genesis through Revelation.
  ///
  /// Returns an empty list when no bookmarks have been saved.
  ///
  /// Throws [StateError] if [ensureOpen] has not been called.
  static Future<List<Bookmark>> getBookmarks({
    BookmarkSortOrder sort = BookmarkSortOrder.recentFirst,
  }) async {
    // Map the sort enum to the corresponding SQL ORDER BY clause.
    // Both clauses match an existing index (see [_createSchema]), so queries
    // are O(log n) on the index rather than a full table scan.
    final orderBy = switch (sort) {
      BookmarkSortOrder.recentFirst => 'created_at DESC',
      BookmarkSortOrder.canonicalOrder =>
        'book_sort_order ASC, chapter ASC, verse ASC',
    };

    final rows = await _database.query('bookmarks', orderBy: orderBy);
    return rows.map(Bookmark.fromMap).toList();
  }

  /// Returns `true` if there is at least one bookmark at the given location.
  ///
  /// [bookCode] — 3-letter USFX book code (e.g. `"GEN"`).
  /// [chapter]  — 1-based chapter number.
  /// [verse]    — verse identifier string (e.g. `"1"`, `"1a"`, `"1-2"`).
  ///
  /// Used by the reading screen to decide whether to show a filled or
  /// outlined bookmark icon next to the current verse.
  ///
  /// Throws [StateError] if [ensureOpen] has not been called.
  static Future<bool> isBookmarked(
    String bookCode,
    int chapter,
    String verse,
  ) async {
    // SELECT only the id column (minimal data) and limit to 1 row.
    // We only care whether at least one row exists, not how many.
    final rows = await _database.query(
      'bookmarks',
      columns: ['id'],
      where: 'book_code = ? AND chapter = ? AND verse = ?',
      whereArgs: [bookCode, chapter, verse],
      limit: 1,
    );
    return rows.isNotEmpty;
  }
}
