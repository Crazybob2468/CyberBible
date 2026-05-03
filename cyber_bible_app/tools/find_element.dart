/// Finds all chapters that contain a specific USFX element and prints a
/// short excerpt showing the element in context.
///
/// Usage: `dart run tools/find_element.dart <element_name> [max_per_chapter]`
/// Example: `dart run tools/find_element.dart s 3`
library;

import 'dart:io';
import 'package:sqlite3/sqlite3.dart';

/// Entry point: opens `assets/bibles/eng-web.db`, queries chapters that
/// contain [tagName] as a complete USFX element name, and prints up to
/// [maxPerChapter] USFX context snippets per chapter.
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
  final tagName = args[0];
  // USFX element names consist of ASCII letters and digits only (e.g. "p",
  // "q1", "wj"). Reject anything else to prevent SQL LIKE wildcard injection
  // (_ and % have special meaning) and regex metacharacter injection.
  if (!RegExp(r'^[a-zA-Z][a-zA-Z0-9]*$').hasMatch(tagName)) {
    print(
      'Error: element_name must be alphanumeric (e.g. "p", "q1", "wj"), '
      'got "$tagName".',
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

  final db = sqlite3.open('assets/bibles/eng-web.db');
  // Use three LIKE patterns to match the tag followed by a space, close `>`,
  // or self-close `/>` — avoiding false positives from prefix-matched names
  // (e.g. `<q` would otherwise also match `<qs>`).
  final rows = db.select(
    "SELECT book_code, number, content_usfx FROM chapters "
    "WHERE content_usfx LIKE ? OR content_usfx LIKE ? OR content_usfx LIKE ?",
    ['%<$tagName %', '%<$tagName>%', '%<$tagName/>%'],
  );

  print('Chapters containing <$tagName>: ${rows.length}');
  // RegExp.escape is belt-and-suspenders: tagName is validated as alphanumeric
  // above (no metacharacters possible), but escaping ensures correctness even
  // if that validation is ever loosened.
  final tagPattern = RegExp('<${RegExp.escape(tagName)}[\\s>/][^<]{0,200}');
  for (final row in rows) {
    final book = row['book_code'] as String;
    final num = row['number'] as int;
    final usfx = row['content_usfx'] as String;
    final matches = tagPattern.allMatches(usfx).take(maxPerChapter).toList();
    print('\n$book $num:');
    for (final m in matches) {
      print('  ${m.group(0)?.replaceAll('\n', ' ')}');
    }
  }
  db.close();
}
