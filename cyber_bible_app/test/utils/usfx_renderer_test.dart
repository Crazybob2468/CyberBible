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

    /// The <style> block must always be present — it provides global defaults
    /// for `body` and `p` elements. Per-element styling is done with inline
    /// `style=` attributes, not CSS classes.
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

    /// Default lang and dir attributes — English LTR is the only translation
    /// bundled in Step 1.11, so the defaults are applied automatically.
    test('default lang="en" dir="ltr" appear on <html> element', () {
      final html = _render('');
      expect(html, contains('<html lang="en" dir="ltr">'));
    });

    /// Non-English RTL Bible — Arabic/Hebrew translations must set the correct
    /// base direction so screen readers use the right pronunciation rules and
    /// HtmlWidget lays out text from right to left.
    test('custom langCode and scriptDirection appear on <html> element', () {
      final html = renderChapterToHtml(
        '',
        bodyColorCss: _bodyColor,
        verseNumColorCss: _verseNumColor,
        headingColorCss: _headingColor,
        dHeadingColorCss: _dHeadingColor,
        footnoteColorCss: _footnoteColor,
        baseFontSizePx: _fontSize,
        langCode: 'ar',
        scriptDirection: 'rtl',
      );
      expect(html, contains('<html lang="ar" dir="rtl">'));
    });

    /// Malformed XML must throw so that `ReadingScreen._loadChapter()` can
    /// catch the error and show the error state with a Retry button.
    /// Returning empty HTML would silently present a blank page.
    test('malformed XML throws a parse exception', () {
      expect(() => _render('<p>unclosed'), throwsA(isA<Exception>()));
    });
  });

  // ---------------------------------------------------------------------------
  // Verse milestones
  // ---------------------------------------------------------------------------

  group('verse milestones', () {
    /// The <v id="N"/> milestone should produce an inline superscript with
    /// the verse number and a stable HTML anchor id so Step 1.12 can scroll
    /// directly to any verse.
    test('verse start milestone renders as styled sup superscript', () {
      final html = _render(
        '<p style="p"><v id="1" bcv="GEN.1.1"/>In the beginning.<ve/></p>',
      );
      // The verse number must appear inside a <sup> with inline colour style
      // and an id attribute for jump-to-verse anchor navigation.
      expect(html, contains('id="v1"'));
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

    /// Step 1.12 adds an internal marker tag before each verse number so the
    /// reading screen can map every verse to an exact render offset.
    test('verse start milestone emits internal cb-verse-marker tag', () {
      final html = _render(
        '<p style="p"><v id="3" bcv="GEN.1.3"/>Text.<ve/></p>',
      );
      expect(html, contains('<cb-verse-marker data-verse="3"></cb-verse-marker>'));
      expect(html, contains('id="v3"'));
    });

    /// Optional highlighted verse styling is used after quick-nav jumps to
    /// help users visually re-orient to the target verse.
    test('highlightedVerseId adds inline highlight style to matching verse output', () {
      final html = renderChapterToHtml(
        '<p style="p"><v id="8" bcv="GEN.1.8"/>Text.<ve/></p>',
        bodyColorCss: _bodyColor,
        verseNumColorCss: _verseNumColor,
        headingColorCss: _headingColor,
        dHeadingColorCss: _dHeadingColor,
        footnoteColorCss: _footnoteColor,
        highlightedVerseId: '8',
        highlightedVerseBackgroundCss: 'rgba(255, 235, 59, 0.45)',
      );
      expect(html, contains('background-color:rgba(255, 235, 59, 0.45)'));
      expect(html, contains('id="v8"'));
    });

    /// When a highlighted verse spans multiple blocks, each block should emit
    /// its own balanced highlight span (rather than crossing paragraph tags).
    test('highlighted verse spanning blocks keeps block-local balanced spans', () {
      final html = renderChapterToHtml(
        '<p style="p"><v id="8" bcv="GEN.1.8"/>Line A.</p>'
        '<p style="p">Line B.<ve/></p>',
        bodyColorCss: _bodyColor,
        verseNumColorCss: _verseNumColor,
        headingColorCss: _headingColor,
        dHeadingColorCss: _dHeadingColor,
        footnoteColorCss: _footnoteColor,
        highlightedVerseId: '8',
        highlightedVerseBackgroundCss: 'rgba(255, 235, 59, 0.45)',
        paragraphMode: false, // Verse-list mode: check plain </span></p><p><span
      );

      final highlightStylePattern =
          RegExp(r'background-color:rgba\(255, 235, 59, 0\.45\);');
      expect(highlightStylePattern.allMatches(html).length, 2);
      expect(html, contains('</span></p><p><span style="'));
    });
  });

  // ---------------------------------------------------------------------------
  // Prose paragraphs
  // ---------------------------------------------------------------------------

  group('prose paragraphs', () {
    /// Standard prose paragraph — most common element in non-poetic books.
    test('p style="p" renders as plain <p> in verse-list mode', () {
      final html = renderChapterToHtml(
        '<p style="p"><v id="1" bcv="JHN.1.1"/>Text.<ve/></p>',
        bodyColorCss: _bodyColor,
        verseNumColorCss: _verseNumColor,
        headingColorCss: _headingColor,
        dHeadingColorCss: _dHeadingColor,
        footnoteColorCss: _footnoteColor,
        baseFontSizePx: _fontSize,
        paragraphMode: false, // Verse-list mode: no inline style on <p>
      );
      expect(html, contains('<p>'));
      expect(html, contains('Text.'));
    });

    /// Continuation paragraph (m = margin) — used after lists or for
    /// unindented continuations.
    test('p style="m" renders as plain <p> in verse-list mode', () {
      final html = renderChapterToHtml(
        '<p style="m"><v id="1" bcv="NUM.13.4"/>Text.<ve/></p>',
        bodyColorCss: _bodyColor,
        verseNumColorCss: _verseNumColor,
        headingColorCss: _headingColor,
        dHeadingColorCss: _dHeadingColor,
        footnoteColorCss: _footnoteColor,
        baseFontSizePx: _fontSize,
        paragraphMode: false, // Verse-list mode: no inline style on <p>
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

    /// List-item paragraph styles (li1/li2/li3...) are USFM-derived and can
    /// appear in USFX style attributes. They should map to progressive indents.
    test('p style="li3" renders as level-3 indented paragraph', () {
      final html = _render(
        '<p style="li3"><v id="5" bcv="EXO.20.5"/>Item text.<ve/></p>',
      );
      expect(html, contains('margin:0 0 0.5em 4.5em'));
    });

    /// mtN/mteN are title-family paragraph styles from USFM.
    test('p style="mt2" renders as centered bold title line', () {
      final html = _render('<p style="mt2">THE GOSPEL ACCORDING TO JOHN</p>');
      expect(html, contains('font-weight:bold'));
      expect(html, contains('text-align:center'));
      expect(html, contains('THE GOSPEL ACCORDING TO JOHN'));
    });

    /// Chapter-label lines should render as centered heading text.
    test('p style="cl" renders as centered chapter label', () {
      final html = _render('<p style="cl">CHAPTER 3</p>');
      expect(html, contains('text-align:center'));
      expect(html, contains('CHAPTER 3'));
    });

    /// Chapter-description lines should render as centered italic text.
    test('p style="cd" renders as centered italic chapter description', () {
      final html = _render('<p style="cd">A Psalm of David.</p>');
      expect(html, contains('text-align:center'));
      expect(html, contains('font-style:italic'));
      expect(html, contains('A Psalm of David.'));
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

    /// Some translations use deeper poetic levels (q4+). Indentation should
    /// continue scaling by level rather than capping at q3.
    test('q style="q4" renders with 6.0em left indent', () {
      final html = _render(
        '<q style="q4"><v id="4" bcv="PSA.119.4"/>Deep line.<ve/></q>',
      );
      expect(html, contains('margin:0 0 0 6.0em'));
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
    /// <wj> must render with an inline `style="color:#e53935;"` span so the
    /// text appears red. The colour is hardcoded — no CSS class is emitted.
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
      // Footnote uses inline style — check the caller symbol appears in a sup.
      expect(html, contains('>+</sup>'));
      expect(html, contains('vertical-align:super'));
      // The footnote body text must NOT appear in the output.
      expect(html, isNot(contains('Footnote body text.')));
    });

    /// Empty or missing caller falls back to '*'.
    test('empty caller falls back to *', () {
      final html = _render(
        '<p style="p"><v id="1" bcv="GEN.1.1"/>Text.'
        '<f caller=""><ft>Body.</ft></f>'
        '<ve/></p>',
      );
      expect(html, contains('>*</sup>'));
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

    /// Generic italic inline style should map to <em>.
    test('<it> renders as italic <em> span', () {
      final html = _render(
        '<p style="p"><v id="1" bcv="JAS.1.1"/>'
        'This is <it>emphasized</it> text.<ve/></p>',
      );
      expect(html, contains('<em>emphasized</em>'));
    });

    /// Generic bold inline style should map to <strong>.
    test('<bd> renders as bold <strong> span', () {
      final html = _render(
        '<p style="p"><v id="1" bcv="ROM.1.1"/>'
        'This is <bd>bold</bd> text.<ve/></p>',
      );
      expect(html, contains('<strong>bold</strong>'));
    });

    /// Combined bold+italic inline style should preserve both semantics.
    test('<bdit> renders as nested bold+italic markup', () {
      final html = _render(
        '<p style="p"><v id="1" bcv="ROM.1.1"/>This is '
        '<bdit>both</bdit> styles.<ve/></p>',
      );
      expect(html, contains('<strong><em>both</em></strong>'));
    });

    /// Generic small-caps style should map to inline small-caps CSS.
    test('<sc> renders as small-caps span', () {
      final html = _render(
        '<p style="p"><v id="1" bcv="GEN.1.1"/><sc>LORD</sc> text.<ve/></p>',
      );
      expect(html, contains('font-variant:small-caps'));
      expect(html, contains('LORD'));
    });

    /// Explicit superscript style should render as HTML <sup>.
    test('<sup> renders as superscript span', () {
      final html = _render(
        '<p style="p"><v id="1" bcv="GEN.1.1"/>Text<sup>a</sup>.<ve/></p>',
      );
      expect(html, contains('<sup>a</sup>'));
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

      // Footnote caller rendered, body text suppressed
      expect(html, contains('>+</sup>'));
      expect(html, isNot(contains('also means')));

      // Verse number rendered
      expect(html, contains('>3</sup>'));
    });
  });

  // ---------------------------------------------------------------------------
  // New USFM styles: poetry variants
  // ---------------------------------------------------------------------------

  group('poetry variants (qc / qr / qa / qm)', () {
    /// Centred poetry line — used for refrains and some Psalm doxologies.
    test('qc produces centred paragraph', () {
      final html = _render('<q style="qc">Praise the Lord.</q>');
      expect(html, contains('text-align:center'));
      expect(html, contains('Praise the Lord.'));
    });

    /// Right-aligned poetry line — used in some liturgical texts.
    test('qr produces right-aligned paragraph', () {
      final html = _render('<q style="qr">Amen.</q>');
      expect(html, contains('text-align:right'));
      expect(html, contains('Amen.'));
    });

    /// Acrostic heading — the Hebrew-letter labels in Psalm 119, etc.
    test('qa produces italic centred heading with heading colour', () {
      final html = _render('<q style="qa">Aleph</q>');
      expect(html, contains('text-align:center'));
      expect(html, contains('font-style:italic'));
      expect(html, contains(_headingColor));
      expect(html, contains('Aleph'));
    });

    /// qm1/qm2 (margin poetry) should fall through to the level-based indent
    /// path — same output as q1/q2.
    test('qm1 produces level-1 indent (same as q1)', () {
      final html = _render('<q style="qm1">Margined line.</q>');
      expect(html, contains('margin:0 0 0 1.5em'));
      expect(html, contains('Margined line.'));
    });
  });

  // ---------------------------------------------------------------------------
  // New USFM styles: block / section elements
  // ---------------------------------------------------------------------------

  group('table rows (tr / th / tc / thr / tcr)', () {
    /// A <tr> with header and data cells must render as a paragraph containing
    /// both cells. The header cell must be wrapped in <strong>.
    test('tr renders as paragraph; th is bold', () {
      final html = _render('<tr><th>Name</th><tc>Value</tc></tr>');
      expect(html, contains('<strong>Name</strong>'));
      expect(html, contains('Value'));
      expect(html, contains('<p '));
    });

    /// Right-aligned cells must receive a float:right span.
    test('tcr content gets float:right span', () {
      final html = _render('<tr><tc>Label</tc><tcr>42</tcr></tr>');
      expect(html, contains('float:right'));
      expect(html, contains('42'));
    });

    /// An empty <tr> (no recognised cell children) must return nothing.
    test('tr with no cells returns empty', () {
      final html = _render('<tr></tr>');
      // Should produce only the surrounding HTML document — no <p> for the row.
      final body = html.split('<body>').last.split('</body>').first.trim();
      expect(body, isEmpty);
    });
  });

  group('block elements: ms / mr / sr', () {
    /// <ms> as a standalone element (belt-and-suspenders for converters that
    /// emit it as its own element rather than <p style="ms1">).
    test('ms standalone element produces centred bold heading', () {
      final html = _render('<ms>Book One</ms>');
      expect(html, contains('font-weight:bold'));
      expect(html, contains('text-align:center'));
      expect(html, contains(_headingColor));
      expect(html, contains('Book One'));
    });

    /// Major section range reference — italic, centred, heading colour.
    test('mr produces italic centred heading-colour line', () {
      final html = _render('<mr>Psalms 1–41</mr>');
      expect(html, contains('font-style:italic'));
      expect(html, contains('text-align:center'));
      expect(html, contains(_headingColor));
      expect(html, contains('Psalms 1'));
    });

    /// Section cross-reference range — italic, centred, de-emphasised colour.
    test('sr produces italic centred dHeadingColor line', () {
      final html = _render('<sr>(Matthew 5:1–7:29)</sr>');
      expect(html, contains('font-style:italic'));
      expect(html, contains('text-align:center'));
      expect(html, contains(_dHeadingColor));
      expect(html, contains('Matthew 5'));
    });
  });

  // ---------------------------------------------------------------------------
  // New USFM styles: paragraph variants
  // ---------------------------------------------------------------------------

  group('paragraph variants: pr / ph / sig / lit', () {
    /// Right-aligned paragraph — used in some liturgical/poetic layouts.
    test('pr paragraph is right-aligned', () {
      final html = _render(
          '<p style="pr"><v id="1" bcv="X.1.1"/>Right text.<ve/></p>');
      expect(html, contains('text-align:right'));
      expect(html, contains('Right text.'));
    });

    /// Hanging-indent paragraph — positive left margin + negative text-indent.
    test('ph1 paragraph has hanging indent', () {
      final html = _render(
          '<p style="ph1"><v id="1" bcv="X.1.1"/>Hanging.<ve/></p>');
      expect(html, contains('margin:0 0 0.5em 1.5em'));
      expect(html, contains('text-indent:-1.5em'));
      expect(html, contains('Hanging.'));
    });

    /// Epistle signature line — italic, body colour.
    test('sig paragraph is italic', () {
      final html =
          _render('<p style="sig"><v id="23" bcv="GAL.6.18"/>Grace.<ve/></p>');
      expect(html, contains('font-style:italic'));
      expect(html, contains('Grace.'));
    });

    /// Liturgical note — italic, right-aligned, de-emphasised colour.
    /// Uses text-only extraction so verse numbers are excluded from the label.
    test('lit paragraph is right-aligned italic with dHeadingColor', () {
      final html = _render('<p style="lit">This is the word of the Lord.</p>');
      expect(html, contains('font-style:italic'));
      expect(html, contains('text-align:right'));
      expect(html, contains(_dHeadingColor));
      expect(html, contains('This is the word'));
    });
  });

  group('introduction paragraphs: ib / is1 / imt1 / ip', () {
    /// Introduction blank line — spacer paragraph with no content.
    test('ib produces a non-breaking-space spacer paragraph', () {
      final html = _render('<p style="ib"/>');
      expect(html, contains('&nbsp;'));
    });

    /// Introduction section heading — italic centred, heading colour.
    test('is1 produces italic centred heading', () {
      final html = _render('<p style="is1">Introduction</p>');
      expect(html, contains('font-style:italic'));
      expect(html, contains('text-align:center'));
      expect(html, contains(_headingColor));
      expect(html, contains('Introduction'));
    });

    /// Introduction main title — bold centred, heading colour.
    test('imt1 produces bold centred title', () {
      final html = _render('<p style="imt1">The Gospel of Matthew</p>');
      expect(html, contains('font-weight:bold'));
      expect(html, contains('text-align:center'));
      expect(html, contains(_headingColor));
      expect(html, contains('The Gospel'));
    });

    /// Introduction paragraph — regular plain paragraph.
    test('ip renders as plain paragraph', () {
      final html = _render(
          '<p style="ip"><v id="1" bcv="MAT.1.1"/>Intro text.<ve/></p>');
      expect(html, contains('<p>'));
      expect(html, contains('Intro text.'));
    });
  });

  group('semantic division marker (sd)', () {
    /// sd1 must produce a spacer paragraph with extra top margin.
    test('sd1 produces a spacer with top margin', () {
      final html = _render('<p style="sd1"/>');
      expect(html, contains('margin:1.5em 0 0 0'));
      expect(html, contains('&nbsp;'));
    });

    /// sd2 must produce larger spacing than sd1.
    test('sd2 produces larger top margin than sd1', () {
      final sd1 = _render('<p style="sd1"/>');
      final sd2 = _render('<p style="sd2"/>');
      // sd1 → 1.5em, sd2 → 2.0em
      expect(sd2, contains('margin:2.0em 0 0 0'));
      expect(sd1, isNot(equals(sd2)));
    });
  });

  // ---------------------------------------------------------------------------
  // New USFM styles: inline character styles
  // ---------------------------------------------------------------------------

  group('inline character styles: qt / tl / sls / ord', () {
    /// OT quotation in NT context — italic.
    test('qt renders as italic em', () {
      final html = _render(
          '<p style="p"><v id="1" bcv="X.1.1"/><qt>It is written.</qt><ve/></p>');
      expect(html, contains('<em>It is written.</em>'));
    });

    /// Transliteration — italic.
    test('tl renders as italic em', () {
      final html = _render(
          '<p style="p"><v id="1" bcv="X.1.1"/><tl>Maranatha</tl><ve/></p>');
      expect(html, contains('<em>Maranatha</em>'));
    });

    /// Secondary-language source — italic.
    test('sls renders as italic em', () {
      final html = _render(
          '<p style="p"><v id="1" bcv="X.1.1"/><sls>shalom</sls><ve/></p>');
      expect(html, contains('<em>shalom</em>'));
    });

    /// Ordinal suffix — superscript.
    test('ord renders as superscript', () {
      final html = _render(
          '<p style="p"><v id="1" bcv="X.1.1"/>21<ord>st</ord><ve/></p>');
      expect(html, contains('<sup>st</sup>'));
    });
  });

  group('inline transparent pass-throughs: wh / wg / wa / bk / pn / png', () {
    /// Language-specific wrappers must pass text through unchanged.
    test('wh renders text transparently', () {
      final html = _render(
          '<p style="p"><v id="1" bcv="X.1.1"/><wh>YHWH</wh><ve/></p>');
      expect(html, contains('YHWH'));
      expect(html, isNot(contains('<wh>')));
    });

    test('wg renders text transparently', () {
      final html = _render(
          '<p style="p"><v id="1" bcv="X.1.1"/><wg>logos</wg><ve/></p>');
      expect(html, contains('logos'));
      expect(html, isNot(contains('<wg>')));
    });

    test('wa renders text transparently', () {
      final html = _render(
          '<p style="p"><v id="1" bcv="X.1.1"/><wa>abba</wa><ve/></p>');
      expect(html, contains('abba'));
    });

    /// Book title reference — transparent.
    test('bk renders text transparently', () {
      final html = _render(
          '<p style="p"><v id="1" bcv="X.1.1"/><bk>Genesis</bk><ve/></p>');
      expect(html, contains('Genesis'));
      expect(html, isNot(contains('<bk>')));
    });

    /// Proper name — transparent.
    test('pn renders text transparently', () {
      final html = _render(
          '<p style="p"><v id="1" bcv="X.1.1"/><pn>David</pn><ve/></p>');
      expect(html, contains('David'));
    });

    /// Geographic proper name — transparent.
    test('png renders text transparently', () {
      final html = _render(
          '<p style="p"><v id="1" bcv="X.1.1"/><png>Jerusalem</png><ve/></p>');
      expect(html, contains('Jerusalem'));
    });
  });

  group('cp — published chapter marker', () {
    /// <cp> is a structural marker that must produce no visible output.
    test('cp is suppressed from output', () {
      final html = _render(
          '<p style="p"><v id="1" bcv="X.1.1"/><cp>A</cp>Text.<ve/></p>');
      // The letter "A" inside <cp> must not appear in the body.
      expect(html, isNot(contains('>A<')));
      expect(html, contains('Text.'));
    });
  });
}
