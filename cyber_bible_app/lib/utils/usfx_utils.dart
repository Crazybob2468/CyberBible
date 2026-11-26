/// Pure utility functions for parsing USFX XML Bible content.
///
/// These functions are extracted from the build tool so they can be:
///   - Shared by the CLI build tool (`tools/build_bible_db.dart`)
///   - Unit tested independently (see `test/utils/usfx_utils_test.dart`)
///
/// All functions in this file are stateless and have no I/O side effects.
/// They operate on strings or [XmlElement] values and return Dart objects.
library;

import 'package:xml/xml.dart';

import 'package:cyber_bible_app/models/book.dart';
import 'package:cyber_bible_app/models/footnote.dart';
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

/// Determines which testament a book belongs to based on its 3-letter code.
///
/// Returns [Testament.ot] for Old Testament books, [Testament.nt] for New
/// Testament books, and [Testament.dc] for anything else (Deuterocanon /
/// Apocrypha).
///
/// Example:
/// ```dart
/// classifyBook('GEN'); // Testament.ot
/// classifyBook('MAT'); // Testament.nt
/// classifyBook('TOB'); // Testament.dc
/// ```
Testament classifyBook(String code) {
  if (_otBooks.contains(code)) return Testament.ot;
  if (_ntBooks.contains(code)) return Testament.nt;
  return Testament.dc;
}

// ---------------------------------------------------------------------------
// Chapter extraction — groups book children by <c> milestones
// ---------------------------------------------------------------------------

