/// Build tool: parses USFX XML Bible data and generates a SQLite Bible database.
///
/// Usage: `dart tools/build_bible_db.dart [path/to/usfx_directory]`
///
/// Default input: `tools/data/eng-web_usfx/`
/// Output: `assets/bibles/<translation-id>.db`
///
/// Step 1.4: USFX parsing — reads metadata, book names, and Bible text.
/// Step 1.5: SQLite generation — writes parsed data into a SQLite database.
///
/// Windows note: sqlite3.dll must be on PATH or in the working directory.
/// Download sqlite-dll-win-x64 from https://sqlite.org/download.html.
library;

import 'dart:io';

import 'package:sqlite3/sqlite3.dart';
import 'package:xml/xml.dart';

import 'package:cyber_bible_app/models/bible_info.dart';
import 'package:cyber_bible_app/models/bible_schema.dart';
import 'package:cyber_bible_app/models/book.dart';
import 'package:cyber_bible_app/models/chapter.dart';
import 'package:cyber_bible_app/models/verse.dart';

// ---------------------------------------------------------------------------
// Testament classification
// ---------------------------------------------------------------------------

/// All 39 Old Testament book codes (standard 3-letter USFX/Paratext IDs).
const _otBooks = {
  'GEN', 'EXO', 'LEV', 'NUM', 'DEU', 'JOS', 'JDG', 'RUT',
  '1SA', '2SA', '1KI', '2KI', '1CH', '2CH', 'EZR', 'NEH',
  'EST', 'JOB', 'PSA', 'PRO', 'ECC', 'SNG', 'ISA', 'JER',
  'LAM', 'EZK', 'DAN', 'HOS', 'JOL', 'AMO', 'OBA', 'JON',
  'MIC', 'NAM', 'HAB', 'ZEP', 'HAG', 'ZEC', 'MAL',
};

/// All 27 New Testament book codes (standard 3-letter USFX/Paratext IDs).
const _ntBooks = {
  'MAT', 'MRK', 'LUK', 'JHN', 'ACT', 'ROM', '1CO', '2CO',
  'GAL', 'EPH', 'PHP', 'COL', '1TH', '2TH', '1TI', '2TI',
  'TIT', 'PHM', 'HEB', 'JAS', '1PE', '2PE', '1JN', '2JN',
  '3JN', 'JUD', 'REV',
};

/// Books to skip — these are non-biblical content such as:
/// FRT = Preface/Front matter, INT = Introduction, BAK = Back matter,
/// GLO = Glossary, CNC = Concordance, OTH = Other,
/// XXA-XXG = Extra/placeholder books.
const _skipBooks = {
  'FRT', 'INT', 'BAK', 'GLO', 'CNC', 'OTH',
  'XXA', 'XXB', 'XXC', 'XXD', 'XXE', 'XXF', 'XXG',
};

/// Determines which testament a book belongs to based on its code.
/// Books not in OT or NT sets are classified as Deuterocanon (DC).
Testament _classifyBook(String code) {
  if (_otBooks.contains(code)) return Testament.ot;
  if (_ntBooks.contains(code)) return Testament.nt;
  return Testament.dc;
}

// ---------------------------------------------------------------------------
// Parsed result container
// ---------------------------------------------------------------------------

/// Holds all data extracted from a USFX Bible for downstream consumption
/// (e.g. writing to SQLite in Step 1.5).
class ParseResult {
  final BibleInfo bibleInfo;
  final List<Book> books;
  final List<Chapter> chapters;
  final List<Verse> verses;

  const ParseResult({
    required this.bibleInfo,
    required this.books,
    required this.chapters,
    required this.verses,
  });
}

// ---------------------------------------------------------------------------
// Metadata parser
// ---------------------------------------------------------------------------

