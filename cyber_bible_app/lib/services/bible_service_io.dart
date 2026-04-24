/// Native-platform conditional-import stub for [BibleService] database opening.
///
/// This file is selected at compile time by the conditional import in
/// `bible_service.dart` when `dart.library.io` is available — i.e., on
/// Android, iOS, Windows, macOS, and Linux. It must **never** be imported
/// directly; always go through the conditional import in `bible_service.dart`.
///
/// **Important:** this file does NOT open the SQLite database itself.
/// The real native database-opening logic lives in [BibleService.ensureOpen],
/// which reads the on-disk path from [BibleSetupService.dbPath] and opens it
/// directly. This file exists only to provide the [platformOpenDatabase] symbol
/// required by the conditional import structure.
///
/// If [platformOpenDatabase] is somehow called on a native platform, it throws
/// an [UnsupportedError] to make the unexpected code path immediately visible
/// during development.
library;

import 'package:sqflite/sqflite.dart';

/// Stub that satisfies the conditional import contract for native platforms.
///
/// [assetPath] is accepted only to match the web implementation's signature.
///
/// Throws [UnsupportedError] if called, because [BibleService.ensureOpen]
/// handles native database opening directly and should never route here.
Future<Database> platformOpenDatabase(String assetPath) async {
  // BibleService.ensureOpen() opens the native database directly using
  // BibleSetupService.dbPath, so this function should never be reached.
  // Throwing here makes any accidental call to this path immediately obvious.
  throw UnsupportedError(
    'platformOpenDatabase should not be called on native platforms. '
    'BibleService.ensureOpen() handles the native path directly.',
  );
}
