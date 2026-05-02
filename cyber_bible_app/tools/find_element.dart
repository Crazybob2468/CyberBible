/// Finds all chapters that contain a specific USFX element and prints a
/// short excerpt showing the element in context.
///
/// Usage: dart run tools/find_element.dart <element_name> [max_per_chapter]
/// Example: dart run tools/find_element.dart s 3
library;

import 'dart:io';
import 'package:sqlite3/sqlite3.dart';

void main(List<String> args) {
  if (args.isEmpty) {
    print('Usage: dart run tools/find_element.dart <element_name>');
    exit(1);
  }
  final tagName = args[0];
  final maxPerChapter = args.length > 1 ? int.parse(args[1]) : 2;

  final db = sqlite3.open('assets/bibles/eng-web.db');
  final rows = db.select(
    "SELECT book_code, number, content_usfx FROM chapters "
    "WHERE content_usfx LIKE '%<$tagName%'",
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
