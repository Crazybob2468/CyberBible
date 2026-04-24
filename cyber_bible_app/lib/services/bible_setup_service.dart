/// Service responsible for making the bundled Bible database available to the
/// app at runtime.
///
/// ## Why this is needed
///
/// Flutter assets (files in the `assets/` folder) are packaged inside the app
/// bundle in a read-only, compressed form. SQLite — and therefore `sqflite` —
/// needs a regular, writable file on disk in order to open a database. This
/// service bridges the gap: on first launch it reads the asset bytes and writes
/// them to the app's writable support directory, then on every subsequent
/// launch it simply returns the path to that already-copied file.
///
/// ## Why conditional imports are used
///
/// `dart:io` (File, Directory) cannot be imported unconditionally in a Flutter
/// project because the web compiler rejects it at compile time, even if all
/// the dart:io code is behind a `kIsWeb` runtime guard. All file-system
/// operations are therefore delegated to a platform-specific implementation
/// selected at compile time via conditional imports:
///   - `bible_setup_service_io.dart`   — Android, iOS, Windows, macOS, Linux
///   - `bible_setup_service_stub.dart` — Flutter Web (all operations are no-ops)
///
/// ## File location
///
/// The database is placed in the app's support directory (not Documents):
///   `<appSupportDir>/bibles/eng-web.db`
///
/// On Android this is typically `/data/user/0/<package>/files/bibles/`.
/// On iOS it is in the app's Application Support folder (not iCloud-backed).
/// On Windows/macOS/Linux it is in the platform-specific app support directory
/// returned by `getApplicationSupportDirectory()`.
///
/// ## Usage
///
/// Call [BibleSetupService.ensureReady] once at app startup (before the first
/// screen renders) and `await` it. After it completes, the database file is
/// guaranteed to exist on disk and [BibleSetupService.dbPath] contains its
/// absolute path, ready to pass to `sqflite`'s `openDatabase()`.
library;

import 'package:flutter/foundation.dart' show kIsWeb;

// Conditional import: selects the dart:io implementation on native platforms
// and a no-op stub on Flutter Web. This is required because the web compiler
// cannot link dart:io even when all usage is guarded by kIsWeb at runtime.
import 'bible_setup_service_stub.dart'
    if (dart.library.io) 'bible_setup_service_io.dart' as platform_impl;

/// Manages the one-time copy of the bundled Bible asset database to writable
/// app storage, and exposes the resulting file path for use by [BibleService].
class BibleSetupService {
  // ---------------------------------------------------------------------------
  // Constants
  // ---------------------------------------------------------------------------

  /// The asset path of the bundled WEB Bible database inside the app bundle.
  /// Must match the entry declared in pubspec.yaml's `flutter > assets` list.
  ///
  /// Declared public so that [BibleService] can reference the same constant
  /// rather than maintaining a duplicate string literal.
  static const String bundledBibleAssetPath = 'assets/bibles/eng-web.db';

  /// Subdirectory name created under the platform support directory where
  /// all Bible database files are stored.
  static const String _subdir = 'bibles';

  /// Filename of the World English Bible database on disk.
  static const String _filename = 'eng-web.db';

  // ---------------------------------------------------------------------------
  // State
  // ---------------------------------------------------------------------------

  /// The absolute path to the Bible database file in writable app storage.
  ///
  /// This is `null` before [ensureReady] has been called and awaited.
  /// After [ensureReady] completes successfully it holds a valid file path.
  static String? _dbPath;

  /// Returns the absolute path to the Bible database file.
  ///
  /// Throws an [UnsupportedError] on web (web does not use a file-based SQLite
  /// database — web support will be implemented in a later phase).
  /// Throws a [StateError] if [ensureReady] has not been called yet on other
  /// platforms — callers must always `await BibleSetupService.ensureReady()`
  /// at startup first.
  static String get dbPath {
    if (kIsWeb) {
      throw UnsupportedError(
        'BibleSetupService.dbPath is not available on web. '
        'Web platform SQLite support will be added in a later phase.',
      );
    }
    if (_dbPath == null) {
      throw StateError(
        'BibleSetupService.dbPath accessed before ensureReady() completed. '
        'Call and await ensureReady() in main() before using dbPath.',
      );
    }
    return _dbPath!;
  }

  // ---------------------------------------------------------------------------
  // Public API
  // ---------------------------------------------------------------------------

  /// Ensures the Bible database file exists in the app's writable storage.
  ///
  /// Delegates all file-system work to the platform-specific implementation
  /// selected via the conditional import. On web this is a no-op.
  ///
  /// On **first launch**:
  ///   1. Reads the `assets/bibles/eng-web.db` asset from the app bundle.
  ///   2. Creates the `bibles/` subdirectory in the support folder if needed.
  ///   3. Writes the raw bytes to a `.tmp` sibling file (non-destructive).
  ///   4. Renames the `.tmp` file to the final path (atomic on POSIX systems).
  ///
  /// On **subsequent launches** the file already exists, so the copy is
  /// skipped and this method returns almost immediately.
  ///
  /// After this method completes, [dbPath] is safe to use on non-web platforms.
  static Future<void> ensureReady() async {
    // On web, dart:io is unavailable — skip file-system work entirely.
    // Web-specific Bible data access will be implemented in a later phase.
    if (kIsWeb) return;

    // Delegate to the platform implementation (IO or stub). The IO
    // implementation returns the absolute path to the database file.
    _dbPath = await platform_impl.platformEnsureReady(
      bundledBibleAssetPath,
      _subdir,
      _filename,
    );
  }
}
