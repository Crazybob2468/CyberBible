/// USFX XML → HTML+CSS renderer for Bible chapter display.
///
/// This is a pure-Dart library (no Flutter imports). It converts a raw USFX
/// XML chapter fragment (as stored in `chapters.content_usfx`) into an HTML
/// string that `flutter_widget_from_html_core`'s `HtmlWidget` can render natively.
///
/// ## Why HTML?
///
/// USFX preserves rich semantic markup — paragraph styles, poetry indentation,
/// section headings, words of Jesus, footnotes, supplied-text italics, and
/// divine-name small caps. Rendering this properly in plain Flutter widgets
/// would require reimplementing a significant portion of a typesetting engine.
/// An HTML+CSS approach delegates that work to a proven package while still
/// rendering as native Flutter widgets (not a WebView).
///
/// ## Element coverage
///
/// ### Block / paragraph elements
///
/// | USFX element / style                          | Rendered as                                        |
/// |-----------------------------------------------|-----------------------------------------------------|
/// | `<p style="p|m|nb|po|pmo|pm|pmi">`            | Regular prose paragraph                            |
/// | `<p style="pi1|pi2">` / `li1|li2`             | Indented paragraph                                 |
/// | `<p style="pr">`                              | Right-aligned paragraph                            |
/// | `<p style="ph1|ph2">`                         | Hanging-indent paragraph                           |
/// | `<p style="ms1">` / `<ms>`                    | Major section heading (bold, centred)              |
/// | `<p style="mt1|mt2">` / `mte`                 | Book main title (bold, centred)                    |
/// | `<p style="r">`                               | Parallel reference line (italic, right)            |
/// | `<p style="sp">`                              | Speaker identification line (bold)                 |
/// | `<p style="sig">`                             | Epistle signature line (italic)                    |
/// | `<p style="lit">`                             | Liturgical note / congregational response          |
/// | `<p style="cl|cd">`                           | Chapter label / description                        |
/// | `<p style="pc|pmc">`                          | Centred paragraph                                  |
/// | `<p style="pmr">`                             | Right-aligned embedded paragraph                   |
/// | `<p style="sd1–sd4">`                         | Semantic division spacer                           |
/// | `<p style="is1|is2">`                         | Introduction section heading                       |
/// | `<p style="imt1|imt2">`                       | Introduction main title                            |
/// | `<p style="ib">`                              | Introduction blank line                            |
/// | `<p style="ip|im|io|…">` (any `i`-prefix)    | Introduction paragraph (plain)                     |
/// | `<q style="q1|q2|q3">` / `qm1|qm2`           | Poetry line with increasing left indent            |
/// | `<q style="qc">`                              | Centred poetry line                                |
/// | `<q style="qr">`                              | Right-aligned poetry line                          |
/// | `<q style="qa">`                              | Acrostic heading (italic, centred)                 |
/// | `<s style="s1">`                              | Section heading (italic, centred)                  |
/// | `<d>`                                         | Psalm superscription (italic, de-emphasised)       |
/// | `<b/>`                                        | Blank stanza separator                             |
/// | `<qs>`                                        | Selah / right-aligned meditation marker            |
/// | `<tr>` + `<th>` / `<tc>` / `<thr>` / `<tcr>` | Table row as paragraph (cells spaced)             |
/// | `<ms>` (own element)                          | Major section heading                              |
/// | `<mr>`                                        | Major section range reference heading              |
/// | `<sr>`                                        | Section range reference heading                    |
///
/// ### Inline elements
///
/// | USFX element                                             | Rendered as                    |
/// |----------------------------------------------------------|--------------------------------|
/// | `<v id="N"/>`                                           | Superscript verse number       |
/// | `<ve/>`                                                 | Verse-end — no output          |
/// | `<wj>`                                                  | Words of Jesus — red           |
/// | `<f caller="…">`                                        | Footnote caller only           |
/// | `<x>`                                                   | Cross-reference — skipped      |
/// | `<add>`                                                 | Supplied text — italic         |
/// | `<nd>`                                                  | Divine name — small caps       |
/// | `<it>` / `<em>`                                         | Italic                         |
/// | `<bd>`                                                  | Bold                           |
/// | `<bdit>`                                                | Bold-italic                    |
/// | `<sc>`                                                  | Small caps                     |
/// | `<sup>`                                                 | Superscript                    |
/// | `<qt>`                                                  | OT quotation in NT — italic    |
/// | `<tl>`                                                  | Transliteration — italic       |
/// | `<sls>`                                                 | Secondary-language — italic    |
/// | `<ord>`                                                 | Ordinal suffix — superscript   |
/// | `<w>` / `<wh>` / `<wg>` / `<wa>` / `<bk>` / `<pn>` / `<png>` | Transparent pass-through |
/// | `<cp>`                                                  | Published chapter — suppressed |
///
/// ## Deferred items
///
/// - Section-heading show/hide toggle (`<s>`, `<d>`) — settings step.
/// - Red-letter toggle for `<wj>` — Step 1.16.
/// - Footnote pop-up/tap interaction for `<f>` — Step 2.1.
/// - Cross-reference links for `<x>` — Phase 2.
/// - Strong's number interactivity for `<w>` — Phase 4.
/// - Full HTML `<table>` layout (currently linear para-per-row) — Phase 2.
/// - `<fig>` image references — Phase 3.
library;