/// Parses the DBL metadata XML file (eng-webmetadata.xml) into a [BibleInfo].
///
/// The metadata XML follows the Digital Bible Library (DBL) schema and contains
/// translation name, language, script direction, copyright, and other fields.
BibleInfo parseMetadata(File metadataFile) {
  final doc = XmlDocument.parse(metadataFile.readAsStringSync());
  final root = doc.rootElement; // <DBLMetadata>

  // Helper: find the first element with the given tag name anywhere in the
  // document and return its text content, or empty string if not found.
  String text(String tag) {
    final el = root.findAllElements(tag).firstOrNull;
    return el?.innerText.trim() ?? '';
  }

  final lang = root.findAllElements('language').firstOrNull;
  final country = root.findAllElements('country').firstOrNull;

  return BibleInfo(
    id: text('abbreviation'),
    name: text('name'),
    nameLocal: text('nameLocal'),
    abbreviation: text('abbreviationLocal'),
    description: text('description'),
    languageCode: lang?.findElements('iso').firstOrNull?.innerText.trim() ?? '',
    languageName: lang?.findElements('name').firstOrNull?.innerText.trim() ?? '',
    script: lang?.findElements('script').firstOrNull?.innerText.trim() ?? 'Latin',
    scriptDirection: lang
            ?.findElements('scriptDirection')
            .firstOrNull
            ?.innerText
            .trim() ??
        'LTR',
    countryCode:
        country?.findElements('iso').firstOrNull?.innerText.trim() ?? '',
    scope: text('scope'),
    copyright: _extractCopyright(root),
  );
}

/// Extracts copyright text from the metadata XML.
/// Tries `<copyright><statement>` first (preferred), falls back to `<scope>`.
String _extractCopyright(XmlElement root) {
  final stmt =
      root.findAllElements('statement').firstOrNull?.innerText.trim();
  if (stmt != null && stmt.isNotEmpty) return stmt;
  return root.findAllElements('scope').firstOrNull?.innerText.trim() ?? '';
}

// ---------------------------------------------------------------------------
// Book names parser
// ---------------------------------------------------------------------------

/// Simple container for a book's display names from BookNames.xml.
class _BookName {
  final String short;
  final String long;
  final String abbr;
  const _BookName(this.short, this.long, this.abbr);
}

/// Parses BookNames.xml into a map of book code → display names.
///
/// BookNames.xml has entries like:
/// ```xml
/// <book code="GEN" abbr="Gen" short="Genesis"
///       long="The First Book of Moses, Commonly Called Genesis" />
/// ```
Map<String, _BookName> _parseBookNames(File bookNamesFile) {
  final doc = XmlDocument.parse(bookNamesFile.readAsStringSync());
  final map = <String, _BookName>{};

  for (final el in doc.rootElement.findElements('book')) {
    final code = el.getAttribute('code');
    if (code == null) continue;
    map[code] = _BookName(
      el.getAttribute('short') ?? code,
      el.getAttribute('long') ?? code,
      el.getAttribute('abbr') ?? code,
    );
  }
  return map;
}

// ---------------------------------------------------------------------------
// USFX parser — main entry point
// ---------------------------------------------------------------------------

