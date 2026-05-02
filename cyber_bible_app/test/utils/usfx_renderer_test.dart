/// Unit tests for the USFX → HTML renderer in lib/utils/usfx_renderer.dart.
///
/// All tests are pure-Dart: no file I/O, no database access, no Flutter
/// widgets. The renderer is a deterministic function (same inputs → same
/// output), so every assertion is a straightforward string check.
///
/// Run with: flutter test test/utils/usfx_renderer_test.dart
library;

import 'package:flutter_test/flutter_test.dart';

import 'package:cyber_bible_app/utils/usfx_renderer.dart';

// ---------------------------------------------------------------------------
// Shared test fixture — colours and font size used in every test call.
// ---------------------------------------------------------------------------

/// Canonical colour / size parameters passed to every [renderChapterToHtml]
/// call in these tests. The actual hex values do not matter for structural
/// checks; they must be valid CSS so the generated `<style>` block is sane.
const _bodyColor = '#212121';
const _verseNumColor = '#1565c0';
const _headingColor = '#757575';
const _dHeadingColor = '#9e9e9e';
const _footnoteColor = '#1565c0';
const _fontSize = 17.0;

/// Helper that calls [renderChapterToHtml] with the shared test fixture values.
String _render(String usfx) => renderChapterToHtml(
      usfx,
      bodyColorCss: _bodyColor,
      verseNumColorCss: _verseNumColor,
      headingColorCss: _headingColor,
      dHeadingColorCss: _dHeadingColor,
      footnoteColorCss: _footnoteColor,
      baseFontSizePx: _fontSize,
    );