import 'package:xml/xml.dart';

// ---------------------------------------------------------------------------
// Public API
// ---------------------------------------------------------------------------

/// Converts a USFX XML chapter fragment to a self-contained HTML string.
///
/// [usfxFragment] is the raw content from `chapters.content_usfx` — a series
/// of XML elements (e.g. `<p>`, `<q>`, `<s>`, `<d>`) without a root wrapper.
///
/// Color parameters are CSS color strings (e.g. `'#1a1a1a'` or
/// `'rgba(26, 26, 26, 0.7)'`). Pass values derived from the current
/// `ColorScheme` so that the HTML adapts to the app's light/dark theme.
///
/// The returned HTML is a complete document ready for `HtmlWidget`. The body
/// has `margin: 0; padding: 0` so that the caller can apply Flutter-level
/// `Padding` around the widget instead.
///
/// Returns an HTML document with an empty body if [usfxFragment] is blank.
/// Throws if the USFX content is malformed XML — callers must handle this
/// exception and surface an appropriate error state.
String renderChapterToHtml(
  String usfxFragment, {
  /// CSS color for normal verse body text (maps to `ColorScheme.onSurface`).
  required String bodyColorCss,

  /// CSS color for inline verse numbers (maps to `ColorScheme.primary`).
  required String verseNumColorCss,

  /// CSS color for section and major-section headings.
  /// Typically `ColorScheme.onSurface` at reduced opacity.
  required String headingColorCss,

  /// CSS color for the Psalm descriptive heading (`<d>` element).
  /// Typically `ColorScheme.onSurface` at further reduced opacity.
  required String dHeadingColorCss,

  /// CSS color for footnote superscript markers
  /// (maps to `ColorScheme.primary`).
  required String footnoteColorCss,

  /// Base font size in logical pixels for verse body text.
  double baseFontSizePx = 17.0,

  /// Optional verse ID to highlight (e.g. `'16'` or `'1a'`).
  ///
  /// When provided, the matching verse output receives a subtle inline
  /// highlight style so users can visually re-orient after a quick
  /// navigation jump. Highlighting is applied at verse level (not only the
  /// superscript number) and can continue across multiple rendered blocks.
  String? highlightedVerseId,

  /// CSS color used as the temporary verse-level highlight background.
  /// Ignored when [highlightedVerseId] is null.
  String highlightedVerseBackgroundCss = 'rgba(255, 235, 59, 0.45)',

  /// BCP 47 language code for the `lang` attribute of the HTML document root
  /// (e.g. `'en'`, `'es'`, `'ar'`). Defaults to `'en'`.
  ///
  /// Set from the `language_code` column in the `bible_info` table so that
  /// screen readers use correct pronunciation rules and browsers apply the
  /// right hyphenation and quotation styles.
  String langCode = 'en',

  /// HTML text direction for the document root (`'ltr'` or `'rtl'`).
  /// Defaults to `'ltr'`.
  ///
  /// Set to `'rtl'` for right-to-left scripts (Arabic, Hebrew, etc.).
  /// Use the `script_direction` column from `bible_info`, lowercased
  /// (the database stores `'LTR'` / `'RTL'`).
  String scriptDirection = 'ltr',
}) {
  // Delegate to the internal renderer class, which holds the colour/font
  // values as fields so every private method can access them without
  // threading all five parameters through every call.
  return _UsfxRenderer(
    bodyColorCss: bodyColorCss,
    verseNumColorCss: verseNumColorCss,
    headingColorCss: headingColorCss,
    dHeadingColorCss: dHeadingColorCss,
    footnoteColorCss: footnoteColorCss,
    baseFontSizePx: baseFontSizePx,
    highlightedVerseId: highlightedVerseId,
    highlightedVerseBackgroundCss: highlightedVerseBackgroundCss,
    langCode: langCode,
    scriptDirection: scriptDirection,
  ).render(usfxFragment);
}

// ---------------------------------------------------------------------------
// Internal renderer class
// ---------------------------------------------------------------------------

/// Holds theme values and renders a USFX XML chapter fragment to HTML.
///
/// Using a class rather than top-level functions avoids threading five
/// colour/font parameters through every private helper — each method can
/// reference `this.*` directly.
///
/// **All styling is emitted as inline `style=` attributes**, not CSS class
/// rules in a `<style>` block. `flutter_widget_from_html_core`'s CSS engine does
/// not reliably apply stylesheet class selectors, so inline styles are the
/// only portable approach. The `<style>` block is kept only for the two
/// universal defaults (`body` colour/size and `p` margin) that the package
/// does honour.
class _UsfxRenderer {
  final String bodyColorCss;
  final String verseNumColorCss;
  final String headingColorCss;
  final String dHeadingColorCss;
  final String footnoteColorCss;
  final double baseFontSizePx;
  final String? highlightedVerseId;
  final String highlightedVerseBackgroundCss;