/// Splits a USFX `<book>` element's children into per-chapter USFX fragments.
///
/// USFX uses milestone `<c id="N" />` tags to mark chapter boundaries.
/// Everything between two `<c>` tags belongs to one chapter. Content before
/// the first `<c>` is book-level header material (e.g. title, TOC) and is
/// silently skipped.
///
/// Returns a map of chapter number → raw USFX XML string for that chapter.
/// Chapters with empty content are omitted.
///
/// Example output for a book with 3 chapters:
/// ```dart
/// { 1: '<p><v id="1" .../> ... <ve/></p>', 2: '...', 3: '...' }
/// ```
Map<int, String> extractChapters(XmlElement bookEl) {
  final result = <int, String>{};
  var currentChapter = 0;
  final buffer = StringBuffer();

  for (final node in bookEl.children) {
    if (node is XmlElement && node.name.local == 'c') {
      // Save the content accumulated for the previous chapter.
      if (currentChapter > 0) {
        final content = buffer.toString().trim();
        if (content.isNotEmpty) {
          result[currentChapter] = content;
        }
      }
      // Start collecting content for the new chapter number.
      currentChapter = int.tryParse(node.getAttribute('id') ?? '') ?? 0;
      buffer.clear();
    } else if (currentChapter > 0) {
      // Accumulate child nodes as XML strings for the current chapter.
      buffer.write(node.toXmlString());
    }
    // Nodes before the first <c> are book headers — skip them.
  }

  // Save the last chapter (there is no trailing <c> to trigger the save above).
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

/// Matches a verse in USFX: `<v id="N" bcv="..."/>` ... `<ve/>`
///
/// Group 1 = verse ID string (e.g. "1", "1a", "1-2")
/// Group 2 = raw XML content between the verse start and end markers
final _versePattern = RegExp(
  r'<v\s+id="([^"]+)"[^/]*/>(.*?)<ve\s*/>',
  dotAll: true,
);

/// Matches footnote elements `<f>...</f>` (non-canonical editorial content
/// that must be excluded from searchable plain text).
final _footnotePattern = RegExp(r'<f\b[^>]*>.*?</f>', dotAll: true);

/// Matches cross-reference elements `<x>...</x>` (reference pointers that
/// must be excluded from searchable plain text).
final _crossRefPattern = RegExp(r'<x\b[^>]*>.*?</x>', dotAll: true);

/// Matches any XML tag (opening, closing, or self-closing) for fallback
/// plain-text stripping when XML parsing fails on malformed fragments.
final _tagPattern = RegExp(r'<[^>]+>');

/// Matches one or more whitespace characters (used to collapse runs of
/// spaces and newlines down to a single space after markup is removed).
final _whitespacePattern = RegExp(r'\s+');

/// Extracts individual [Verse] objects from a chapter's USFX XML fragment.
///
/// Uses [_versePattern] to find milestone-style verse ranges and strips each
/// verse's content to plain text (via [stripToPlainText]) for search indexing.
/// Verses whose plain text is empty after stripping are skipped.
///
/// [bookCode] — 3-letter book code (e.g. "GEN").
/// [chapter]  — 1-based chapter number.
/// [usfx]     — raw USFX XML string for the chapter (from [extractChapters]).
List<Verse> extractVerses(String bookCode, int chapter, String usfx) {
  final verses = <Verse>[];

  for (final match in _versePattern.allMatches(usfx)) {
    final verseId = match.group(1)!;
    final rawContent = match.group(2)!;
    final plainText = stripToPlainText(rawContent);

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

/// Extracts complete USFX footnotes and associates each with its current verse.
///
/// USFX verse boundaries are represented by `<v id="…"/>` and `<ve/>`
/// milestones. The traversal follows document order, retaining the exact
/// string verse ID and assigning a zero-based [Footnote.ordinal] per verse.
/// A footnote outside an active verse uses its USFX `<fr>` label when that
/// label unambiguously identifies a verse in this chapter. This supports
/// chapter-level notes such as verse `0` and notes attached to section
/// headings. Ambiguous source placement is rejected rather than silently lost.
///
/// [bookCode] — 3-letter book code (e.g. `GEN`).
/// [chapter] — 1-based chapter number.
/// [usfx] — raw USFX fragment for the chapter.
List<Footnote> extractFootnotes(String bookCode, int chapter, String usfx) {
  final document = XmlDocument.parse('<root>$usfx</root>');
  final footnotes = <Footnote>[];
  final nextOrdinalByVerse = <String, int>{};
  String? currentVerse;

  // Walk the chapter as a stream so verse milestone state naturally carries
  // across paragraph and inline-element boundaries.
  void visit(XmlNode node) {
    if (node is! XmlElement) return;

    switch (node.name.local) {
      case 'v':
        currentVerse = node.getAttribute('id');
        return;
      case 've':
        currentVerse = null;
        return;
      case 'f':
        // Most notes appear within a verse's milestone range. Some USFX sources
        // place notes in headings or before verse 1, where <fr> is the only
        // explicit source association (for example "3:24" or "1:0").
        final verse =
            currentVerse ?? _verseIdFromFootnoteReference(node, chapter);
        if (verse == null || verse.isEmpty) {
          throw FormatException(
            'Could not associate a USFX footnote with a verse in '
            '$bookCode $chapter.',
            node.toXmlString(),
          );
        }

        final ordinal = nextOrdinalByVerse[verse] ?? 0;
        nextOrdinalByVerse[verse] = ordinal + 1;
        final sourceCaller = node.getAttribute('caller');
        final caller = sourceCaller == null || sourceCaller.trim().isEmpty
            ? '*'
            : sourceCaller;
        footnotes.add(
          Footnote(
            bookCode: bookCode,
            chapter: chapter,
            verse: verse,
            ordinal: ordinal,
            caller: caller,
            rawUsfx: node.toXmlString(),
          ),
        );
        // The entire element is retained above; nested nodes are part of the
        // note body, not additional chapter-level footnotes.
        return;
    }

    for (final child in node.children) {
      visit(child);
    }
  }

  visit(document.rootElement);
  return footnotes;
}

/// Reads the verse suffix from an unambiguous same-chapter `<fr>` label.
///
/// The returned ID remains a string so source-specific IDs such as `0`, `1a`,
/// and `1-2` are preserved without numeric normalization.
String? _verseIdFromFootnoteReference(XmlElement footnote, int chapter) {
  final reference = footnote.findElements('fr').firstOrNull?.innerText;
  if (reference == null) return null;

  final normalized = reference.replaceAll(_whitespacePattern, ' ').trim();
  final match = RegExp(
    '^${RegExp.escape(chapter.toString())}:'
    r'([0-9]+[a-zA-Z]?(?:-[0-9]+[a-zA-Z]?)?)$',
  ).firstMatch(normalized);
  return match?.group(1);
}

/// Strips USFX XML markup down to plain canonical text suitable for indexing.
///
/// Processing order:
///   1. Remove footnotes (`<f>...</f>`) — editorial, not canonical
///   2. Remove cross-references (`<x>...</x>`) — reference markers
///   3. Parse the remaining XML fragment to extract decoded inner text
///      (handles XML entities and numeric character references like `&#8217;`)
///   4. Collapse whitespace to single spaces and trim
///
/// Falls back to regex-based tag stripping if XML parsing fails (e.g. a
/// malformed fragment in a minority-language translation).
String stripToPlainText(String xml) {
  var text = xml;

  // Remove footnotes and cross-references — these contain non-canonical text
  // that should not appear in search results.
  text = text.replaceAll(_footnotePattern, '');
  text = text.replaceAll(_crossRefPattern, '');

  // Parse the remaining XML so that all tags are removed and all XML entities
  // and character references (e.g. &amp; &#8217;) are decoded consistently.
  try {
    final wrapped = '<root>$text</root>';
    text = XmlDocument.parse(wrapped).rootElement.innerText;
  } catch (_) {
    // Malformed XML fragment — fall back to simple regex tag removal.
    // This loses entity decoding but preserves the text content.
    text = text.replaceAll(_tagPattern, '');
  }

  // Collapse any runs of whitespace (spaces, newlines, tabs) to a single space.
  text = text.replaceAll(_whitespacePattern, ' ').trim();
  return text;
}
