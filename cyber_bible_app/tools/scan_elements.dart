/// Scans ALL chapters in the database and reports which USFX element names are
/// actually present, sorted by frequency.  This is a one-off diagnostic tool.
///
/// Usage: dart run tools/scan_elements.dart
// ignore_for_file: avoid_print
// CLI tool — print() is the correct output mechanism for a terminal script.
library;

import 'package:sqlite3/sqlite3.dart';

/// Entry point: scans every chapter in `assets/bibles/eng-web.db`, tallies
/// each USFX element name by total occurrence count, and prints the results
/// sorted from most to least frequent.
///
/// This is a one-off diagnostic tool used to discover which USFX elements are
/// actually present in the WEB Bible so the renderer can handle them all.
///
/// Run from the `cyber_bible_app/` directory:
/// ```
/// dart run tools/scan_elements.dart
/// ```
void main() {
  final db = sqlite3.open('assets/bibles/eng-web.db');
  final rows = db.select('SELECT content_usfx FROM chapters');

  final tagPattern = RegExp(r'<([a-zA-Z][a-zA-Z0-9]*)[\s>/]');
  final counts = <String, int>{};

  for (final row in rows) {
    final usfx = row['content_usfx'] as String;
    for (final match in tagPattern.allMatches(usfx)) {
      final tag = match.group(1)!;
      counts[tag] = (counts[tag] ?? 0) + 1;
    }
  }

  // Sort by count descending.
  final sorted = counts.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  for (final e in sorted) {
    print('${e.key.padRight(12)} ${e.value}');
  }

  db.close();
}