  /// BCP 47 language code for the HTML `lang` attribute (e.g. `'en'`).
  final String langCode;

  /// HTML text-direction attribute value (`'ltr'` or `'rtl'`).
  final String scriptDirection;

  /// Verse-number and footnote-marker font size — 65 % of [baseFontSizePx].
  late final String _smallPx;

  /// Section-heading font size — 85 % of [baseFontSizePx].
  late final String _s1Px;

  /// Tracks which verse has an open highlight span across multiple block renders.
  /// Set when opening a highlight for a verse, cleared when closing it.
  /// Allows highlights to persist across multiple paragraphs/blocks.
  String? _openHighlightVerseId;

  _UsfxRenderer({
    required this.bodyColorCss,
    required this.verseNumColorCss,
    required this.headingColorCss,
    required this.dHeadingColorCss,
    required this.footnoteColorCss,
    required this.baseFontSizePx,
    this.highlightedVerseId,
    this.highlightedVerseBackgroundCss = 'rgba(255, 235, 59, 0.45)',
    this.langCode = 'en',
    this.scriptDirection = 'ltr',
  }) {
    _smallPx = (baseFontSizePx * 0.65).toStringAsFixed(1);
    _s1Px = (baseFontSizePx * 0.85).toStringAsFixed(1);
  }

  // ---- Entry point ----

  /// Parses [usfxFragment] and returns a complete HTML document string.
  String render(String usfxFragment) {
    // Minimal <style> block: only the two universal defaults that
    // flutter_widget_from_html_core honours from a stylesheet. All per-element
    // colours, sizes, and layout are emitted as inline style= attributes.
    final styles = '<style>'
        'body{'
        'color:$bodyColorCss;'
        'font-size:${baseFontSizePx}px;'
        'line-height:1.65;'
        'margin:0;padding:0;'
        '}'
        'p{margin:0 0 0.5em 0;}'
        '</style>';

    // Nothing to render — return the minimal document shell with empty body.
    if (usfxFragment.trim().isEmpty) {
      return _wrapDocument(styles, '', langCode, scriptDirection);
    }

    // The USFX chapter fragment is a sequence of sibling elements without a
    // common root. Wrap it so xml.dart can parse it as a single tree.
    final XmlDocument doc;
    try {
      doc = XmlDocument.parse('<chapter>$usfxFragment</chapter>');
    } catch (e) {
      // Malformed XML — re-throw so `_loadChapter()` in ReadingScreen catches
      // it and surfaces the error state (error icon + message + Retry button).
      // Returning empty HTML would leave the user with a silent blank page and
      // no way to retry, because the screen only enters the error state when
      // the Future throws.
      rethrow;
    }

    final root = doc.rootElement;
    final bodyHtml = StringBuffer();

    // Walk the direct children of <chapter>. Each is a block-level USFX
    // element: paragraph, poetry line, section heading, or descriptive heading.
    for (final child in root.children) {
      if (child is XmlElement) {
        bodyHtml.write(_renderBlock(child));
      }
      // Whitespace-only text nodes at the top level are ignored.
    }

    return _wrapDocument(styles, bodyHtml.toString(), langCode, scriptDirection);
  }

  // ---- Block-level element rendering ----

  /// Renders a single top-level USFX block element to an HTML string.
  ///
  /// Block elements are the direct children of the synthetic `<chapter>` root:
  /// `<p>`, `<q>`, `<s>`, `<d>`, `<b>`, and `<qs>`. Unknown tags fall back
  /// to a plain `<p>` so that verse text is never silently swallowed.
  String _renderBlock(XmlElement el) {
    switch (el.name.local) {
      case 'tr':
        // USFM table row — rendered as a compact paragraph with cells
        // separated by en-spaces. Full <table> layout is deferred to Phase 2;
        // this ensures genealogy/census content is never silently lost.
        return _renderTableRow(el);

      case 'ms':
        // Major section heading as a standalone <ms> element. Some USFX
        // converters use this form instead of <p style="ms1">.
        final msText = _extractTextOnly(el);
        if (msText.isEmpty) return '';
        final msPx = (baseFontSizePx * 0.95).toStringAsFixed(1);
        return '<p style="'
            'color:$headingColorCss;'
            'font-size:${msPx}px;'
            'font-weight:bold;'
            'text-align:center;'
            'margin:1.5em 0 0.6em 0;'
            '">$msText</p>';

      case 'mr':
        // Major section range reference (e.g. "Psalms 1–41").
        final mrText = _extractTextOnly(el);
        if (mrText.isEmpty) return '';
        return '<p style="'
            'color:$headingColorCss;'
            'font-size:${_s1Px}px;'
            'font-style:italic;'
            'text-align:center;'
            'margin:0 0 0.5em 0;'
            '">$mrText</p>';

      case 'sr':
        // Section cross-reference range (e.g. "(Matthew 5:1–7:29)").
        final srText = _extractTextOnly(el);
        if (srText.isEmpty) return '';
        return '<p style="'
            'color:$dHeadingColorCss;'
            'font-size:${_smallPx}px;'
            'font-style:italic;'
            'text-align:center;'
            'margin:0 0 0.3em 0;'
            '">$srText</p>';

      case 'p':
        return _renderParagraph(el);
      case 'q':
        return _renderPoetry(el);
      case 's':
        return _renderSectionHeading(el);
      case 'd':
        return _renderDescriptiveHeading(el);
      case 'b':
        // Blank-line separator between poetry stanzas (1,070 uses in WEB).
        // Emits a zero-height paragraph whose bottom margin provides the
        // visual gap. Using &nbsp; prevents the package from collapsing it.
        return '<p style="margin:0 0 0.5em 0;">&nbsp;</p>';
      case 'qs':
        // "Selah" / meditation marker — right-aligned italic at end of stanza.
        // Appears 74 times in the Psalms (e.g. "Selah.", "Meditation. Selah.").
        final text = _extractTextOnly(el);
        if (text.isEmpty) return '';
        return '<p style="'
            'color:$dHeadingColorCss;'
            'font-style:italic;'
            'text-align:right;'
            'margin:0 0 0.3em 0;'
            '">$text</p>';
      default:
        // Unknown top-level element — render its inline content inside a plain
        // paragraph so that verse text is never silently swallowed.
        final inner = _renderInlineChildren(el);
        return inner.isNotEmpty ? '<p>$inner</p>' : '';
    }
  }

