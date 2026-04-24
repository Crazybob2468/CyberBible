/// Native (dart:io) implementation of [BibleService] database opening.
///
/// This file is selected at compile time by the conditional import in
/// `bible_service.dart` when `dart.library.io` is available — i.e., on
/// Android, iOS, Windows, macOS, and Linux. It must **never** be imported
/// directly; always go through the conditional import in `bible_service.dart`.
///
/// On native platforms the database is already a real file on disk (placed
/// there by [BibleSetupService] on first launch), so we simply open it via
/// the standard sqflite `openReadOnlyDatabase` function and return the handle.
/// The [BibleService] main file handles the actual `openReadOnlyDatabase` call
/// directly using the path from [BibleSetupService.dbPath], so this file only
/// exists to provide the [platformOpenDatabase] symbol expected by the
/// conditional import. It is intentionally thin.
library;

import 'package:sqflite/sqflite.dart';

/// Opens the Bible database from the path already prepared by
/// [BibleSetupService].
///
/// [assetPath] is not used on native — the file is already on disk. It is
/// accepted only so the function signature matches the web implementation.
///
/// Returns the open [Database] handle ready for queries.
Future<Database> platformOpenDatabase(String assetPath) async {
  // This function is called only when dart:io is available (native platforms).
  // The actual file path was determined by BibleSetupService.ensureReady()
  // and is accessed via BibleSetupService.dbPath. We import the service here
  // to get that path.
  //
  // Note: the BibleService main file also handles the native case directly
  // (calling openReadOnlyDatabase itself), so this implementation is only
  // reached if the conditional import selects this file AND kIsWeb is false.
  // In practice, the main file short-circuits before reaching this on native.
  // This stub ensures the symbol exists for the conditional import machinery.
  throw UnsupportedError(
    'platformOpenDatabase should not be called on native platforms. '
    'BibleService.ensureOpen() handles the native path directly.',
  );
}
