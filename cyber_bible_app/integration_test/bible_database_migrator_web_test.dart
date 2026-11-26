/// Browser-backed regression test for upgrading an existing IndexedDB Bible.
///
/// With a matching ChromeDriver running on port 4444, run:
/// ```sh
/// flutter drive \
///   --driver=test_driver/integration_test.dart \
///   --target=integration_test/bible_database_migrator_web_test.dart \
///   -d web-server
/// ```
library;

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:path/path.dart' as p;
import 'package:sqflite/sqflite.dart' show Database, DatabaseException;
import 'package:sqflite_common/sqflite.dart' show databaseFactory;
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart'
    show databaseFactoryFfiWebNoWebWorker;

import 'package:cyber_bible_app/models/bible_schema.dart';
import 'package:cyber_bible_app/services/bible_service_web.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('migrates a persisted legacy database and reopens it read-only', (
    WidgetTester tester,
  ) async {
    // Use a dedicated IndexedDB key so this test never alters the app's
    // bundled WEB database or a user's normal Bible data.
    databaseFactory = databaseFactoryFfiWebNoWebWorker;
    final databasePath = p.join(
      await databaseFactory.getDatabasesPath(),
      'cyber_bible_phase21_migration_test.db',
    );

    if (await databaseFactory.databaseExists(databasePath)) {
      await databaseFactory.deleteDatabase(databasePath);
    }

    Database? legacyDatabase;
    Database? migratedDatabase;
    Database? reopenedDatabase;
    addTearDown(() async {
      await legacyDatabase?.close();
      await migratedDatabase?.close();
      await reopenedDatabase?.close();
      databaseFactory = databaseFactoryFfiWebNoWebWorker;
      if (await databaseFactory.databaseExists(databasePath)) {
        await databaseFactory.deleteDatabase(databasePath);
      }
    });

    // Build the minimum schema-v1 shape needed by the real migrator. Its
    // verse text and chapter content model an already-installed old copy.
    legacyDatabase = await databaseFactory.openDatabase(databasePath);
    await legacyDatabase.execute('CREATE TABLE books (code TEXT PRIMARY KEY)');
    await legacyDatabase.execute('''
        CREATE TABLE chapters (
          book_code TEXT NOT NULL REFERENCES books(code),
          number INTEGER NOT NULL,
          content_usfx TEXT NOT NULL,
          PRIMARY KEY (book_code, number)
        )
        ''');
    await legacyDatabase.insert('books', {'code': 'GEN'});
    const chapterUsfx =
        '<p><v id="7"/>Legacy chapter text'
        '<f caller="a"><fr>1:7</fr><ft>Legacy note.</ft></f>'
        '<ve/></p>';
    await legacyDatabase.insert('chapters', {
      'book_code': 'GEN',
      'number': 1,
      'content_usfx': chapterUsfx,
    });
    await legacyDatabase.execute('PRAGMA user_version = 1');
    await legacyDatabase.close();
    legacyDatabase = null;

    // The production Web opener finds the existing IndexedDB file, upgrades
    // it, and returns it through the same read-only API used by BibleService.
    migratedDatabase = await platformOpenDatabase(
      'assets/bibles/${p.basename(databasePath)}',
    );

    final migratedVersion = await migratedDatabase.rawQuery(
      'PRAGMA user_version',
    );
    expect(migratedVersion.single['user_version'], BibleSchema.version);

    final chapterRows = await migratedDatabase.query(
      'chapters',
      where: 'book_code = ? AND number = ?',
      whereArgs: ['GEN', 1],
    );
    expect(chapterRows.single['content_usfx'], chapterUsfx);

    final footnoteRows = await migratedDatabase.query(
      'footnotes',
      where: 'book_code = ? AND chapter = ? AND verse = ?',
      whereArgs: ['GEN', 1, '7'],
      orderBy: 'ordinal ASC',
    );
    expect(footnoteRows, hasLength(1));
    expect(footnoteRows.single['caller'], 'a');
    expect(footnoteRows.single['raw_usfx'], contains('<ft>Legacy note.</ft>'));

    // A reopened connection forces the Web SQLite backend to read the
    // migrated database from IndexedDB again, rather than an open handle.
    await migratedDatabase.close();
    migratedDatabase = null;
    databaseFactory = databaseFactoryFfiWebNoWebWorker;
    reopenedDatabase = await platformOpenDatabase(
      'assets/bibles/${p.basename(databasePath)}',
    );

    final reopenedFootnotes = await reopenedDatabase.query(
      'footnotes',
      where: 'book_code = ? AND chapter = ? AND verse = ?',
      whereArgs: ['GEN', 1, '7'],
    );
    expect(reopenedFootnotes, hasLength(1));
    expect(
      reopenedFootnotes.single['raw_usfx'],
      contains('<ft>Legacy note.</ft>'),
    );
    await expectLater(
      reopenedDatabase.insert('books', {'code': 'READ_ONLY_CHECK'}),
      throwsA(isA<DatabaseException>()),
    );
  });
}