  /// Renders a `<p>` element.
  ///
  /// The `style` attribute (or `sfm` fallback) determines the presentation:
  ///   - `p` or `m`  → plain paragraph (no extra inline style)
  ///   - `piN` / `liN`   → indented paragraph/list item (inline left-margin)
  ///   - `msN`           → major section heading (inline bold + centred)
  ///   - `mtN|mteN`      → title heading (inline bold + centred)
  ///   - `r`             → right-aligned reference line (italic)
  ///   - `sp`            → speaker label line (bold)
  ///   - `cl` / `cd`     → chapter labels (centred; cd italic)
  ///
  /// These style families come from USFM and can appear in USFX `style`/`sfm`
  /// attributes depending on source conversion.
  String _renderParagraph(XmlElement el) {
    // USFX sometimes uses `sfm` instead of `style` to carry the paragraph type.
    // Prefer `style`; fall back to `sfm`; default to `p` (regular paragraph).
    final style = el.getAttribute('style') ?? el.getAttribute('sfm') ?? 'p';

    if (style.startsWith('ms')) {
      final level = _styleLevel(style);
      final sizeScale = level <= 1 ? 0.95 : (level == 2 ? 0.90 : 0.86);
      final msPx = (baseFontSizePx * sizeScale).toStringAsFixed(1);

      // Major section heading — centred bold block.
      // Text-only extraction is used so that accidental verse-number markers
      // inside the heading element are excluded from the heading text.
      final text = _extractTextOnly(el);
      if (text.isEmpty) return '';
      return '<p style="'
          'color:$headingColorCss;'
          'font-size:${msPx}px;'
          'font-weight:bold;'
          'text-align:center;'
          'margin:1.5em 0 0.6em 0;'
          '">$text</p>';
    }

    if (style.startsWith('mt') || style.startsWith('mte')) {
      // Main-title family (e.g. mt1/mt2/mte1) used by many USFM exports for
      // book titles and title extensions.
      final level = _styleLevel(style);
      final sizeScale = level <= 1 ? 1.05 : (level == 2 ? 1.00 : 0.95);
      final mtPx = (baseFontSizePx * sizeScale).toStringAsFixed(1);
      final text = _extractTextOnly(el);
      if (text.isEmpty) return '';
      return '<p style="'
          'color:$headingColorCss;'
          'font-size:${mtPx}px;'
          'font-weight:bold;'
          'text-align:center;'
          'margin:1.2em 0 0.5em 0;'
          '">$text</p>';
    }

    if (style == 'r') {
      // Parallel-reference / right-side reference line.
      final text = _extractTextOnly(el);
      if (text.isEmpty) return '';
      return '<p style="'
          'color:$dHeadingColorCss;'
          'font-size:${_smallPx}px;'
          'font-style:italic;'
          'text-align:right;'
          'margin:0 0 0.35em 0;'
          '">$text</p>';
    }

    if (style == 'sp') {
      // Speaker identification line in poetic/dialogue material.
      final text = _extractTextOnly(el);
      if (text.isEmpty) return '';
      return '<p style="'
          'color:$bodyColorCss;'
          'font-weight:600;'
          'margin:0 0 0.35em 0;'
          '">$text</p>';
    }

    if (style == 'cl' || style == 'cd') {
      // Chapter labels and chapter-descriptive labels.
      final text = _extractTextOnly(el);
      if (text.isEmpty) return '';
      final italic = style == 'cd' ? 'font-style:italic;' : '';
      return '<p style="'
          'color:$headingColorCss;'
          '$italic'
          'font-size:${_s1Px}px;'
          'text-align:center;'
          'margin:0.6em 0 0.4em 0;'
          '">$text</p>';
    }

    if (style == 'pc' || style == 'pmc') {
      final inner = _renderInlineChildren(el);
      if (inner.isEmpty) return '';
      return '<p style="text-align:center;">$inner</p>';
    }

    if (style == 'pmr') {
      final inner = _renderInlineChildren(el);
      if (inner.isEmpty) return '';
      return '<p style="text-align:right;">$inner</p>';
    }

    // Spacer styles produce &nbsp; output regardless of child content — they
    // must be checked before computing inner so the isEmpty guard can't eat them.
    if (style == 'ib') {
      // Introduction blank line — same visual gap as a stanza break.
      return '<p style="margin:0 0 0.5em 0;">&nbsp;</p>';
    }

    if (style.startsWith('sd')) {
      // Semantic division marker (sd1–sd4) — extra vertical space between
      // major narrative sections in some modern translations.
      final level = _styleLevel(style);
      final em = (level * 0.5 + 1.0).toStringAsFixed(1);
      return '<p style="margin:${em}em 0 0 0;">&nbsp;</p>';
    }

    final inner = _renderInlineChildren(el);
    if (inner.isEmpty) return '';

    if (style == 'lit') {
      // Liturgical note / congregational response. Checked BEFORE startsWith('li')
      // to prevent it from being caught by the 'li' indented-paragraph branch.
      // Uses text-only extraction so verse numbers are excluded.
      final litText = _extractTextOnly(el);
      if (litText.isEmpty) return '';
      return '<p style="'
          'color:$dHeadingColorCss;'
          'font-style:italic;'
          'text-align:right;'
          'margin:0 0 0.3em 0;'
          '">$litText</p>';
    }

    if (style.startsWith('pi') || style.startsWith('li')) {
      // Indented prose/list paragraph — support arbitrary level suffixes.
      final level = _styleLevel(style);
      final indent = '${(level * 1.5).toStringAsFixed(1)}em';
      return '<p style="margin:0 0 0.5em $indent;">$inner</p>';
    }

    if (style == 'pr') {
      // Right-aligned prose paragraph.
      return '<p style="text-align:right;">$inner</p>';
    }

    if (style.startsWith('ph')) {
      // Hanging-indent paragraph (common in Acts and the epistles).
      // A positive left-margin with a matching negative text-indent pulls
      // only the first line back to the left margin.
      final level = _styleLevel(style);
      final leftEm = (level * 1.5).toStringAsFixed(1);
      final hangEm = (level * 1.5).toStringAsFixed(1);
      return '<p style="margin:0 0 0.5em ${leftEm}em;'
          'text-indent:-${hangEm}em;">$inner</p>';
    }

    if (style == 'sig') {
      // Epistle signature line (e.g. closing greetings in Paul's letters).
      return '<p style="color:$bodyColorCss;'
          'font-style:italic;margin:0.5em 0 0.5em 0;">$inner</p>';
    }

    if (style.startsWith('is')) {
      // Introduction section heading (is1, is2).
      final isText = _extractTextOnly(el);
      if (isText.isEmpty) return '';
      return '<p style="'
          'color:$headingColorCss;'
          'font-size:${_s1Px}px;'
          'font-style:italic;'
          'text-align:center;'
          'margin:1.2em 0 0.3em 0;'
          '">$isText</p>';
    }

    if (style.startsWith('imt')) {
      // Introduction main title (imt1, imt2) — styled like book title (mt).
      final level = _styleLevel(style);
      final imtPx =
          (baseFontSizePx * (level <= 1 ? 1.05 : 1.00)).toStringAsFixed(1);
      final imtText = _extractTextOnly(el);
      if (imtText.isEmpty) return '';
      return '<p style="'
          'color:$headingColorCss;'
          'font-size:${imtPx}px;'
          'font-weight:bold;'
          'text-align:center;'
          'margin:1.2em 0 0.5em 0;'
          '">$imtText</p>';
    }

    if (style.startsWith('i')) {
      // Remaining introduction paragraph styles (ip, im, ipi, io, io1, io2,
      // iex, imi, imq, ipq, ipr) — render as plain prose paragraphs.
      return '<p>$inner</p>';
    }

    // `p`, `m`, `nb`, `po`, `pmo`, `pm`, `pmi`, and any other prose style
    // all map to a regular paragraph.
    return '<p>$inner</p>';
  }

