/// Quick diagnostic tool: print the first N characters of a chapter's
/// content_usfx from the local SQLite database.
///
/// Usage: dart run tools/peek_chapter.dart <book_code> <chapter_num> [max_chars]
/// Example: dart run tools/peek_chapter.dart MAT 5 3000
library;

import 'dart:io';
import 'package:sqlite3/sqlite3.dart';

/// Entry point: opens `assets/bibles/eng-web.db`, looks up the USFX XML for
/// the given [bookCode] and chapter [chapterNum], and prints the first
/// [maxChars] characters so the raw markup can be inspected without writing
/// a full query.
///
/// Run from the `cyber_bible_app/` directory:
/// ```
/// dart run tools/peek_chapter.dart <book_code> <chapter_num> [max_chars]
/// ```
void main(List<String> args) {
  if (args.length < 2) {
    print('Usage: dart run tools/peek_chapter.dart <book_code> <chapter_num> [max_chars]');
    exit(1);
  }
  final bookCode = args[0];
  final chapterNum = int.parse(args[1]);
  final maxChars = args.length > 2 ? int.parse(args[2]) : 3000;

  final dbPath = 'assets/bibles/eng-web.db';
  final db = sqlite3.open(dbPath);

  final result = db.select(
    'SELECT content_usfx FROM chapters WHERE book_code = ? AND number = ?',
    [bookCode, chapterNum],
  );

  if (result.isEmpty) {
    print('No chapter found for $bookCode $chapterNum');
  } else {
    final usfx = result.first['content_usfx'] as String;
    print('Length: ${usfx.length} chars');
    print('--- First $maxChars chars ---');
    print(usfx.substring(0, usfx.length < maxChars ? usfx.length : maxChars));
  }

  db.dispose();
}
