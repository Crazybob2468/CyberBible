/// Unit tests for the USFX utility functions in lib/utils/usfx_utils.dart.
///
/// Tests cover three public functions:
///   - [classifyBook] — maps 3-letter book codes to their testament
///   - [stripToPlainText] — strips USFX markup to searchable plain text
///   - [extractVerses] — extracts [Verse] objects from a USFX chapter fragment
///
/// These tests run without any file I/O or database access.
/// Run with: flutter test test/utils/usfx_utils_test.dart
library;

import 'package:flutter_test/flutter_test.dart';

import 'package:cyber_bible_app/models/book.dart';
import 'package:cyber_bible_app/utils/usfx_utils.dart';

void main() {
  // ---------------------------------------------------------------------------
  // classifyBook
  // ---------------------------------------------------------------------------

  group('classifyBook', () {
    /// Verify well-known Old Testament books are classified correctly.
    test('first OT book (GEN) is classified as ot', () {
      expect(classifyBook('GEN'), Testament.ot);
    });

    test('last OT book (MAL) is classified as ot', () {
      expect(classifyBook('MAL'), Testament.ot);
    });

    test('middle OT book (PSA) is classified as ot', () {
      expect(classifyBook('PSA'), Testament.ot);
    });

    /// Verify well-known New Testament books are classified correctly.
    test('first NT book (MAT) is classified as nt', () {
      expect(classifyBook('MAT'), Testament.nt);
    });

    test('last NT book (REV) is classified as nt', () {
      expect(classifyBook('REV'), Testament.nt);
    });

    test('middle NT book (ROM) is classified as nt', () {
      expect(classifyBook('ROM'), Testament.nt);
    });

    /// Verify Deuterocanon / Apocrypha books are classified correctly.
    /// These are books not in the standard Protestant OT or NT canon.
    test('Deuterocanon book (TOB) is classified as dc', () {
      expect(classifyBook('TOB'), Testament.dc);
    });

    test('Deuterocanon book (SIR) is classified as dc', () {
      expect(classifyBook('SIR'), Testament.dc);
    });

    test('unknown book code is classified as dc (fallback)', () {
      // Any code not in OT or NT sets falls back to dc, which is the safe
      // default for any translation that includes non-standard books.
      expect(classifyBook('XXX'), Testament.dc);
    });
  });

  // ---------------------------------------------------------------------------
  // stripToPlainText
  // ---------------------------------------------------------------------------

  group('stripToPlainText', () {
    /// Basic XML tag stripping.
    test('removes simple XML tags', () {
      expect(stripToPlainText('<wj>text</wj>'), 'text');
    });

    test('removes self-closing tags', () {
      // Self-closing milestone tags like <milestone/> should leave no residue.
      expect(stripToPlainText('hello <milestone/> world'), 'hello world');
    });

    /// Footnote and cross-reference removal.
    test('removes footnote elements entirely', () {
      // Footnotes are non-canonical and must not appear in search results.
      expect(
        stripToPlainText('word<f caller="+">footnote text</f> more'),
        'word more',
      );
    });

    test('removes cross-reference elements entirely', () {
      // Cross-references are not part of the canonical verse text.
      expect(
        stripToPlainText('word<x caller="+">Gen 1:1</x> more'),
        'word more',
      );
    });

    test('removes both footnotes and cross-references', () {
      expect(
        stripToPlainText(
          'beginning<f>note</f> of <x>ref</x> creation',
        ),
        'beginning of creation',
      );
    });

    /// XML entity decoding — the xml package handles these during parsing.
    test('decodes &amp; entity', () {
      expect(stripToPlainText('bread &amp; fish'), 'bread & fish');
    });

    test('decodes &quot; entity', () {
      expect(stripToPlainText('he said &quot;peace&quot;'), 'he said "peace"');
    });

    /// Whitespace normalisation.
    test('collapses multiple spaces to one', () {
      expect(stripToPlainText('a  b   c'), 'a b c');
    });

    test('collapses newlines and tabs to a single space', () {
      expect(stripToPlainText('a\n\tb'), 'a b');
    });

    test('trims leading and trailing whitespace', () {
      expect(stripToPlainText('  hello  '), 'hello');
    });

    /// Edge cases.
    test('returns empty string for empty input', () {
      expect(stripToPlainText(''), '');
    });

    test('returns empty string for whitespace-only input', () {
      expect(stripToPlainText('   '), '');
    });

    test('handles text with no markup', () {
      expect(stripToPlainText('plain text'), 'plain text');
    });

    /// Realistic USFX fragment — paragraph with word-of-Jesus markup.
    test('strips realistic USFX verse fragment to plain text', () {
      const usfx =
          '<p><wj>For God so loved the world,</wj>'
          '<f caller="+"><fr>3:16</fr> <ft>footnote</ft></f>'
          ' that he gave</p>';
      expect(
        stripToPlainText(usfx),
        'For God so loved the world, that he gave',
      );
    });
  });

  // ---------------------------------------------------------------------------
  // extractVerses
  // ---------------------------------------------------------------------------

  group('extractVerses', () {
    /// Helper: builds a minimal USFX verse fragment string.
    ///
    /// USFX uses a milestone pattern: a self-closing `<v>` start marker,
    /// the verse content, then a self-closing `<ve/>` end marker.
    String verse(String id, String content) =>
        '<v id="$id" bcv="GEN.1.$id"/>$content<ve/>';

    test('extracts a single verse', () {
      final usfx = verse('1', 'In the beginning');
      final verses = extractVerses('GEN', 1, usfx);

      expect(verses, hasLength(1));
      expect(verses.first.verse, '1');
      expect(verses.first.textPlain, 'In the beginning');
      expect(verses.first.bookCode, 'GEN');
      expect(verses.first.chapter, 1);
    });

    test('extracts multiple verses in order', () {
      final usfx = verse('1', 'First') + verse('2', 'Second') + verse('3', 'Third');
      final verses = extractVerses('GEN', 1, usfx);

      expect(verses, hasLength(3));
      expect(verses[0].verse, '1');
      expect(verses[1].verse, '2');
      expect(verses[2].verse, '3');
    });

    test('handles segmented verse IDs (e.g. 1a)', () {
      // Some Deuterocanon texts use "1a", "1b" style IDs.
      final usfx = verse('1a', 'First segment') + verse('1b', 'Second segment');
      final verses = extractVerses('GEN', 1, usfx);

      expect(verses, hasLength(2));
      expect(verses[0].verse, '1a');
      expect(verses[1].verse, '1b');
    });

    test('handles bridged verse IDs (e.g. 1-2)', () {
      // Some translations merge two source verses into one unit.
      final usfx = verse('1-2', 'Combined verse');
      final verses = extractVerses('GEN', 1, usfx);

      expect(verses, hasLength(1));
      expect(verses.first.verse, '1-2');
    });

    test('skips verses whose plain text is empty after stripping', () {
      // A verse with only markup and no canonical text should be omitted.
      final usfx = verse('1', '<milestone/>') + verse('2', 'Real text');
      final verses = extractVerses('GEN', 1, usfx);

      // Only the verse with real text should be present.
      expect(verses, hasLength(1));
      expect(verses.first.verse, '2');
    });

    test('strips USFX markup from verse content', () {
      // Footnotes and tags inside verse content must be stripped.
      final usfx = verse(
        '16',
        '<wj>For God so loved the world,</wj>'
        '<f caller="+">footnote</f>'
        ' that he gave',
      );
      final verses = extractVerses('JHN', 3, usfx);

      expect(verses, hasLength(1));
      expect(
        verses.first.textPlain,
        'For God so loved the world, that he gave',
      );
    });

    test('returns empty list when USFX has no verse markers', () {
      // Chapter header content before any <v> tags should produce no verses.
      const usfx = '<h>Genesis</h><toc1>Genesis</toc1>';
      final verses = extractVerses('GEN', 1, usfx);
      expect(verses, isEmpty);
    });
  });
}
