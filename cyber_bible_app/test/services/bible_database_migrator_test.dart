/// Tests schema upgrades for locally stored Bible module databases.
library;

import 'package:flutter_test/flutter_test.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'package:cyber_bible_app/models/bible_schema.dart';
import 'package:cyber_bible_app/services/bible_database_migrator.dart';

void main() {
  // Use real SQLite through FFI so migration transactions and constraints are
  // exercised without requiring a device or platform channel.
  setUpAll(() {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  });

  /// Creates a version-1-style database with enough chapters to cross a
  /// migration page boundary and sample notes at both ends.
  Future<Database> createLegacyDatabase() async {
    final database = await databaseFactory.openDatabase(inMemoryDatabasePath);
    await database.execute('CREATE TABLE books (code TEXT PRIMARY KEY)');
    await database.execute('''
      CREATE TABLE chapters (
        book_code TEXT NOT NULL REFERENCES books(code),
        number INTEGER NOT NULL,
        content_usfx TEXT NOT NULL,
        PRIMARY KEY (book_code, number)
      )
      ''');
    await database.insert('books', {'code': 'GEN'});
    for (var chapter = 1; chapter <= 101; chapter++) {
      final contentUsfx = switch (chapter) {
        1 =>
          '<p><v id="1"/>Text'
              '<f caller="+"><fr>1:1</fr><ft>Note one.</ft></f>'
              '<f caller="a"><ft>Note two.</ft></f><ve/></p>',
        101 =>
          '<p><v id="2"/>Text'
              '<f caller="*"><ft>Last-page note.</ft></f><ve/></p>',
        _ => '<p><v id="1"/>Text<ve/></p>',
      };
      await database.insert('chapters', {
        'book_code': 'GEN',
        'number': chapter,
        'content_usfx': contentUsfx,
      });
    }
    await database.execute('PRAGMA user_version = 1');
    return database;
  }

  test(
    'adds and backfills ordered footnotes from legacy chapter USFX',
    () async {
      final database = await createLegacyDatabase();
      addTearDown(database.close);

      await BibleDatabaseMigrator.ensureCurrent(database);

      final rows = await database.query(
        'footnotes',
        where: 'book_code = ? AND chapter = ? AND verse = ?',
        whereArgs: ['GEN', 1, '1'],
        orderBy: 'ordinal ASC',
      );
      expect(rows, hasLength(2));
      expect(rows.map((row) => row['ordinal']).toList(), [0, 1]);
      expect(rows.map((row) => row['caller']).toList(), ['+', 'a']);
      expect(
        rows.first['raw_usfx'],
        contains('<fr>1:1</fr><ft>Note one.</ft>'),
      );
      final lastPageRows = await database.query(
        'footnotes',
        where: 'book_code = ? AND chapter = ? AND verse = ?',
        whereArgs: ['GEN', 101, '2'],
      );
      expect(lastPageRows, hasLength(1));
      expect(lastPageRows.single['caller'], '*');

      final versionRows = await database.rawQuery('PRAGMA user_version');
      expect(versionRows.single['user_version'], BibleSchema.version);
    },
  );

  test('is idempotent when upgrading a database more than once', () async {
    final database = await createLegacyDatabase();
    addTearDown(database.close);

    await BibleDatabaseMigrator.ensureCurrent(database);
    await BibleDatabaseMigrator.ensureCurrent(database);

    final rows = await database.query('footnotes');
    expect(rows, hasLength(3));
  });

  test('rolls back the schema upgrade when a chapter cannot be parsed', () async {
    final database = await createLegacyDatabase();
    addTearDown(database.close);
    await database.update(
      'chapters',
      {
        'content_usfx': '<p><f caller="+"><ft>Unassociated note.</ft></f></p>',
      },
      where: 'book_code = ? AND number = ?',
      whereArgs: ['GEN', 2],
    );

    await expectLater(
      BibleDatabaseMigrator.ensureCurrent(database),
      throwsA(isA<FormatException>()),
    );

    final tableRows = await database.rawQuery(
      "SELECT name FROM sqlite_master WHERE type = 'table' "
      "AND name = 'footnotes'",
    );
    expect(tableRows, isEmpty);
    final versionRows = await database.rawQuery('PRAGMA user_version');
    expect(versionRows.single['user_version'], 1);
  });

  test('rejects a database schema newer than this app supports', () async {
    final database = await databaseFactory.openDatabase(inMemoryDatabasePath);
    addTearDown(database.close);
    await database.execute('PRAGMA user_version = ${BibleSchema.version + 1}');

    expect(
      () => BibleDatabaseMigrator.ensureCurrent(database),
      throwsA(isA<StateError>()),
    );
  });
}
