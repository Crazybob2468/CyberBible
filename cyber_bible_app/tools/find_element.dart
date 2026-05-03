/// Finds all chapters that contain a specific USFX element and prints a
/// short excerpt showing the element in context.
///
/// Usage: `dart run tools/find_element.dart <element_name> [max_per_chapter]`
/// Example: `dart run tools/find_element.dart s 3`
// ignore_for_file: avoid_print
// CLI tool — print() is the correct output mechanism for a terminal script.
library;

import 'dart:io';
import 'package:sqlite3/sqlite3.dart';

/// Entry point: opens `assets/bibles/eng-web.db`, queries chapters that
/// contain `tagName` as a complete USFX element name, and prints up to
/// `maxPerChapter` USFX context snippets per chapter.
///
/// The SQL filter matches the tag followed by a space, `>`, or `/` so that
/// searching for `q` does not accidentally match chapters that only contain
/// `<qs>` or other `q`-prefixed elements.
///
/// Run from the `cyber_bible_app/` directory:
/// ```
/// dart run tools/find_element.dart <element_name> [max_per_chapter]
/// ```
void main(List<String> args) {
  if (args.isEmpty) {
    print('Usage: dart run tools/find_element.dart <element_name> [max_per_chapter]');
    exit(1);
  }
  // USFX element names are always lowercase in the database (e.g. "p", "q1",
  // "wj"). Normalise to lowercase immediately so the RegExp (which is
  // case-sensitive) matches database content even if the user typed uppercase.
  // SQLite LIKE is case-insensitive for ASCII, so the SQL patterns are fine
  // with either case, but the Dart RegExp is not.
  final tagName = args[0].toLowerCase();
  // Reject non-alphanumeric input to prevent SQL LIKE wildcard injection
  // (_ and % have special meaning) and regex metacharacter injection.
  if (!RegExp(r'^[a-zA-Z][a-zA-Z0-9]*$').hasMatch(tagName)) {
    print(
      'Error: element_name must be alphanumeric (e.g. "p", "q1", "wj"), '
      'got "${args[0]}".',
    );
    exit(1);
  }
  // Validate the optional max_per_chapter argument before use.
  final int maxPerChapter;
  if (args.length > 1) {
    final parsed = int.tryParse(args[1]);
    if (parsed == null || parsed < 1) {
      print('Error: max_per_chapter must be a positive integer, got "${args[1]}"');
      exit(1);
    }
    maxPerChapter = parsed;
  } else {
    maxPerChapter = 2;
  }

  // Opening a non-existent file with sqlite3.open() creates an empty database,
  // causing the tool to silently report zero matches instead of failing
  // visibly. Check up-front so the user gets an actionable error message.
  const dbPath = 'assets/bibles/eng-web.db';
  if (!File(dbPath).existsSync()) {
    print(
      'Error: database not found at "$dbPath". '
      'Run `dart run tools/build_bible_db.dart` first.',
    );
    exit(1);
  }
  final db = sqlite3.open(dbPath);
  // Use three LIKE patterns to match the tag followed by a space, close `>`,
  // or self-close `/>` — avoiding false positives from prefix-matched names
  // (e.g. `<q` would otherwise also match `<qs>`).
  final rows = db.select(
    "SELECT book_code, number, content_usfx FROM chapters "
    "WHERE content_usfx LIKE ? OR content_usfx LIKE ? OR content_usfx LIKE ?",
    ['%<$tagName %', '%<$tagName>%', '%<$tagName/>%'],
  );

  print('Chapters containing <$tagName>: ${rows.length}');
  // Match only the opening tag position. Using [^<]{0,200} would stop at the
  // first nested tag (e.g. <p><v .../> shows nothing useful). Instead, we
  // find the match position, extract a 300-char window, then strip inner tags
  // for a readable plain-text excerpt that shows the surrounding content.
  // RegExp.escape is belt-and-suspenders: tagName is validated alphanumeric
  // above, but escaping keeps correctness if validation is ever loosened.
  final openPattern = RegExp('<${RegExp.escape(tagName)}[\\s>/]');
  for (final row in rows) {
    final book = row['book_code'] as String;
    final num = row['number'] as int;
    final usfx = row['content_usfx'] as String;
    final matches = openPattern.allMatches(usfx).take(maxPerChapter).toList();
    print('\n$book $num:');
    for (final m in matches) {
      // Extract up to 300 chars from the match position and strip inner tags
      // so nested markup does not hide the surrounding verse text.
      final end = (m.start + 300).clamp(0, usfx.length);
      final excerpt = usfx
          .substring(m.start, end)
          .replaceAll(RegExp(r'<[^>]+>'), ' ')
          .replaceAll(RegExp(r'\s+'), ' ')
          .trim();
      print('  $excerpt');
    }
  }
  db.close();
}