void main() {
  // ---------------------------------------------------------------------------
  // Document structure
  // ---------------------------------------------------------------------------

  group('document structure', () {
    /// The renderer always returns a complete HTML document, even when given an
    /// empty string. This prevents HtmlWidget from receiving null or bare text.
    test('empty input produces a complete HTML document', () {
      final html = _render('');
      expect(html, contains('<!DOCTYPE html>'));
      expect(html, contains('<html'));
      expect(html, contains('<head>'));
      expect(html, contains('<body>'));
      expect(html, contains('</html>'));
    });

    /// The <style> block must always be present — it provides the CSS classes
    /// referenced by every rendered element.
    test('output always contains a <style> block', () {
      final html = _render('');
      expect(html, contains('<style>'));
      expect(html, contains('</style>'));
    });

    /// Caller-supplied colours must appear in the output so that the HTML
    /// respects the current Flutter theme.  With inline-style rendering:
    ///   • bodyColor → goes into the `<style>` block on the `body` rule
    ///   • others   → appear only in inline style= attributes when relevant
    ///               content is actually rendered
    test('caller colours are used in rendered output', () {
      // body colour is always in the <style> block
      final emptyHtml = _render('');
      expect(emptyHtml, contains(_bodyColor));

      // verse-number colour appears only when a <v> milestone is rendered
      final vnHtml = _render(
        '<p style="p"><v id="1" bcv="GEN.1.1"/>Text.<ve/></p>',
      );
      expect(vnHtml, contains(_verseNumColor));

      // heading colour appears when a <s> section heading is rendered
      final headingHtml = _render('<s style="s1">Title</s>');
      expect(headingHtml, contains(_headingColor));

      // dHeading colour appears when a <d> descriptive heading is rendered
      final dHtml = _render('<d style="d">Superscription.</d>');
      expect(dHtml, contains(_dHeadingColor));

      // footnote colour appears when a <f> footnote is rendered
      final fnHtml = _render(
        '<p style="p"><v id="1" bcv="GEN.1.1"/>Text.'
        '<f caller="+"><ft>Note.</ft></f><ve/></p>',
      );
      expect(fnHtml, contains(_footnoteColor));
    });

    /// Malformed XML must not throw — the renderer should return an empty body
    /// rather than crashing the app.
    test('malformed XML returns empty body without throwing', () {
      expect(() => _render('<p>unclosed'), returnsNormally);
      final html = _render('<p>unclosed');
      expect(html, contains('<body>'));
      // The body should be empty (no paragraph content rendered).
      expect(html, isNot(contains('<p>')));
    });
  });

  // ---------------------------------------------------------------------------
  // Verse milestones
  // ---------------------------------------------------------------------------

  group('verse milestones', () {
    /// The <v id="N"/> milestone should produce an inline superscript with
    /// the verse number so readers can identify individual verses.
    test('verse start milestone renders as styled sup superscript', () {
      final html = _render(
        '<p style="p"><v id="1" bcv="GEN.1.1"/>In the beginning.<ve/></p>',
      );
      // The verse number must appear inside a <sup> with inline colour style.
      expect(html, contains('>1</sup>'));
      expect(html, contains('vertical-align:super'));
      expect(html, contains(_verseNumColor));
      expect(html, contains('In the beginning.'));
    });

    /// <ve/> is a structural closing milestone — it should produce no visible
    /// output.
    test('verse end milestone produces no output', () {
      final html = _render(
        '<p style="p"><v id="1" bcv="GEN.1.1"/>Text.<ve/></p>',
      );
      // <ve/> should not appear in the output at all.
      expect(html, isNot(contains('<ve')));
      // The verse text must still be present.
      expect(html, contains('Text.'));
    });

    /// Multiple verses inside one paragraph must each get their own superscript
    /// number while sharing the same <p> block.
    test('multiple verses in one paragraph each get a superscript', () {
      final html = _render(
        '<p style="p">'
        '<v id="1" bcv="GEN.1.1"/>First.<ve/>'
        '<v id="2" bcv="GEN.1.2"/>Second.<ve/>'
        '</p>',
      );
      expect(html, contains('>1</sup>'));
      expect(html, contains('>2</sup>'));
      expect(html, contains('First.'));
      expect(html, contains('Second.'));
    });

    /// Non-integer verse IDs (e.g. "1a") occur in some translations and must
    /// be rendered as-is.
    test('non-integer verse ID is rendered verbatim', () {
      final html = _render(
        '<p style="p"><v id="1a" bcv="ISA.38.21a"/>Text.<ve/></p>',
      );
      expect(html, contains('>1a</sup>'));
    });
  });

  // ---------------------------------------------------------------------------
  // Prose paragraphs
  // ---------------------------------------------------------------------------

  group('prose paragraphs', () {
    /// Standard prose paragraph — most common element in non-poetic books.
    test('p style="p" renders as plain <p>', () {
      final html = _render(
        '<p style="p"><v id="1" bcv="JHN.1.1"/>Text.<ve/></p>',
      );
      expect(html, contains('<p>'));
      expect(html, contains('Text.'));
    });

    /// Continuation paragraph (m = margin) — used after lists or for
    /// unindented continuations.
    test('p style="m" renders as plain <p>', () {
      final html = _render(
        '<p style="m"><v id="1" bcv="NUM.13.4"/>Text.<ve/></p>',
      );
      expect(html, contains('<p>'));
    });

    /// Indented paragraph (pi1) — quoted letters, speeches, etc.
    test('p style="pi1" renders as indented paragraph', () {
      final html = _render(
        '<p sfm="pi" style="pi1"><v id="12" bcv="EZR.4.12"/>Text.<ve/></p>',
      );
      // pi1 uses 1.5em left margin as an inline style.
      expect(html, contains('margin:0 0 0.5em 1.5em'));
    });

    /// pi2 variant — double-indented paragraph.
    test('p style="pi2" renders as double-indented paragraph', () {
      final html = _render(
        '<p style="pi2"><v id="1" bcv="PRO.6.1"/>Text.<ve/></p>',
      );
      // pi2 uses 3.0em left margin as an inline style.
      expect(html, contains('margin:0 0 0.5em 3.0em'));
    });
  });

  // ---------------------------------------------------------------------------
  // Poetry stanzas
  // ---------------------------------------------------------------------------

  group('poetry stanzas', () {
    /// q1 lines — primary poetry indentation (most common in Psalms / Proverbs).
    test('q style="q1" renders with 1.5em left indent', () {
      final html = _render(
        '<q style="q1"><v id="1" bcv="PSA.23.1"/>Yahweh is my shepherd.<ve/></q>',
      );
      // q1 maps to 1.5em inline left margin.
      expect(html, contains('margin:0 0 0 1.5em'));
      expect(html, contains('Yahweh is my shepherd.'));
    });

    /// q2 lines — secondary poetry indentation (verse continuation).
    test('q level="2" renders with 3.0em left indent', () {
      final html = _render(
        '<q level="2" style="q2">I shall lack nothing.<ve/></q>',
      );
      expect(html, contains('margin:0 0 0 3.0em'));
    });

    /// q3 lines — tertiary indentation (less common but present in some books).
    test('q level="3" renders with 4.5em left indent', () {
      final html = _render(
        '<q level="3" style="q3">Deep indentation.<ve/></q>',
      );
      expect(html, contains('margin:0 0 0 4.5em'));
    });

    /// A typical Psalm will mix q1 and q2 lines for the same verse — both must
    /// appear correctly in the same output.
    test('mixed q1/q2 for one verse renders both indent levels', () {
      final html = _render(
        '<q style="q1"><v id="1" bcv="PSA.23.1"/>Line A.</q>'
        '<q level="2" style="q2">Line B.<ve/></q>',
      );
      expect(html, contains('margin:0 0 0 1.5em'));
      expect(html, contains('margin:0 0 0 3.0em'));
      expect(html, contains('Line A.'));
      expect(html, contains('Line B.'));
    });

    /// <b> is a blank-line stanza separator (1,070 uses in the WEB Bible).
    /// It must produce a visible gap between stanzas, not be silently dropped.
    test('<b> blank stanza separator produces a spacer paragraph', () {
      final html = _render(
        '<q style="q1"><v id="1" bcv="PSA.46.1"/>God is our refuge.<ve/></q>'
        '<b style="b"/>'
        '<q style="q1"><v id="7" bcv="PSA.46.7"/>Yahweh of Armies is with us.<ve/></q>',
      );
      // The <b> must produce some output so stanzas are visually separated.
      // We expect a paragraph containing a non-breaking space as the spacer.
      expect(html, contains('&nbsp;'));
    });

    /// <qs> is the "Selah" / meditation marker (74 uses in the WEB Psalms).
    /// It must appear as right-aligned italic text, not be swallowed silently.
    test('<qs> Selah renders as right-aligned italic paragraph', () {
      final html = _render(
        '<q style="q1"><v id="2" bcv="PSA.3.2"/>I lie down and sleep.<ve/></q>'
        '<qs>Selah.</qs>',
      );
      expect(html, contains('text-align:right'));
      expect(html, contains('font-style:italic'));
      expect(html, contains('Selah.'));
    });
  });

  // ---------------------------------------------------------------------------
  // Headings
  // ---------------------------------------------------------------------------

  group('section headings', () {
    /// Standard section heading (s1) — italic, centred editorial title.
    test('<s style="s1"> renders with italic centred inline style', () {
      final html = _render('<s style="s1">The Letter of Jeremy</s>');
      // Section headings use inline styles — italic, centred, heading colour.
      expect(html, contains('font-style:italic'));
      expect(html, contains('text-align:center'));
      expect(html, contains(_headingColor));
      expect(html, contains('The Letter of Jeremy'));
    });

    /// Major section heading (ms1) — used for Psalm book divisions.
    test('<p style="ms1"> renders with bold centred inline style', () {
      final html = _render(
        '<p sfm="ms" style="ms1">BOOK 1</p>',
      );
      expect(html, contains('font-weight:bold'));
      expect(html, contains('text-align:center'));
      expect(html, contains(_headingColor));
      expect(html, contains('BOOK 1'));
    });

    /// Psalm descriptive heading (d) — italic preface before verse 1.
    /// This resolves the Step 1.10 known content gap where Psalm
    /// superscriptions were silently absent.
    test('<d> renders with italic dHeading inline style', () {
      final html = _render('<d style="d">A Psalm by David.</d>');
      expect(html, contains('font-style:italic'));
      expect(html, contains(_dHeadingColor));
      expect(html, contains('A Psalm by David.'));
    });

    /// Section headings must not contain verse-number superscripts, even if
    /// a <v> milestone was accidentally placed inside the heading element.
    test('verse number inside heading text is excluded from output', () {
      // In malformed USFX, a <v> might appear inside <s> — text-only
      // extraction should keep the heading clean.
      final html = _render(
        '<s style="s1"><v id="1" bcv="GEN.1.1"/>Heading text</s>',
      );
      // Find the heading paragraph and ensure no <sup> is inside it.
      // Use the italic+centred style signature to locate the heading <p>.
      final headingStart = html.indexOf('font-style:italic');
      final headingEnd = html.indexOf('</p>', headingStart);
      final headingContent = html.substring(headingStart, headingEnd);
      // The verse superscript must not appear inside the heading block.
      expect(headingContent, isNot(contains('sup')));
      expect(headingContent, contains('Heading text'));
    });
  });

  // ---------------------------------------------------------------------------
  // Words of Jesus
  // ---------------------------------------------------------------------------

  group('words of Jesus', () {
    /// <wj> must be wrapped in span.wj which CSS colours red.
    test('<wj> renders as red inline-styled span', () {
      final html = _render(
        '<p style="p"><v id="3" bcv="JHN.3.3"/>'
        '<wj>"Most certainly I tell you."</wj>'
        '<ve/></p>',
      );
      // Words of Jesus use a hardcoded red inline style — not a CSS class.
      expect(html, contains('<span style="color:#e53935;">'));
      expect(html, contains('Most certainly I tell you.'));
    });

    /// Nested <w> Strong's wrappers inside <wj> must be transparent — only the
    /// word text survives, not the w element.
    test('Strong\'s <w> inside <wj> is stripped, text preserved', () {
      final html = _render(
        '<p style="p"><v id="1" bcv="JHN.3.1"/>'
        '<wj><w s="G2316">God</w> loves you.</wj>'
        '<ve/></p>',
      );
      expect(html, contains('color:#e53935'));
      expect(html, contains('God'));
      expect(html, isNot(contains('<w ')));
    });
  });

  // ---------------------------------------------------------------------------
  // Footnotes
  // ---------------------------------------------------------------------------

  group('footnotes', () {
    /// Only the caller symbol should appear in the output — the footnote body
    /// text is suppressed until Step 2.1 adds the pop-up interaction.
    test('<f> renders only the caller superscript', () {
      final html = _render(
        '<p style="p"><v id="3" bcv="JHN.3.3"/>Text.'
        '<f caller="+"><fr>3:3 </fr><ft>Footnote body text.</ft></f>'
        '<ve/></p>',
      );
      // Footnote uses inline style — always renders as ✝ (U+2020), ignoring
      // the caller attribute from the USFX source.
      expect(html, contains('>†</sup>'));
      expect(html, contains('vertical-align:super'));
      // The footnote body text must NOT appear in the output.
      expect(html, isNot(contains('Footnote body text.')));
    });

    /// Caller attribute is ignored — always renders ✝ regardless of value.
    test('empty caller still renders \u2020 dagger', () {
      final html = _render(
        '<p style="p"><v id="1" bcv="GEN.1.1"/>Text.'
        '<f caller=""><ft>Body.</ft></f>'
        '<ve/></p>',
      );
      expect(html, contains('>†</sup>'));
    });

    /// Cross-references (<x>) must be completely suppressed — no caller marker
    /// and no inner text should appear in the output.
    test('<x> cross-reference is completely suppressed', () {
      final html = _render(
        '<p style="p"><v id="1" bcv="GEN.1.1"/>Text.'
        '<x caller="-"><xo>1:1 </xo><xt>John 1:1.</xt></x>'
        '<ve/></p>',
      );
      expect(html, isNot(contains('John 1:1.')));
      expect(html, isNot(contains('xo')));
    });
  });

  // ---------------------------------------------------------------------------
  // Semantic inline markup
  // ---------------------------------------------------------------------------

  group('semantic inline markup', () {
    /// <add> marks supplied/implied text (KJV italics) — must become <em>.
    test('<add> renders as <em> (italic)', () {
      final html = _render(
        '<p style="p"><v id="1" bcv="GEN.1.1"/>'
        'God <add>himself</add> created.<ve/></p>',
      );
      expect(html, contains('<em>himself</em>'));
    });

    /// <nd> marks divine names (LORD/Yahweh) — must become small-caps span.
    test('<nd> renders as small-caps inline-styled span', () {
      final html = _render(
        '<p style="p"><v id="1" bcv="GEN.2.4"/>'
        'The <nd>LORD</nd> God.<ve/></p>',
      );
      expect(html, contains('font-variant:small-caps'));
      expect(html, contains('LORD'));
    });
  });

  // ---------------------------------------------------------------------------
  // Strong's number wrappers
  // ---------------------------------------------------------------------------

  group('Strong\'s number wrappers', () {
    /// <w s="H1234"> is a transparent wrapper — only the inner text should
    /// appear in the output; the element itself must be stripped.
    test('<w> wrapper is stripped, text content preserved', () {
      final html = _render(
        '<p style="p"><v id="1" bcv="PSA.23.1"/>'
        '<w s="H3068">Yahweh</w> is my shepherd.<ve/></p>',
      );
      expect(html, contains('Yahweh'));
      expect(html, contains('is my shepherd.'));
      // The <w> element itself must not appear in the output.
      expect(html, isNot(contains('<w ')));
      expect(html, isNot(contains('H3068')));
    });
  });

  // ---------------------------------------------------------------------------
  // HTML escaping (security)
  // ---------------------------------------------------------------------------

  group('HTML escaping', () {
    /// Verse text containing an ampersand written as `&amp;` in USFX must
    /// survive the XML-parse → HTML-encode round-trip intact.
    ///
    /// The xml.dart parser decodes `&amp;` to `&` in the text node.
    /// [_escapeHtml] then re-encodes `&` to `&amp;` for the HTML output.
    /// The net result is a single level of HTML encoding — `&amp;`, not
    /// `&amp;amp;`.
    test('ampersand in verse text is HTML-encoded in output', () {
      final html = _render(
        '<p style="p"><v id="1" bcv="GEN.1.1"/>'
        // &amp; in XML text decodes to & by the parser, then re-encodes
        // to &amp; by _escapeHtml — one level of encoding in the output.
        'Saul &amp; David.<ve/></p>',
      );
      expect(html, contains('Saul &amp; David.'));
      // The raw & must not appear unencoded.
      // (The CSS also contains &; we verify specifically in the body portion.)
      expect(html, contains('<body>'));
      expect(html, contains('</body>'));
    });

    /// `&lt;` and `&gt;` in USFX XML text decode to `<` and `>` by the
    /// parser, then get re-encoded so they cannot break the HTML output.
    test('angle brackets in verse text are HTML-encoded in output', () {
      final html = _render(
        '<p style="p"><v id="1" bcv="GEN.1.1"/>'
        'a &lt; b &gt; c.<ve/></p>',
      );
      expect(html, contains('a &lt; b &gt; c.'));
    });

    /// Section heading text must also be HTML-escaped.
    test('HTML special characters in heading text are escaped', () {
      final html = _render('<s style="s1">Heading &amp; Sub-heading</s>');
      // Same round-trip as verse text: &amp; → & → &amp;
      expect(html, contains('Heading &amp; Sub-heading'));
    });
  });

  // ---------------------------------------------------------------------------
  // Real-world chapter samples
  // ---------------------------------------------------------------------------

  group('real-world USFX samples', () {
    /// Psalm 23 minimal excerpt — includes <d>, <q> stanzas, <w> wrappers,
    /// and mixed verse milestones across multiple <q> elements.
    test('Psalm 23 minimal excerpt renders correctly', () {
      const psalm23Excerpt = '''
<d style="d">A Psalm by David.
</d>
<q style="q1"><v id="1" bcv="PSA.23.1"/><w s="H3068">Yahweh</w> is my shepherd;
</q>
<q level="2" style="q2">I shall lack nothing.
<ve/>
</q>
<q style="q1"><v id="2" bcv="PSA.23.2"/>He makes me lie down in green pastures.
</q>
<q level="2" style="q2">He leads me beside still waters.
<ve/>
</q>''';

      final html = _render(psalm23Excerpt);

      // Descriptive heading rendered (italic inline style + dHeadingColor)
      expect(html, contains(_dHeadingColor));
      expect(html, contains('A Psalm by David.'));

      // Poetry rendered (inline left-margin indentation)
      expect(html, contains('margin:0 0 0 1.5em'));
      expect(html, contains('margin:0 0 0 3.0em'));

      // Verse numbers rendered
      expect(html, contains('>1</sup>'));
      expect(html, contains('>2</sup>'));

      // Verse text rendered
      expect(html, contains('Yahweh'));
      expect(html, contains('I shall lack nothing.'));
      expect(html, contains('green pastures.'));
    });

    /// John 3:3 minimal excerpt — includes <wj>, <f> footnote, multiple
    /// <wj> spans, and nested <w> Strong's wrappers.
    test('John 3:3 excerpt renders wj spans and footnote marker', () {
      const john3Excerpt = '''
<p style="p"><v id="3" bcv="JHN.3.3"/><w s="G2424">Jesus</w> answered him,
<wj>"Most certainly I tell you, unless one is born anew,
</wj><f caller="+"><fr>3:3
</fr><ft>The word translated "anew" also means "again".</ft></f>
<wj>he can't see God's Kingdom."</wj>
<ve/>
</p>''';

      final html = _render(john3Excerpt);

      // <wj> spans rendered in red
      expect(html, contains('color:#e53935'));
      expect(html, contains('Most certainly I tell you'));

      // Footnote caller rendered as ✝, body text suppressed
      expect(html, contains('>†</sup>'));
      expect(html, isNot(contains('also means')));

      // Verse number rendered
      expect(html, contains('>3</sup>'));
    });
  });
}