/// Parses a complete USFX Bible directory into structured data.
///
/// Reads three files:
///   1. metadataFile  — DBL metadata (translation info, language, copyright)
///   2. bookNamesFile — display names for each book (short, long, abbreviation)
///   3. usfxFile      — the actual Bible text in USFX XML format
///
/// Returns a [ParseResult] containing [BibleInfo], [Book]s, [Chapter]s (as raw
/// USFX fragments), and [Verse]s (as plain text for FTS5 search).
ParseResult parseUsfx(
  File usfxFile,
  File metadataFile,
  File bookNamesFile,
) {
  stdout.write('Parsing metadata...');
  final bibleInfo = parseMetadata(metadataFile);
  stdout.writeln(' done (${bibleInfo.abbreviation})');

  stdout.write('Parsing book names...');
  final bookNames = _parseBookNames(bookNamesFile);
  stdout.writeln(' done (${bookNames.length} books)');

  stdout.write('Loading USFX XML...');
  final doc = XmlDocument.parse(usfxFile.readAsStringSync());
  stdout.writeln(' done');

  final books = <Book>[];
  final chapters = <Chapter>[];
  final verses = <Verse>[];
  var sortOrder = 0;

  final bookElements = doc.rootElement.findElements('book');
  stdout.writeln('Processing ${bookElements.length} book elements...');

  for (final bookEl in bookElements) {
    final code = bookEl.getAttribute('id');
    if (code == null) continue;
    if (_skipBooks.contains(code)) {
      stdout.writeln('  [$code] skipped (non-canonical)');
      continue;
    }

    // Extract chapter data from this book element.
    final chapterMap = _extractChapters(bookEl);
    if (chapterMap.isEmpty) {
      stdout.writeln('  [$code] skipped (no chapters)');
      continue;
    }

    // Look up book names.
    final names = bookNames[code];
    final testament = _classifyBook(code);

    books.add(Book(
      code: code,
      sortOrder: sortOrder++,
      nameShort: names?.short ?? code,
      nameLong: names?.long ?? code,
      abbreviation: names?.abbr ?? code,
      testament: testament,
      chapterCount: chapterMap.length,
    ));

    // Process each chapter.
    var bookVerseCount = 0;
    for (final entry in chapterMap.entries) {
      final chapterNum = entry.key;
      final contentUsfx = entry.value;

      chapters.add(Chapter(
        bookCode: code,
        number: chapterNum,
        contentUsfx: contentUsfx,
      ));

      // Extract verse plain text from the USFX fragment.
      final chapterVerses = _extractVerses(code, chapterNum, contentUsfx);
      verses.addAll(chapterVerses);
      bookVerseCount += chapterVerses.length;
    }

    stdout.writeln(
      '  [$code] ${names?.short ?? code}: '
      '${chapterMap.length} chapters, '
      '$bookVerseCount verses '
      '(${testament.name.toUpperCase()})',
    );
  }

  return ParseResult(
    bibleInfo: bibleInfo,
    books: books,
    chapters: chapters,
    verses: verses,
  );
}

// ---------------------------------------------------------------------------
// Chapter extraction — groups book children by <c> milestones
// ---------------------------------------------------------------------------

/// Splits a `<book>` element's children into per-chapter USFX fragments.
///
/// USFX uses milestone `<c id="N" />` tags to mark chapter boundaries.
/// Everything between two `<c>` tags belongs to one chapter. Content before
/// the first `<c>` is book-level header material (title, TOC) and is skipped.
///
/// Returns a map of chapter number → raw USFX XML string for that chapter.
Map<int, String> _extractChapters(XmlElement bookEl) {
  final result = <int, String>{};
  var currentChapter = 0;
  final buffer = StringBuffer();

  for (final node in bookEl.children) {
    if (node is XmlElement && node.name.local == 'c') {
      // Save previous chapter.
      if (currentChapter > 0) {
        final content = buffer.toString().trim();
        if (content.isNotEmpty) {
          result[currentChapter] = content;
        }
      }
      // Start new chapter.
      currentChapter = int.tryParse(node.getAttribute('id') ?? '') ?? 0;
      buffer.clear();
    } else if (currentChapter > 0) {
      // Accumulate content for the current chapter.
      buffer.write(node.toXmlString());
    }
    // Nodes before the first <c> are book headers — skip them.
  }

  // Save the last chapter.
  if (currentChapter > 0) {
    final content = buffer.toString().trim();
    if (content.isNotEmpty) {
      result[currentChapter] = content;
    }
  }

  return result;
}

// ---------------------------------------------------------------------------
// Verse extraction — finds <v>...<ve/> ranges and strips to plain text
// ---------------------------------------------------------------------------

/// Regex to match a verse in USFX: `<v id="N" bcv="..."/>` ... `<ve/>`
/// Group 1 = verse ID (e.g. "1", "1a", "1-2")
/// Group 2 = raw XML content between the verse start and end markers
final _versePattern = RegExp(
  r'<v\s+id="([^"]+)"[^/]*/>(.*?)<ve\s*/>',
  dotAll: true,
);

/// Matches footnote elements: `<f>...</f>` (non-canonical editorial content).
final _footnotePattern = RegExp(r'<f\b[^>]*>.*?</f>', dotAll: true);

/// Matches cross-reference elements: `<x>...</x>` (reference links).
final _crossRefPattern = RegExp(r'<x\b[^>]*>.*?</x>', dotAll: true);

/// Matches any XML tag (opening, closing, or self-closing).
final _tagPattern = RegExp(r'<[^>]+>');

/// Matches one or more whitespace characters (for collapsing).
final _whitespacePattern = RegExp(r'\s+');

