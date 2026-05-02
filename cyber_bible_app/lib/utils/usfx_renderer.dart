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
/// ## Element coverage (Step 1.11)
///
/// | USFX element                      | Rendered as                                  |
/// |-----------------------------------|----------------------------------------------|
/// | `<p style="p">`                   | Regular prose paragraph `<p>`                |
/// | `<p style="m">`                   | Continuation paragraph (no indent) `<p>`     |
/// | `<p style="pi1|pi2">`             | Indented paragraph (inline left-margin style) |
/// | `<p style="ms1">` (major sec hd)  | Major section heading block                  |
/// | `<q style="q1|q2|q3">`           | Poetry line with increasing left indent      |
/// | `<s style="s1">` (section hd)    | Section heading (italic, centred)            |
/// | `<d>` (Psalm descriptive heading) | Psalm superscription (italic, de-emphasised) |
/// | `<b style="b"/>`                  | Blank stanza separator — spacer paragraph    |
/// | `<qs>` (Selah)                    | Right-aligned italic meditation marker       |
/// | `<v id="N" .../>`                | Inline verse number `<sup>` marker           |
/// | `<ve/>`                          | Verse end milestone — no output              |
/// | `<wj>...</wj>`                   | Words of Jesus — red (Step 1.16 toggle)      |
/// | `<f caller="...">...</f>`        | Footnote — `caller` symbol as superscript    |
/// | `<x>...</x>`                     | Cross-reference — skipped (Phase 2)          |
/// | `<add>...</add>`                 | Supplied text — `<em>` italic                |
/// | `<nd>...</nd>`                   | Divine name — small caps `<span>`            |
/// | `<w s="...">...</w>`             | Strong's wrapper — transparent pass-through  |
///
/// ## Known deferred items
///
/// - Section-heading toggle (show/hide `<s>` and `<d>`) — deferred to the
///   settings/preferences step (aligns with the design doc's display options).
/// - Red-letter toggle for `<wj>` — deferred to Step 1.16.
/// - Footnote pop-up/tap interaction for `<f>` — deferred to Step 2.1.
/// - Cross-reference links for `<x>` — deferred to Phase 2.
/// - Strong's number interactivity for `<w>` — deferred to Phase 4.
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
/// Returns an HTML document with an empty body if [usfxFragment] is blank or
/// if XML parsing fails — the caller will display an empty area rather than
/// crashing.
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

  /// Verse-number and footnote-marker font size — 65 % of [baseFontSizePx].
  late final String _smallPx;

  /// Section-heading font size — 85 % of [baseFontSizePx].
  late final String _s1Px;

  /// Major-section-heading font size — 95 % of [baseFontSizePx].
  late final String _ms1Px;

  _UsfxRenderer({
    required this.bodyColorCss,
    required this.verseNumColorCss,
    required this.headingColorCss,
    required this.dHeadingColorCss,
    required this.footnoteColorCss,
    required this.baseFontSizePx,
  }) {
    _smallPx = (baseFontSizePx * 0.65).toStringAsFixed(1);
    _s1Px = (baseFontSizePx * 0.85).toStringAsFixed(1);
    _ms1Px = (baseFontSizePx * 0.95).toStringAsFixed(1);
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
      return _wrapDocument(styles, '');
    }

    // The USFX chapter fragment is a sequence of sibling elements without a
    // common root. Wrap it so xml.dart can parse it as a single tree.
    final XmlDocument doc;
    try {
      doc = XmlDocument.parse('<chapter>$usfxFragment</chapter>');
    } catch (_) {
      // Malformed XML — return an empty body rather than crashing.
      // `ReadingScreen` detects an empty/blank chapter and shows its own
      // error state, so the user is never silently presented a blank screen.
      return _wrapDocument(styles, '');
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

    return _wrapDocument(styles, bodyHtml.toString());
  }

  // ---- Block-level element rendering ----

  /// Renders a single top-level USFX block element to an HTML string.
  ///
  /// Block elements are the direct children of the synthetic `<chapter>` root:
  /// `<p>`, `<q>`, `<s>`, `<d>`, `<b>`, and `<qs>`. Unknown tags fall back
  /// to a plain `<p>` so that verse text is never silently swallowed.
  String _renderBlock(XmlElement el) {
    switch (el.name.local) {
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
  ///   - `pi1|pi2`   → indented paragraph (inline left-margin)
  ///   - `ms1|ms2`   → major section heading (inline bold + centred)
  String _renderParagraph(XmlElement el) {
    // USFX sometimes uses `sfm` instead of `style` to carry the paragraph type.
    // Prefer `style`; fall back to `sfm`; default to `p` (regular paragraph).
    final style = el.getAttribute('style') ?? el.getAttribute('sfm') ?? 'p';

    if (style.startsWith('ms')) {
      // Major section heading — centred bold block.
      // Text-only extraction is used so that accidental verse-number markers
      // inside the heading element are excluded from the heading text.
      final text = _extractTextOnly(el);
      if (text.isEmpty) return '';
      return '<p style="'
          'color:$headingColorCss;'
          'font-size:${_ms1Px}px;'
          'font-weight:bold;'
          'text-align:center;'
          'margin:1.5em 0 0.6em 0;'
          '">$text</p>';
    }

    final inner = _renderInlineChildren(el);
    if (inner.isEmpty) return '';

    if (style.startsWith('pi')) {
      // Indented prose paragraph — pi1 is one indent level, pi2 is two.
      final indent = style == 'pi2' ? '3.0em' : '1.5em';
      return '<p style="margin:0 0 0.5em $indent;">$inner</p>';
    }

    // `p`, `m`, and any other prose style map to a regular paragraph.
    return '<p>$inner</p>';
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

    final String indent;
    if (levelAttr == '3' || styleAttr == 'q3') {
      indent = '4.5em';
    } else if (levelAttr == '2' || styleAttr == 'q2') {
      indent = '3.0em';
    } else {
      indent = '1.5em';
    }

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
    for (final node in parent.children) {
      if (node is XmlText) {
        // Escape all four HTML special characters to prevent markup injection.
        buf.write(_escapeHtml(node.value));
      } else if (node is XmlElement) {
        buf.write(_renderInline(node));
      }
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
        return '<sup style="'
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

      // ---- Strong's number wrappers ----------------------------------------

      case 'w':
        // Strong's number wrapper: `<w s="H1234">word</w>`.
        // Only the word text is rendered in Step 1.11; the lexicon reference
        // is dropped. Phase 4 will add dictionary-lookup interactivity.
        return _renderInlineChildren(el);

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

// ---------------------------------------------------------------------------
// HTML document wrapper
// ---------------------------------------------------------------------------

/// Assembles a complete HTML document from [styles] (a `<style>` block) and
/// [bodyHtml] (the rendered chapter content).
///
/// The `<style>` block is placed in `<head>` and the rendered verses in
/// `<body>` — these are kept separate so neither leaks into the wrong section.
///
/// The viewport meta tag ensures correct text scaling on high-DPI screens.
String _wrapDocument(String styles, String bodyHtml) {
  return '<!DOCTYPE html>'
      '<html lang="en">'
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
