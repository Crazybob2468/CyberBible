/// Finds all chapters that contain a specific USFX element and prints a
/// short excerpt showing the element in context.
///
/// Usage: dart run tools/find_element.dart <element_name> [max_per_chapter]
/// Example: dart run tools/find_element.dart s 3
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
  final maxPerChapter = args.length > 1 ? int.parse(args[1]) : 2;

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
  final tagPattern = RegExp('<$tagName[\\s>/][^<]{0,200}');
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
  db.dispose();
}