/// Extracts individual verses from a chapter's USFX fragment.
///
/// Uses regex to find milestone-style verse ranges that start with a
/// self-closing `<v id="N" .../>` tag and end with `<ve/>`, then strips
/// each verse's content down to plain text for search indexing.
List<Verse> _extractVerses(String bookCode, int chapter, String usfx) {
  final verses = <Verse>[];

  for (final match in _versePattern.allMatches(usfx)) {
    final verseId = match.group(1)!;
    final rawContent = match.group(2)!;
    final plainText = _stripToPlainText(rawContent);

    if (plainText.isNotEmpty) {
      verses.add(Verse(
        bookCode: bookCode,
        chapter: chapter,
        verse: verseId,
        textPlain: plainText,
      ));
    }
  }

  return verses;
}

/// Strips USFX XML markup down to plain canonical text.
///
/// Processing order:
///   1. Remove footnotes (`<f>...</f>`) — editorial, not canonical text
///   2. Remove cross-references (`<x>...</x>`) — reference markers
///   3. Parse the remaining XML fragment and extract inner text
///      (this strips all tags and decodes all XML entities and numeric
///      character references like `&#8217;` consistently)
///   4. Collapse whitespace to single spaces
String _stripToPlainText(String xml) {
  var text = xml;
  // Remove footnotes and cross-references (contain non-canonical text).
  text = text.replaceAll(_footnotePattern, '');
  text = text.replaceAll(_crossRefPattern, '');
  // Parse the remaining XML fragment so tags are stripped and all XML
  // entities/character references are decoded consistently.
  try {
    final wrapped = '<root>$text</root>';
    text = XmlDocument.parse(wrapped).rootElement.innerText;
  } catch (_) {
    // Fall back to regex-based stripping if XML parsing fails
    // (e.g. malformed fragments in some translations).
    text = text.replaceAll(_tagPattern, '');
  }
  // Collapse whitespace.
  text = text.replaceAll(_whitespacePattern, ' ').trim();
  return text;
}

// ---------------------------------------------------------------------------
// SQLite database writer
// ---------------------------------------------------------------------------

