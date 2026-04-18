/// IO (non-web) implementation of [BibleSetupService] platform operations.
///
/// This file is selected at compile time by the conditional import in
/// `bible_setup_service.dart` when `dart.library.io` is available — i.e., on
/// Android, iOS, Windows, macOS, and Linux. It must **never** be imported
/// directly; always use the conditional import pattern in the main service file.
///
/// ## Directory choice
///
/// The database is placed in [getApplicationSupportDirectory], not in the user-
/// visible Documents directory. This matters especially on iOS, where Documents
/// is iCloud-backed by default — a 28.9 MB auto-generated database file should
/// not bloat the user's iCloud storage. Application Support is the conventional
/// location for app-internal data that the user does not interact with directly.
///
/// ## Atomic write strategy
///
/// The first-launch copy writes to a `.tmp` sibling file and then renames it
/// into the final database path. This means:
///   - If the app is killed mid-copy, the final path either does not exist
///     (rename not yet done) or is fully intact (rename already done). A
///     partially written temp file is detected and removed on the next launch.
///   - A corrupt `.db` file can never result from an interrupted first launch.
///   - The rename is atomic on POSIX systems (Android, iOS, macOS, Linux) and
///     effectively atomic on Windows because the destination does not yet exist.
library;

import 'dart:io';

import 'package:flutter/services.dart' show rootBundle;
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

/// Ensures the bundled Bible database file is present in app support storage.
///
/// On **first launch** (or if a previous launch was interrupted mid-copy):
///   1. Creates the `<subdir>/` directory under [getApplicationSupportDirectory]
///      if it does not already exist.
///   2. Removes any leftover `.tmp` file from a prior interrupted copy.
///   3. Writes the asset bytes to a `.tmp` sibling file.
///   4. Renames the fully written `.tmp` file to the final database filename.
///
/// On **subsequent launches** the final file already exists and this function
/// returns the cached path almost immediately.
///
/// Returns the absolute path to the database file, ready for `openDatabase()`.
Future<String?> platformEnsureReady(
  String assetPath,
  String subdir,
  String filename,
) async {
  // getApplicationSupportDirectory is the correct location for app-internal
  // data files on every supported platform. It is NOT user-visible and NOT
  // iCloud-backed on iOS, unlike getApplicationDocumentsDirectory.
  final supportDir = await getApplicationSupportDirectory();
  final dbDir = Directory(p.join(supportDir.path, subdir));
  final dbPath = p.join(dbDir.path, filename);
  final dbFile = File(dbPath);

  // Only copy if the final database file does not already exist. Use the async
  // existence check so startup work stays non-blocking on the UI isolate.
  if (!await dbFile.exists()) {
    // Create the bibles/ subdirectory if it does not already exist.
    await dbDir.create(recursive: true);

    // The temp file lives alongside the final database file so that the rename
    // is always within the same filesystem mount point (required for atomicity).
    final tempFile = File('$dbPath.tmp');

    // Remove any leftover temp file from a previous interrupted launch so that
    // this launch always starts writing from a clean state.
    if (await tempFile.exists()) {
      await tempFile.delete();
    }

    // Read the asset bytes from the Flutter bundle (read-only, compressed
    // inside the app package) and write them to the temp file. The flush
    // ensures all bytes reach the OS before the rename.
    final byteData = await rootBundle.load(assetPath);
    final bytes = byteData.buffer.asUint8List(
      byteData.offsetInBytes,
      byteData.lengthInBytes,
    );
    await tempFile.writeAsBytes(bytes, flush: true);

    // Rename the fully written temp file into the final database path. This is
    // atomic on POSIX (Android, iOS, macOS, Linux) and safe on Windows because
    // the destination file does not exist at this point.
    await tempFile.rename(dbPath);
  }

  // Return the absolute path so BibleSetupService can cache it in _dbPath.
  return dbPath;
}
