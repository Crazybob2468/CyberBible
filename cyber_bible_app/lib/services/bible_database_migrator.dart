/// Applies schema upgrades to a locally stored Bible module database.
///
/// The bundled database is copied into writable app storage on first launch.
/// This migrator upgrades existing copies before the app opens them read-only,
/// so users who already installed an earlier app version can use new data APIs.
library;

import 'package:sqflite/sqflite.dart';

import '../models/bible_schema.dart';
import '../utils/usfx_utils.dart';

/// Upgrades a Bible database to the current [BibleSchema.version].
class BibleDatabaseMigrator {
  BibleDatabaseMigrator._();

  /// Applies all required schema changes and records the resulting version.
  ///
  /// Version 2 adds a footnotes table and backfills it from the raw chapter
  /// USFX already stored in legacy version 1 or unversioned databases. The work
  /// is performed in one transaction, so an invalid chapter cannot leave a
  /// partial upgrade.
  static Future<void> ensureCurrent(Database database) async {
    final versionRows = await database.rawQuery('PRAGMA user_version');
    final currentVersion = versionRows.single['user_version'] as int;

    if (currentVersion > BibleSchema.version) {
      throw StateError(
        'Bible database schema version $currentVersion is newer than '
        'the supported version ${BibleSchema.version}.',
      );
    }
    if (currentVersion == BibleSchema.version) return;

    await database.execute('PRAGMA foreign_keys = ON');
    await database.transaction((transaction) async {
      await transaction.execute(BibleSchema.createFootnotes);

      // Older database builds did not persist user_version. Avoid duplicating
      // records if a database has the table but its version marker is stale.
      final existingRows = await transaction.rawQuery(
        'SELECT COUNT(*) AS count FROM footnotes',
      );
      final existingCount = existingRows.single['count'] as int;
      if (existingCount == 0) {
        final batch = transaction.batch();
        const pageSize = 100;
        var offset = 0;

        // Read a bounded number of raw chapter fragments at a time. This keeps
        // the one-time upgrade from holding the entire Bible XML in memory.
        while (true) {
          final chapterRows = await transaction.query(
            'chapters',
            columns: ['book_code', 'number', 'content_usfx'],
            orderBy: 'book_code ASC, number ASC',
            limit: pageSize,
            offset: offset,
          );
          if (chapterRows.isEmpty) break;

          for (final row in chapterRows) {
            final bookCode = row['book_code'] as String;
            final chapter = row['number'] as int;
            final contentUsfx = row['content_usfx'] as String;
            for (final footnote in extractFootnotes(
              bookCode,
              chapter,
              contentUsfx,
            )) {
              batch.insert('footnotes', footnote.toMap());
            }
          }
          offset += chapterRows.length;
        }

        await batch.commit(noResult: true);
      }

      await transaction.execute('PRAGMA user_version = ${BibleSchema.version}');
    });
  }
}