/// Writes all parsed Bible data into a new SQLite database at [outputPath].
///
/// Creates the output directory if needed and always starts fresh (deletes
/// any existing file). Runs all inserts inside a single transaction per
/// table for performance. Rebuilds the FTS5 full-text search index after
/// all verse rows are inserted.
///
/// On failure, any partially-written database is deleted so the next run
/// starts clean.
void writeSqlite(ParseResult result, String outputPath) {
  final outputFile = File(outputPath);

  // Create the output directory (e.g. assets/bibles/) if it does not exist.
  outputFile.parent.createSync(recursive: true);

  // Always start from a blank file to avoid schema conflicts on re-runs.
  if (outputFile.existsSync()) {
    outputFile.deleteSync();
    stdout.writeln('Deleted existing database: $outputPath');
  }

  final db = sqlite3.open(outputPath);

  // Track whether we completed successfully so we can clean up on failure.
  var success = false;

  try {
    // -------------------------------------------------------------------------
    // Performance PRAGMAs — suitable for a write-once build-time tool.
    // WAL mode avoids whole-file locking; synchronous=NORMAL is safe here
    // because we can always regenerate from source if a crash occurs.
    // -------------------------------------------------------------------------
    db.execute('PRAGMA journal_mode=WAL');
    db.execute('PRAGMA synchronous=NORMAL');
    db.execute('PRAGMA foreign_keys=ON');

    // -------------------------------------------------------------------------
    // Create tables and indexes from the shared BibleSchema definition.
    // -------------------------------------------------------------------------
    stdout.write('Creating schema...');
    for (final stmt in BibleSchema.createStatements) {
      db.execute(stmt);
    }
    for (final stmt in BibleSchema.createIndexes) {
      db.execute(stmt);
    }
    stdout.writeln(' done');

    // -------------------------------------------------------------------------
    // Insert bible_info — one row per database (describes this translation).
    // -------------------------------------------------------------------------
    stdout.write('Inserting translation metadata...');
    db.execute(
      '''
      INSERT INTO bible_info
        (id, name, name_local, abbreviation, description,
         language_code, language_name, script, script_direction,
         country_code, scope, copyright)
      VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
      ''',
      [
        result.bibleInfo.id,
        result.bibleInfo.name,
        result.bibleInfo.nameLocal,
        result.bibleInfo.abbreviation,
        result.bibleInfo.description,
        result.bibleInfo.languageCode,
        result.bibleInfo.languageName,
        result.bibleInfo.script,
        result.bibleInfo.scriptDirection,
        result.bibleInfo.countryCode,
        result.bibleInfo.scope,
        result.bibleInfo.copyright,
      ],
    );
    stdout.writeln(' done');

    // -------------------------------------------------------------------------
    // Insert books — one row per canonical book, in canonical order.
    // -------------------------------------------------------------------------
    stdout.write('Inserting ${result.books.length} books...');
    db.execute('BEGIN');
    final bookStmt = db.prepare(
      '''
      INSERT INTO books
        (code, sort_order, name_short, name_long, abbreviation, testament, chapter_count)
      VALUES (?, ?, ?, ?, ?, ?, ?)
      ''',
    );
    try {
      for (final book in result.books) {
        bookStmt.execute([
          book.code,
          book.sortOrder,
          book.nameShort,
          book.nameLong,
          book.abbreviation,
          book.testament.name, // 'ot', 'nt', or 'dc' — matches CHECK constraint
          book.chapterCount,
        ]);
      }
    } finally {
      // Always dispose the prepared statement, even if an insert throws.
      bookStmt.dispose();
    }
    db.execute('COMMIT');
    stdout.writeln(' done');

    // -------------------------------------------------------------------------
    // Insert chapters — stored as raw USFX fragments for runtime rendering.
    // -------------------------------------------------------------------------
    stdout.write('Inserting ${result.chapters.length} chapters...');
    db.execute('BEGIN');
    final chapterStmt = db.prepare(
      'INSERT INTO chapters (book_code, number, content_usfx) VALUES (?, ?, ?)',
    );
    try {
      for (final chapter in result.chapters) {
        chapterStmt.execute([
          chapter.bookCode,
          chapter.number,
          chapter.contentUsfx,
        ]);
      }
    } finally {
      chapterStmt.dispose();
    }
    db.execute('COMMIT');
    stdout.writeln(' done');

    // -------------------------------------------------------------------------
    // Insert verses — plain text only, used for full-text search (FTS5).
    // -------------------------------------------------------------------------
    stdout.write('Inserting ${result.verses.length} verses...');
    db.execute('BEGIN');
    final verseStmt = db.prepare(
      'INSERT INTO verses (book_code, chapter, verse, text_plain) VALUES (?, ?, ?, ?)',
    );
    try {
      for (final verse in result.verses) {
        verseStmt.execute([
          verse.bookCode,
          verse.chapter,
          verse.verse,
          verse.textPlain,
        ]);
      }
    } finally {
      verseStmt.dispose();
    }
    db.execute('COMMIT');
    stdout.writeln(' done');

    // -------------------------------------------------------------------------
    // Rebuild FTS5 index — scans all rows in the `verses` content table
    // and populates the verses_fts virtual table for full-text search.
    // -------------------------------------------------------------------------
    stdout.write('Building full-text search index...');
    db.execute(BibleSchema.rebuildFts);
    stdout.writeln(' done');

    success = true;

    // Report output file size.
    final sizeBytes = outputFile.lengthSync();
    final sizeMb = (sizeBytes / (1024 * 1024)).toStringAsFixed(1);
    stdout.writeln('');
    stdout.writeln('Database written: $outputPath');
    stdout.writeln('Database size:    $sizeMb MB ($sizeBytes bytes)');
  } finally {
    db.dispose();
    // Remove any partial database on failure so the next run starts clean.
    if (!success && outputFile.existsSync()) {
      outputFile.deleteSync();
      stdout.writeln('Removed partial database due to error.');
    }
  }
}

// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------

