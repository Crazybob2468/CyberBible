/// Flutter Web implementation of [BibleService] database opening.
///
/// This file is selected at compile time by the conditional import in
/// `bible_service.dart` when `dart.library.io` is NOT available — i.e., on
/// Flutter Web. It must **never** be imported directly; always use the
/// conditional import pattern in `bible_service.dart`.
///
/// ## How web SQLite works here
///
/// The browser has no real file system that SQLite can open directly. Instead:
///   1. We load the bundled `eng-web.db` asset as raw bytes via `rootBundle`.
///   2. We create an [InMemoryFileSystem] (from package:sqlite3) and pre-seed
///      it with those bytes by writing directly to its [fileData] map.
///   3. We load the sqlite3 WebAssembly binary from the `sqlite3.wasm` file
///      placed in `web/` by `dart run sqflite_common_ffi_web:setup`, and
///      register our in-memory VFS with the resulting [WasmSqlite3] instance.
///   4. We point the global `databaseFactory` at `databaseFactoryFfiWeb` so
///      that the sqflite API routes through the wasm layer.
///   5. We open the database by the same logical name and return the handle.
///   6. The result is a standard sqflite [Database] that BibleService uses
///      exactly like the native file-based one.
///
/// ## Known limitation: data is lost on page reload
///
/// Because the VFS lives in JavaScript heap memory, it is discarded when the
/// browser tab navigates or refreshes. The database is re-seeded from the
/// asset on every cold page load (~1–2 seconds). This is acceptable for
/// development testing during Phase 1.
///
/// A persistent IndexedDB-backed implementation will replace this in Phase 3.2
/// when the Bible library download/storage infrastructure is built for all
/// platforms.
library;

import 'package:flutter/services.dart' show rootBundle;
import 'package:sqflite/sqflite.dart' show Database, openReadOnlyDatabase;
import 'package:sqflite_common/sqflite.dart' show databaseFactory;
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart'
    show databaseFactoryFfiWeb;
import 'package:sqlite3/sqlite3.dart' show InMemoryFileSystem;
import 'package:sqlite3/wasm.dart' show WasmSqlite3;
import 'package:typed_data/typed_buffers.dart' show Uint8Buffer;

/// The logical VFS name given to our in-memory file system instance.
/// Must be unique — sqflite_common_ffi_web also registers its own VFS names,
/// so we use a project-specific prefix to avoid collisions.
const String _vfsName = 'cyber-bible-mem';

/// The filename under which the database is registered within the VFS.
/// Used both when writing bytes into fileData and when calling openDatabase.
const String _dbName = 'eng-web.db';

/// Opens the Bible database on Flutter Web.
///
/// [assetPath] is the Flutter asset path of the bundled `.db` file,
/// e.g. `'assets/bibles/eng-web.db'`. The bytes are read from the app bundle
/// via [rootBundle.load] and seeded into an in-memory SQLite VFS so that
/// sqflite can open them as if they were a regular file.
///
/// Returns an open sqflite [Database] handle ready for queries.
/// The caller ([BibleService]) caches this for the lifetime of the page session.
Future<Database> platformOpenDatabase(String assetPath) async {
  // ── Step 1: Load asset bytes ───────────────────────────────────────────────
  // Read the bundled .db file from the Flutter asset bundle as raw bytes.
  // On web, assets are embedded in the compiled app bundle.
  final byteData = await rootBundle.load(assetPath);
  final bytes = byteData.buffer.asUint8List(
    byteData.offsetInBytes,
    byteData.lengthInBytes,
  );

  // ── Step 2: Build an in-memory VFS pre-seeded with the database bytes ──────
  // InMemoryFileSystem is a VirtualFileSystem implementation from package:sqlite3
  // that stores file content in a Dart Map (heap memory). sqlite3 WASM can
  // open files through this VFS as if they were on a real file system.
  //
  // fileData is Map<String, Uint8Buffer?> — we write our bytes as a Uint8Buffer
  // so that when sqlite3 opens _dbName through this VFS it finds them.
  final vfs = InMemoryFileSystem(name: _vfsName);

  // Convert the Uint8List to a Uint8Buffer (the type InMemoryFileSystem uses
  // internally). Uint8Buffer is a growable buffer backed by a Uint8List.
  final buffer = Uint8Buffer()..addAll(bytes);
  vfs.fileData[_dbName] = buffer;

  // ── Step 3: Load the sqlite3 WebAssembly module ───────────────────────────
  // sqlite3.wasm was placed in web/ by `dart run sqflite_common_ffi_web:setup`.
  // WasmSqlite3.loadFromUrl fetches and compiles it, returning an instance we
  // can register VFS implementations on.
  final sqlite3Wasm = await WasmSqlite3.loadFromUrl(
    Uri.parse('sqlite3.wasm'),
  );

  // ── Step 4: Register our in-memory VFS with the wasm sqlite3 instance ─────
  // makeDefault: false — we reference this VFS explicitly by name when opening,
  // so we don't disturb whatever default VFS sqflite_common_ffi_web uses for
  // newly-created (empty) databases in other parts of the app.
  sqlite3Wasm.registerVirtualFileSystem(vfs, makeDefault: false);

  // ── Step 5: Redirect the global sqflite factory to the web ffi factory ────
  // The sqflite package uses a global `databaseFactory` variable. On native it
  // defaults to the platform-channel-based factory; on web we must replace it
  // with databaseFactoryFfiWeb so all openDatabase calls route through our
  // wasm layer. This is intentionally done here rather than in main.dart so
  // that the web-only imports stay confined to this file.
  databaseFactory = databaseFactoryFfiWeb;

  // ── Step 6: Open the database through sqflite ─────────────────────────────
  // openReadOnlyDatabase builds on the factory set above. The VFS named
  // _vfsName will intercept the open call for _dbName and return our
  // pre-seeded in-memory bytes.
  //
  // We open with singleInstance: true so that if ensureOpen() is somehow
  // called concurrently, sqflite returns the same handle rather than
  // opening a second copy.
  final db = await openReadOnlyDatabase(
    _dbName,
    singleInstance: true,
  );

  return db;
}
