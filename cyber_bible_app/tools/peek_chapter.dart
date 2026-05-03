/// Quick diagnostic tool: print the first N characters of a chapter's
/// content_usfx from the local SQLite database.
///
/// Usage: `dart run tools/peek_chapter.dart <book_code> <chapter_num> [max_chars]`
/// Example: `dart run tools/peek_chapter.dart MAT 5 3000`
// ignore_for_file: avoid_print
// CLI tool — print() is the correct output mechanism for a terminal script.
library;

import 'dart:io';
import 'package:sqlite3/sqlite3.dart';

/// Entry point: opens `assets/bibles/eng-web.db`, looks up the USFX XML for
/// the given `bookCode` and chapter `chapterNum`, and prints the first
/// `maxChars` characters so the raw markup can be inspected without writing
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
  // Validate chapter_num — must be a positive integer.
  final parsedChapter = int.tryParse(args[1]);
  if (parsedChapter == null || parsedChapter < 1) {
    print('Error: chapter_num must be a positive integer, got "${args[1]}"');
    exit(1);
  }
  final chapterNum = parsedChapter;
  // Validate optional max_chars — must be a positive integer.
  final int maxChars;
  if (args.length > 2) {
    final parsedMax = int.tryParse(args[2]);
    if (parsedMax == null || parsedMax < 1) {
      print('Error: max_chars must be a positive integer, got "${args[2]}"');
      exit(1);
    }
    maxChars = parsedMax;
  } else {
    maxChars = 3000;
  }

  final dbPath = 'assets/bibles/eng-web.db';
  // Opening a non-existent file with sqlite3.open() creates an empty database,
  // causing the tool to silently report no chapter instead of failing
  // visibly. Check up-front so the user gets an actionable error message.
  if (!File(dbPath).existsSync()) {
    print(
      'Error: database not found at "$dbPath". '
      'Run `dart run tools/build_bible_db.dart` first.',
    );
    exit(1);
  }
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

  db.close();
}