/// CLI entry point. Accepts an optional path to a USFX directory.
/// Defaults to tools/data/eng-web_usfx/ (downloaded by download_web_bible.ps1).
void main(List<String> args) {
  // Resolve directory: use CLI argument if provided, otherwise default
  // to the data directory relative to this script's location.
  final scriptDir = File(Platform.script.toFilePath()).parent.path;
  final defaultDataDir = '$scriptDir/data/eng-web_usfx';
  final dataDir = args.isNotEmpty ? args[0] : defaultDataDir;

  // Resolve input files.
  final usfxFile = File('$dataDir/eng-web_usfx.xml');
  final metadataFile = File('$dataDir/eng-webmetadata.xml');
  final bookNamesFile = File('$dataDir/BookNames.xml');

  for (final f in [usfxFile, metadataFile, bookNamesFile]) {
    if (!f.existsSync()) {
      stderr.writeln('ERROR: Required file not found: ${f.path}');
      stderr.writeln('Run tools/download_web_bible.ps1 first.');
      exit(1);
    }
  }

  stdout.writeln('=== Cyber Bible — Build Bible Database ===');
  stdout.writeln('Input: $dataDir');
  stdout.writeln('');

  final stopwatch = Stopwatch()..start();
  final result = parseUsfx(usfxFile, metadataFile, bookNamesFile);
  stopwatch.stop();

  // Print summary.
  stdout.writeln('');
  stdout.writeln('=== Parse Summary ===');
  stdout.writeln('Translation: ${result.bibleInfo.name} (${result.bibleInfo.abbreviation})');
  stdout.writeln('Language:    ${result.bibleInfo.languageName} (${result.bibleInfo.languageCode})');
  stdout.writeln('Scope:       ${result.bibleInfo.scope}');
  stdout.writeln('Direction:   ${result.bibleInfo.scriptDirection}');
  stdout.writeln('');

  final otBooks = result.books.where((b) => b.testament == Testament.ot);
  final ntBooks = result.books.where((b) => b.testament == Testament.nt);
  final dcBooks = result.books.where((b) => b.testament == Testament.dc);

  stdout.writeln('Books:    ${result.books.length} total '
      '(${otBooks.length} OT, ${ntBooks.length} NT, ${dcBooks.length} DC)');
  stdout.writeln('Chapters: ${result.chapters.length}');
  stdout.writeln('Verses:   ${result.verses.length}');
  stdout.writeln('');
  stdout.writeln('Parsed in ${stopwatch.elapsedMilliseconds} ms');

  // Spot-check: print first verse of Genesis to confirm parsing succeeded.
  final gen11 = result.verses.where(
    (v) => v.bookCode == 'GEN' && v.chapter == 1 && v.verse == '1',
  );
  if (gen11.isNotEmpty) {
    stdout.writeln('');
    stdout.writeln('Spot check — Genesis 1:1:');
    stdout.writeln('  "${gen11.first.textPlain}"');
  }

  // -------------------------------------------------------------------------
  // Step 1.5: Write parsed data to SQLite database.
  // Output goes to assets/bibles/<id>.db so it is bundled with the app.
  // -------------------------------------------------------------------------

  // Determine the output path relative to the project root.
  // This script lives in tools/, so the project root is one level up.
  final projectRoot = File(Platform.script.toFilePath()).parent.parent.path;
  final dbFilename = '${result.bibleInfo.id.toLowerCase()}.db';
  final outputPath = '$projectRoot/assets/bibles/$dbFilename';

  stdout.writeln('');
  stdout.writeln('=== Writing SQLite Database ===');
  stdout.writeln('Output: $outputPath');
  stdout.writeln('');

  try {
    writeSqlite(result, outputPath);
  } catch (e) {
    stderr.writeln('');
    stderr.writeln('ERROR writing database: $e');
    // Give a Windows-specific hint since sqlite3.dll is the most common cause
    // of failure on that platform.
    if (Platform.isWindows) {
      stderr.writeln('');
      stderr.writeln('On Windows, sqlite3.dll must be on your PATH or in the');
      stderr.writeln('current working directory. Download it from:');
      stderr.writeln('  https://sqlite.org/download.html  (sqlite-dll-win-x64)');
      stderr.writeln('Extract sqlite3.dll and place it alongside this script,');
      stderr.writeln('or add its containing folder to your system PATH.');
    }
    exit(1);
  }

  stdout.writeln('');
  stdout.writeln('=== Done ===');
  stdout.writeln('Step 1.5 complete. Database ready to be bundled in Step 1.6.');
}