  /// Renders a `<tr>` (USFM table row) element.
  ///
  /// Each child cell (`<th>`, `<thr>`, `<tc>`, `<tcr>`) is rendered inline,
  /// separated by en-spaces. Header cells are bolded; right-aligned cells
  /// (`<thr>`, `<tcr>`) receive a float:right span. Full HTML `<table>`
  /// generation would require multi-element lookahead across sibling `<tr>`
  /// nodes; this approach ensures content is never lost while remaining simple.
  String _renderTableRow(XmlElement el) {
    final cellBuf = StringBuffer();
    var first = true;

    for (final child in el.children) {
      if (child is! XmlElement) continue;
      final tag = child.name.local;
      if (tag != 'th' && tag != 'thr' && tag != 'tc' && tag != 'tcr') continue;

      final cellContent = _renderInlineChildren(child);
      if (cellContent.isEmpty) continue;

      if (!first) cellBuf.write('\u2002'); // en-space between cells
      final isHeader = tag == 'th' || tag == 'thr';
      final isRight = tag == 'thr' || tag == 'tcr';

      if (isHeader && isRight) {
        cellBuf.write(
            '<strong><span style="float:right;">$cellContent</span></strong>');
      } else if (isHeader) {
        cellBuf.write('<strong>$cellContent</strong>');
      } else if (isRight) {
        cellBuf.write('<span style="float:right;">$cellContent</span>');
      } else {
        cellBuf.write(cellContent);
      }
      first = false;
    }

    if (cellBuf.isEmpty) {
      // No recognised cells — fall back to inline children (e.g. bare text).
      final inner = _renderInlineChildren(el);
      return inner.isNotEmpty ? '<p style="margin:0 0 0.2em 0;">$inner</p>' : '';
    }
    return '<p style="margin:0 0 0.2em 0;">$cellBuf</p>';
  }

