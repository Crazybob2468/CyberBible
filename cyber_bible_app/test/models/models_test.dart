/// Unit tests for the data model classes and Bible schema definitions.
///
/// Tests cover:
///   - [BibleInfo] — toMap() / fromMap() round trip
///   - [Book] — toMap() / fromMap() round trip, including testament enum
///   - [Chapter] — toMap() / fromMap() round trip
///   - [Verse] — toMap() / fromMap() round trip, plus [Verse.reference] getter
///   - [BibleSchema] — verifies table names and required SQL are present
///
/// These tests have no I/O or database dependencies.
/// Run with: flutter test test/models/models_test.dart
library;

import 'package:flutter_test/flutter_test.dart';

import 'package:cyber_bible_app/models/bible_info.dart';
import 'package:cyber_bible_app/models/bible_schema.dart';
import 'package:cyber_bible_app/models/book.dart';
import 'package:cyber_bible_app/models/chapter.dart';
import 'package:cyber_bible_app/models/verse.dart';

void main() {
  // ---------------------------------------------------------------------------
  // BibleInfo
  // ---------------------------------------------------------------------------

  group('BibleInfo', () {
    /// A fully-populated BibleInfo used across all BibleInfo tests.
    const info = BibleInfo(
      id: 'eng-web',
      name: 'World English Bible Classic',
      nameLocal: 'World English Bible Classic',
      abbreviation: 'WEB',
      description: 'A modern English Bible translation.',
      languageCode: 'eng',
      languageName: 'English',
      script: 'Latin',
      scriptDirection: 'LTR',
      countryCode: 'US',
      scope: 'Bible with Deuterocanon',
      copyright: 'Public Domain',
    );

    test('toMap contains all expected keys', () {
      final map = info.toMap();
      expect(map['id'], 'eng-web');
      expect(map['name'], 'World English Bible Classic');
      expect(map['name_local'], 'World English Bible Classic');
      expect(map['abbreviation'], 'WEB');
      expect(map['description'], 'A modern English Bible translation.');
      expect(map['language_code'], 'eng');
      expect(map['language_name'], 'English');
      expect(map['script'], 'Latin');
      expect(map['script_direction'], 'LTR');
      expect(map['country_code'], 'US');
      expect(map['scope'], 'Bible with Deuterocanon');
      expect(map['copyright'], 'Public Domain');
    });

    test('fromMap recreates an equivalent BibleInfo', () {
      // Round-trip: convert to map then back to object.
      final map = info.toMap();
      final restored = BibleInfo.fromMap(map);

      expect(restored.id, info.id);
      expect(restored.name, info.name);
      expect(restored.nameLocal, info.nameLocal);
      expect(restored.abbreviation, info.abbreviation);
      expect(restored.description, info.description);
      expect(restored.languageCode, info.languageCode);
      expect(restored.languageName, info.languageName);
      expect(restored.script, info.script);
      expect(restored.scriptDirection, info.scriptDirection);
      expect(restored.countryCode, info.countryCode);
      expect(restored.scope, info.scope);
      expect(restored.copyright, info.copyright);
    });

    test('fromMap applies default values for optional fields', () {
      // Simulate a minimal DB row with no optional columns set.
      final minimal = BibleInfo.fromMap({
        'id': 'test',
        'name': 'Test',
        'name_local': 'Test',
        'abbreviation': 'TST',
        'language_code': 'eng',
        'language_name': 'English',
        // Optional fields intentionally missing — should get defaults.
      });

      expect(minimal.description, '');
      expect(minimal.script, 'Latin');
      expect(minimal.scriptDirection, 'LTR');
      expect(minimal.countryCode, '');
      expect(minimal.scope, '');
      expect(minimal.copyright, '');
    });

    test('toString contains id and abbreviation', () {
      expect(info.toString(), contains('eng-web'));
      expect(info.toString(), contains('WEB'));
    });
  });

  // ---------------------------------------------------------------------------
  // Book
  // ---------------------------------------------------------------------------

  group('Book', () {
    /// A sample Genesis Book object used across all Book tests.
    const genesis = Book(
      code: 'GEN',
      sortOrder: 0,
      nameShort: 'Genesis',
      nameLong: 'The First Book of Moses, Commonly Called Genesis',
      abbreviation: 'Gen',
      testament: Testament.ot,
      chapterCount: 50,
    );

    test('toMap contains all expected keys', () {
      final map = genesis.toMap();
      expect(map['code'], 'GEN');
      expect(map['sort_order'], 0);
      expect(map['name_short'], 'Genesis');
      expect(map['name_long'], contains('Moses'));
      expect(map['abbreviation'], 'Gen');
      // Testament is stored as its enum name string to match the DB CHECK constraint.
      expect(map['testament'], 'ot');
      expect(map['chapter_count'], 50);
    });

    test('fromMap recreates an equivalent Book', () {
      final map = genesis.toMap();
      final restored = Book.fromMap(map);

      expect(restored.code, genesis.code);
      expect(restored.sortOrder, genesis.sortOrder);
      expect(restored.nameShort, genesis.nameShort);
      expect(restored.nameLong, genesis.nameLong);
      expect(restored.abbreviation, genesis.abbreviation);
      expect(restored.testament, genesis.testament);
      expect(restored.chapterCount, genesis.chapterCount);
    });

    test('testament enum round-trips through string correctly', () {
      // Each testament value should survive toMap → fromMap.
      for (final t in Testament.values) {
        final book = Book(
          code: 'TST',
          sortOrder: 0,
          nameShort: 'Test',
          nameLong: 'Test Book',
          abbreviation: 'Tst',
          testament: t,
          chapterCount: 1,
        );
        final restored = Book.fromMap(book.toMap());
        expect(restored.testament, t,
            reason: 'Testament.${t.name} failed round-trip');
      }
    });

    test('toString contains code and short name', () {
      expect(genesis.toString(), contains('GEN'));
      expect(genesis.toString(), contains('Genesis'));
    });
  });

  // ---------------------------------------------------------------------------
  // Chapter
  // ---------------------------------------------------------------------------

  group('Chapter', () {
    const chapter = Chapter(
      bookCode: 'GEN',
      number: 1,
      contentUsfx: '<p><v id="1" bcv="GEN.1.1"/>In the beginning<ve/></p>',
    );

    test('toMap contains all expected keys', () {
      final map = chapter.toMap();
      expect(map['book_code'], 'GEN');
      expect(map['number'], 1);
      expect(map['content_usfx'], contains('In the beginning'));
    });

    test('fromMap recreates an equivalent Chapter', () {
      final map = chapter.toMap();
      final restored = Chapter.fromMap(map);

      expect(restored.bookCode, chapter.bookCode);
      expect(restored.number, chapter.number);
      expect(restored.contentUsfx, chapter.contentUsfx);
    });

    test('toString contains book code and chapter number', () {
      expect(chapter.toString(), contains('GEN'));
      expect(chapter.toString(), contains('1'));
    });
  });

  // ---------------------------------------------------------------------------
  // Verse
  // ---------------------------------------------------------------------------

  group('Verse', () {
    const verse = Verse(
      bookCode: 'GEN',
      chapter: 1,
      verse: '1',
      textPlain: 'In the beginning, God created the heavens and the earth.',
    );

    test('toMap contains all expected keys', () {
      final map = verse.toMap();
      expect(map['book_code'], 'GEN');
      expect(map['chapter'], 1);
      expect(map['verse'], '1');
      expect(map['text_plain'], contains('beginning'));
    });

    test('fromMap recreates an equivalent Verse', () {
      final map = verse.toMap();
      final restored = Verse.fromMap(map);

      expect(restored.bookCode, verse.bookCode);
      expect(restored.chapter, verse.chapter);
      expect(restored.verse, verse.verse);
      expect(restored.textPlain, verse.textPlain);
    });

    test('reference getter returns dot-separated BCV string', () {
      expect(verse.reference, 'GEN.1.1');
    });

    test('reference getter works with segmented verse IDs', () {
      const segmented = Verse(
        bookCode: 'JHN',
        chapter: 3,
        verse: '16a',
        textPlain: 'For God so loved the world',
      );
      expect(segmented.reference, 'JHN.3.16a');
    });

    test('toString contains the reference', () {
      expect(verse.toString(), contains('GEN.1.1'));
    });
  });

  // ---------------------------------------------------------------------------
  // BibleSchema
  // ---------------------------------------------------------------------------

  group('BibleSchema', () {
    /// Check that all required table names appear in the CREATE statements.
    test('createStatements includes bible_info table', () {
      expect(
        BibleSchema.createStatements.any((s) => s.contains('bible_info')),
        isTrue,
      );
    });

    test('createStatements includes books table', () {
      expect(
        BibleSchema.createStatements.any((s) => s.contains('books')),
        isTrue,
      );
    });

    test('createStatements includes chapters table', () {
      expect(
        BibleSchema.createStatements.any((s) => s.contains('chapters')),
        isTrue,
      );
    });

    test('createStatements includes verses table', () {
      expect(
        BibleSchema.createStatements.any((s) => s.contains('verses')),
        isTrue,
      );
    });

    test('createStatements includes FTS5 virtual table for search', () {
      expect(
        BibleSchema.createStatements.any((s) => s.contains('fts5')),
        isTrue,
      );
    });

    test('rebuildFts SQL targets verses_fts table', () {
      expect(BibleSchema.rebuildFts, contains('verses_fts'));
    });

    test('createIndexes is not empty', () {
      expect(BibleSchema.createIndexes, isNotEmpty);
    });

    test('schema version is a positive integer', () {
      expect(BibleSchema.version, greaterThan(0));
    });
  });
}
