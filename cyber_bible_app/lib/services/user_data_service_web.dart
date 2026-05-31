/// Flutter Web implementation of [UserDataService] database factory setup.
///
/// This file is selected at compile time by the conditional import in
/// `user_data_service.dart` when `dart.library.io` is NOT available — i.e., on
/// Flutter Web.  It must **never** be imported directly; always go through the
/// conditional import in `user_data_service.dart`.
///
/// ## How web SQLite works here
///
/// The browser has no writable native file system, so sqflite's standard
/// file-based open cannot be used.  This file redirects the global sqflite
/// `databaseFactory` to `databaseFactoryFfiWebNoWebWorker`, which routes all
/// database operations through a WebAssembly sqlite3 build backed by
/// **IndexedDB** in the browser.
///
/// For the user-data database, unlike the Bible DB, there are no asset bytes
/// to seed.  After this function sets the factory, [UserDataService._doOpen]
/// calls sqflite's top-level `openDatabase('user_data.db', ...)` directly.
/// The factory creates the file in IndexedDB on first open and persists it
/// across page reloads automatically.
///
/// ## Shared factory with BibleService
///
/// Both [BibleService] and [UserDataService] redirect the same global factory
/// (`databaseFactory`).  Setting it to `databaseFactoryFfiWebNoWebWorker`
/// twice is idempotent and harmless.  Whichever service calls [ensureOpen]
/// first wins the assignment; the second call is a no-op.
///
/// ## Required web/ files
///
/// `sqflite_common_ffi_web` loads `web/sqlite3.wasm` automatically when the
/// factory initialises.  This file is generated once by:
///
///   dart run sqflite_common_ffi_web:setup
///
/// See `bible_service_web.dart` for the canonical comment on that setup step.
library;

import 'package:sqflite_common/sqflite.dart' show databaseFactory;
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart'
    show databaseFactoryFfiWebNoWebWorker;

/// Redirects the global sqflite factory to the WebAssembly / IndexedDB
/// backend for Flutter Web.
///
/// After this call, top-level sqflite functions such as `openDatabase` route
/// through the web factory.  The call is safe to make multiple times.
Future<void> platformSetupUserDatabaseFactory() async {
  // Redirect sqflite to the no-web-worker WASM factory. All subsequent
  // openDatabase calls will use IndexedDB-backed SQLite running in WASM.
  databaseFactory = databaseFactoryFfiWebNoWebWorker;
}