  /// Renders a `<q>` (poetry stanza line) element.
  ///
  /// The indentation level is read first from the `level` attribute (a numeric
  /// string), then from the `style` attribute (e.g. `q2`). Defaults to level 1
  /// when neither is present.
  String _renderPoetry(XmlElement el) {
    final inner = _renderInlineChildren(el);
    if (inner.isEmpty) return '';

    final levelAttr = el.getAttribute('level');
    final styleAttr = el.getAttribute('style') ?? 'q1';

    // Named poetry variants override the default indent layout.
    if (styleAttr == 'qc') {
      // Centred poetry line (e.g. refrains, some Psalm doxologies).
      return '<p style="margin:0;text-align:center;">$inner</p>';
    }
    if (styleAttr == 'qr') {
      // Right-aligned poetry line.
      return '<p style="margin:0;text-align:right;">$inner</p>';
    }
    if (styleAttr == 'qa') {
      // Acrostic heading — the Hebrew alphabet letter labels in Psalm 119,
      // Lamentations, Proverbs 31, etc.
      return '<p style="'
          'color:$headingColorCss;'
          'font-size:${_s1Px}px;'
          'font-style:italic;'
          'text-align:center;'
          'margin:0.8em 0 0.1em 0;'
          '">$inner</p>';
    }
    // qm1/qm2 (margin poetry lines) and all other q-style variants use the
    // same level-based indent as q1/q2 — the default path below handles them.

    // Prefer explicit level=...; otherwise infer from style suffix (q1/q2...).
    final parsedLevel = int.tryParse(levelAttr ?? '') ?? _styleLevel(styleAttr);
    final level = parsedLevel < 1 ? 1 : parsedLevel;
    final indent = '${(level * 1.5).toStringAsFixed(1)}em';

    return '<p style="margin:0 0 0 $indent;">$inner</p>';
  }

  /// Renders an `<s>` (section heading) element.
  ///
  /// Section headings are non-canonical editorial additions. The design doc
  /// notes a future display option to hide them; that toggle is deferred to the
  /// settings step. For now they are always shown.
  ///
  /// Text-only extraction is used so that any inline markup inside the heading
  /// element does not produce verse numbers or footnote markers in the title.
  String _renderSectionHeading(XmlElement el) {
    final text = _extractTextOnly(el);
    if (text.isEmpty) return '';
    return '<p style="'
        'color:$headingColorCss;'
        'font-size:${_s1Px}px;'
        'font-style:italic;'
        'text-align:center;'
        'margin:1.2em 0 0.3em 0;'
        '">$text</p>';
  }

  /// Renders a `<d>` (Psalm descriptive heading) element.
  ///
  /// Psalm superscriptions (e.g. "A Psalm by David.") appear before verse 1 in
  /// the USFX XML. They were absent from the plain-text verse list in Step 1.10
  /// — this method resolves that known content gap.
  String _renderDescriptiveHeading(XmlElement el) {
    final text = _extractTextOnly(el);
    if (text.isEmpty) return '';
    return '<p style="'
        'color:$dHeadingColorCss;'
        'font-style:italic;'
        'margin:0 0 0.6em 0;'
        '">$text</p>';
  }

  // ---- Inline element rendering ----

