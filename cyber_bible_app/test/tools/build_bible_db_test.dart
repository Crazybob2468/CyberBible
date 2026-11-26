/// Tests database writing for the offline USFX Bible build tool.
library;

import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:sqlite3/sqlite3.dart';

import 'package:cyber_bible_app/models/bible_info.dart';
import 'package:cyber_bible_app/models/book.dart';
import 'package:cyber_bible_app/models/chapter.dart';
import 'package:cyber_bible_app/utils/usfx_utils.dart';
import '../../tools/build_bible_db.dart' as builder;

void main() {
  test(
    'writes footnotes separately without adding them to searchable text',
    () {
      final temporaryDirectory = Directory.systemTemp.createTempSync(
        'cyber_bible_db_test_',
      );
      final databasePath = '${temporaryDirectory.path}/test.db';
      const chapterUsfx =
          '<p><v id="1"/>Canonical text'
          '<f caller="+"><fr>1:1</fr><ft>Editorial note.</ft></f><ve/></p>';
      final result = builder.ParseResult(
        bibleInfo: const BibleInfo(
          id: 'test',
          name: 'Test Bible',
          nameLocal: 'Test Bible',
          abbreviation: 'TST',
          languageCode: 'eng',
          languageName: 'English',
        ),
        books: const [
          Book(
            code: 'GEN',
            sortOrder: 0,
            nameShort: 'Genesis',
            nameLong: 'Genesis',
            abbreviation: 'Gen',
            testament: Testament.ot,
            chapterCount: 1,
          ),
        ],
        chapters: const [
          Chapter(bookCode: 'GEN', number: 1, contentUsfx: chapterUsfx),
        ],
        footnotes: extractFootnotes('GEN', 1, chapterUsfx),
        verses: extractVerses('GEN', 1, chapterUsfx),
      );

      try {
        builder.writeSqlite(result, databasePath);
        final database = sqlite3.open(databasePath, mode: OpenMode.readOnly);
        try {
          expect(
            database
                .select('SELECT COUNT(*) AS count FROM footnotes')
                .single['count'],
            1,
          );
          expect(
            database
                .select(
                  "SELECT COUNT(*) AS count FROM verses_fts "
                  "WHERE verses_fts MATCH 'Editorial'",
                )
                .single['count'],
            0,
          );
          expect(
            database.select('PRAGMA user_version').single['user_version'],
            2,
          );
        } finally {
          database.close();
        }
      } finally {
        temporaryDirectory.deleteSync(recursive: true);
      }
    },
  );
}
