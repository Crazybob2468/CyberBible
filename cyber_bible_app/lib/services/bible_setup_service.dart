/// Service responsible for making the bundled Bible database available to the
/// app at runtime.
///
/// ## Why this is needed
///
/// Flutter assets (files in the `assets/` folder) are packaged inside the app
/// bundle in a read-only, compressed form. SQLite — and therefore `sqflite` —
/// needs a regular, writable file on disk in order to open a database. This
/// service bridges the gap: on first launch it reads the asset bytes and writes
/// them to the app's writable documents directory, then on every subsequent
/// launch it simply returns the path to that already-copied file.
///
/// ## File location
///
/// The database is placed in the app's documents directory:
///   `<documents>/bibles/eng-web.db`
///
/// On Android this is typically `/data/data/<package>/files/bibles/`.
/// On iOS it is inside the app's sandbox Documents folder.
/// On Windows/macOS/Linux it is under the user's documents directory.
///
/// ## Usage
///
/// Call [BibleSetupService.ensureReady] once at app startup (before the first
/// screen renders) and `await` it. After it completes, the database file is
/// guaranteed to exist on disk and [BibleSetupService.dbPath] contains its
/// absolute path, ready to pass to `sqflite`'s `openDatabase()`.
library;

import 'dart:io';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/services.dart' show rootBundle;
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

/// Manages the one-time copy of the bundled Bible asset database to writable
/// app storage, and exposes the resulting file path for use by [BibleService].
class BibleSetupService {
  // ---------------------------------------------------------------------------
  // Constants
  // ---------------------------------------------------------------------------

  /// The asset path of the bundled WEB Bible database inside the app bundle.
  /// Must match the entry declared in pubspec.yaml's `flutter > assets` list.
  static const String _assetPath = 'assets/bibles/eng-web.db';

  /// Subdirectory name created under the platform documents directory where
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
  /// On **first launch** (or after an app update that changes the DB):
  ///   1. Reads the `assets/bibles/eng-web.db` asset from the app bundle.
  ///   2. Creates the `bibles/` subdirectory in the documents folder if needed.
  ///   3. Writes the raw bytes to disk as `bibles/eng-web.db`.
  ///
  /// On **subsequent launches** the file already exists, so the copy is
  /// skipped and this method returns almost immediately.
  ///
  /// After this method completes, [dbPath] is safe to use.
  static Future<void> ensureReady() async {
    // Web does not support dart:io (File/Directory) or path_provider.
    // On web the database copy step is skipped entirely; web-specific Bible
    // data access will be implemented in a later phase.
    if (kIsWeb) return;

    // Determine where to put the database on this platform.
    final docsDir = await getApplicationDocumentsDirectory();
    final biblesDir = Directory(p.join(docsDir.path, _subdir));
    final dbFile = File(p.join(biblesDir.path, _filename));

    // Only copy if the file does not already exist. Future steps (e.g. version
    // checking) may add logic here to re-copy when the bundled DB is newer.
    if (!dbFile.existsSync()) {
      // Create the bibles/ subdirectory if it does not exist yet.
      await biblesDir.create(recursive: true);

      // Load the asset bytes from the Flutter asset bundle (read-only,
      // compressed inside the app package) and write them to a plain file.
      final byteData = await rootBundle.load(_assetPath);
      final bytes = byteData.buffer.asUint8List(
        byteData.offsetInBytes,
        byteData.lengthInBytes,
      );
      await dbFile.writeAsBytes(bytes, flush: true);
    }

    // Cache the resolved path so callers can access it synchronously later.
    _dbPath = dbFile.path;
  }
}