  /// Renders all inline children of [parent] to an HTML string.
  ///
  /// Inline children are a mix of [XmlText] nodes (verse text) and [XmlElement]
  /// nodes (verse milestones, Strong's wrappers, `<wj>`, `<f>`, etc.).
  String _renderInlineChildren(XmlElement parent) {
    final buf = StringBuffer();
    var isHighlightOpenInThisBlock = false;

    // If the highlighted verse started in a previous block and has not ended
    // yet, open a fresh wrapper for this block so markup remains balanced.
    if (_openHighlightVerseId != null) {
      buf.write('<span style="'
          'background-color:$highlightedVerseBackgroundCss;'
          'border-radius:3px;'
          'padding:0 2px;'
          '">');
      isHighlightOpenInThisBlock = true;
    }
    
    for (final node in parent.children) {
      if (node is XmlText) {
        // Escape all four HTML special characters to prevent markup injection.
        buf.write(_escapeHtml(node.value));
      } else if (node is XmlElement) {
        // Manage verse-level highlight state while keeping block-local markup
        // balanced. Highlight state can persist across blocks, but HTML spans
        // must not cross paragraph boundaries.
        if (node.name.local == 'v' && highlightedVerseId != null) {
          final id = node.getAttribute('id') ?? '';
          final isHighlighted = id.isNotEmpty && highlightedVerseId == id;
          
          // Close previous highlight if we're starting a different verse.
          if (_openHighlightVerseId != null && _openHighlightVerseId != id) {
            if (isHighlightOpenInThisBlock) {
              buf.write('</span>');
              isHighlightOpenInThisBlock = false;
            }
            _openHighlightVerseId = null;
          }
          
          // Open highlight for this verse if it's the target and not already open.
          if (isHighlighted && _openHighlightVerseId == null) {
            buf.write('<span style="'
                'background-color:$highlightedVerseBackgroundCss;'
                'border-radius:3px;'
                'padding:0 2px;'
                '">');
            isHighlightOpenInThisBlock = true;
            _openHighlightVerseId = id;
          }
        } else if (node.name.local == 've' && _openHighlightVerseId != null) {
          // Close highlight at verse-end marker.
          if (isHighlightOpenInThisBlock) {
            buf.write('</span>');
            isHighlightOpenInThisBlock = false;
          }
          _openHighlightVerseId = null;
        }
        
        buf.write(_renderInline(node));
      }
    }

    // If the highlighted verse continues beyond this block, close only the
    // block-local wrapper and keep verse state open for the next block.
    if (isHighlightOpenInThisBlock) {
      buf.write('</span>');
    }
    
    return buf.toString();
  }

  /// Renders a single inline USFX element to its HTML equivalent.
  String _renderInline(XmlElement el) {
    switch (el.name.local) {
      // ---- Verse boundary milestones ----------------------------------------

      case 'v':
        // Verse start milestone — render the verse ID as a small superscript.
        // A hair-space (U+200A) after the number provides a sliver of breathing
        // room between the superscript and the verse text that follows.
        final id = el.getAttribute('id') ?? '';
        if (id.isEmpty) return '';
        // Add a custom zero-sized marker tag before the superscript so the
        // reading screen can attach a keyed Flutter widget at each verse
        // boundary and compute exact on-screen verse positions.
        final markerTag =
          '<cb-verse-marker data-verse="${_escapeHtml(id)}"></cb-verse-marker>';
        // Note: Highlight background is now applied by _renderInlineChildren()
        // to the entire verse (marker + content through all following blocks),
        // not just the superscript. This allows verses that wrap across multiple
        // paragraphs to be fully highlighted.
        // id="v{N}" provides a stable HTML anchor so Step 1.12 (jump-to-verse)
        // can scroll directly to any verse without additional DOM queries.
        return '$markerTag<sup id="v${_escapeHtml(id)}" style="'
            'color:$verseNumColorCss;'
            'font-size:${_smallPx}px;'
            'font-weight:bold;'
            'vertical-align:super;'
            'margin-right:1px;'
            '">${_escapeHtml(id)}</sup>\u200A';

      case 've':
        // Verse end milestone — purely structural, produces no visible output.
        return '';

      // ---- Words of Jesus ---------------------------------------------------

      case 'wj':
        // Words spoken by Jesus — rendered in red (#e53935).
        // Step 1.16 will add a user preference to display these in body colour.
        // The colour is hardcoded (not from the colour scheme) so that red
        // letters are consistent regardless of the chosen accent theme.
        return '<span style="color:#e53935;">${_renderInlineChildren(el)}</span>';

      // ---- Footnotes and cross-references -----------------------------------

      case 'f':
        // Footnote — only the `caller` symbol (e.g. '+', '*', 'a') is shown
        // as a superscript. The full footnote text pop-up is deferred to
        // Step 2.1, but preserving the caller keeps distinct notes
        // distinguishable even before tap interaction is added.
        final caller = el.getAttribute('caller') ?? '*';
        final marker = caller.trim().isEmpty ? '*' : _escapeHtml(caller);
        return '<sup style="'
            'color:$footnoteColorCss;'
            'font-size:${_smallPx}px;'
            'vertical-align:super;'
            '">$marker</sup>';

      case 'fr':
      case 'ft':
        // Footnote sub-elements (reference label and body text) — suppressed
        // because the parent `<f>` already emits only the caller symbol.
        return '';

      case 'x':
        // Cross-reference element — skipped in Step 1.11; handled in Phase 2.
        return '';

      case 'ref':
        // Scripture reference link inside a footnote or cross-reference —
        // suppressed at this stage along with the containing `<x>` or `<f>`.
        return '';

      // ---- Semantic inline markup ------------------------------------------

      case 'add':
        // Supplied / implied text (e.g. words added by the KJV translators).
        return '<em>${_renderInlineChildren(el)}</em>';

      case 'nd':
        // Divine name (LORD / Yahweh) — rendered in small caps per convention.
        return '<span style="font-variant:small-caps;">'
            '${_renderInlineChildren(el)}'
            '</span>';

      case 'it':
      case 'em':
        // Generic italic character styles.
        return '<em>${_renderInlineChildren(el)}</em>';

      case 'bd':
        // Generic bold character style.
        return '<strong>${_renderInlineChildren(el)}</strong>';

      case 'bdit':
        // Combined bold+italic character style.
        return '<strong><em>${_renderInlineChildren(el)}</em></strong>';

      case 'sc':
        // Small-caps character style.
        return '<span style="font-variant:small-caps;">'
            '${_renderInlineChildren(el)}'
            '</span>';

      case 'sup':
        // Explicit superscript character style.
        return '<sup>${_renderInlineChildren(el)}</sup>';

      // ---- Strong's number wrappers ----------------------------------------

      case 'w':
        // Strong's number wrapper: `<w s="H1234">word</w>`.
        // Only the word text is rendered in Step 1.11; the lexicon reference
        // is dropped. Phase 4 will add dictionary-lookup interactivity.
        return _renderInlineChildren(el);

      case 'qt':
        // OT quotation in NT context — italic to distinguish from prose.
        return '<em>${_renderInlineChildren(el)}</em>';

      case 'tl':
        // Transliterated word from another script (e.g. Aramaic in English).
        return '<em>${_renderInlineChildren(el)}</em>';

      case 'sls':
        // Secondary-language source (e.g. Hebrew alongside a translation).
        return '<em>${_renderInlineChildren(el)}</em>';

      case 'ord':
        // Ordinal number suffix ("st", "nd", "rd", "th").
        return '<sup>${_renderInlineChildren(el)}</sup>';

      case 'wh':
      case 'wg':
      case 'wa':
        // Language-specific word wrappers (Hebrew / Greek / Aramaic).
        // Render text transparently like the <w> Strong's wrapper.
        return _renderInlineChildren(el);

      case 'bk':
        // Book title reference — transparent pass-through.
        return _renderInlineChildren(el);

      case 'pn':
      case 'png':
        // Proper name / geographic proper name — transparent pass-through.
        return _renderInlineChildren(el);

      case 'cp':
        // Published chapter marker — structural only, no visible output.
        return '';

      // ---- Fallthrough -------------------------------------------------------

      default:
        // Unknown inline element — render its text content transparently so
        // that verse text is never silently lost in less common translations.
        return _renderInlineChildren(el);
    }
  }
}

// ---------------------------------------------------------------------------
// Utility helpers (top-level — no theme state needed)
// ---------------------------------------------------------------------------

/// Extracts all descendant text from [el] as a plain, HTML-escaped string,
/// skipping all element wrappers.
///
/// Used for headings (`<s>`, `<ms>`, `<d>`) where inner elements such as
/// verse-number milestones or footnote markers should not appear in the title.
String _extractTextOnly(XmlElement el) {
  final buf = StringBuffer();
  for (final node in el.descendants) {
    if (node is XmlText) {
      buf.write(_escapeHtml(node.value));
    }
  }
  return buf.toString().trim();
}

/// Escapes the four HTML characters that could break generated markup or open
/// injection vectors if left un-escaped.
///
/// Applied to every text value written from USFX content into the HTML output.
String _escapeHtml(String text) {
  return text
      .replaceAll('&', '&amp;')
      .replaceAll('<', '&lt;')
      .replaceAll('>', '&gt;')
      .replaceAll('"', '&quot;');
}

/// Extracts a trailing numeric level from a USFM-derived style token.
///
/// Examples:
/// - `q1` -> 1
/// - `q3` -> 3
/// - `ms2` -> 2
/// - `mt` -> 1 (no explicit suffix)
int _styleLevel(String style) {
  final match = RegExp(r'(\d+)$').firstMatch(style);
  final parsed = int.tryParse(match?.group(1) ?? '1') ?? 1;
  return parsed < 1 ? 1 : parsed;
}

// ---------------------------------------------------------------------------
// HTML document wrapper
// ---------------------------------------------------------------------------

/// Assembles a complete HTML document from [styles] (a `<style>` block) and
/// [bodyHtml] (the rendered chapter content).
///
/// [langCode] is a BCP 47 language tag placed on the `<html>` element for
/// screen-reader pronunciation (e.g. `'en'`, `'ar'`).
/// [scriptDirection] is `'ltr'` or `'rtl'` for the HTML `dir` attribute.
///
/// The `<style>` block is placed in `<head>` and the rendered verses in
/// `<body>` — these are kept separate so neither leaks into the wrong section.
///
/// The viewport meta tag ensures correct text scaling on high-DPI screens.
String _wrapDocument(
  String styles,
  String bodyHtml,
  String langCode,
  String scriptDirection,
) {
  return '<!DOCTYPE html>'
      '<html lang="${_escapeHtml(langCode)}" dir="${_escapeHtml(scriptDirection)}">'
      '<head>'
      '<meta charset="utf-8">'
      '<meta name="viewport" content="width=device-width,initial-scale=1">'
      '$styles'
      '</head>'
      '<body>'
      '$bodyHtml'
      '</body>'
      '</html>';
}
