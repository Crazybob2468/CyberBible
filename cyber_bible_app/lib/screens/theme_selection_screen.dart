// Theme selection screen for Cyber Bible — Step 1.16.
//
// This screen is navigated to from SettingsScreen and lets users choose
// between customisable themes (user-selectable accent colour) and hand-
// crafted set themes with fixed, beautiful palettes.
//
// Layout:
//   ─ Section: Customisable Themes  (5 cards)
//     Each card shows a preview of the base colour + text lines.
//     Tapping opens an accent-colour popup.  'classic_white' also shows a
//     Light / Dark / System toggle in that popup.
//   ─ Divider with label: "Set Themes"
//   ─ Section: Set Themes  (6 cards)
//     Each card is custom-painted with the theme's visual identity.
//     Forest Cathedral mirrors the home-screen brand aesthetic with
//     gold leaf ornaments and filigree swirls.
//
// A checkmark + highlighted border shows which theme is currently active.

import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';

import '../models/app_theme_definition.dart';
import '../services/settings_service.dart';

// ---------------------------------------------------------------------------
// Accent colour palette — 8 curated seed colours
// ---------------------------------------------------------------------------

/// Curated accent seed colours shown in the accent-picker popup.
///
/// Each [_AccentSeed] has a display name and a colour value.  The user can
/// also open a full HSV picker via the "Custom" button at the end of the row.
class _AccentSeed {
  final String name;
  final Color color;
  const _AccentSeed(this.name, this.color);
}

const _accentSeeds = [
  _AccentSeed('Forest',   Color(0xFF2D6A4F)),
  _AccentSeed('Ocean',    Color(0xFF1565C0)),
  _AccentSeed('Crimson',  Color(0xFFC62828)),
  _AccentSeed('Amethyst', Color(0xFF6A1B9A)),
  _AccentSeed('Gold',     Color(0xFFFF8F00)),
  _AccentSeed('Teal',     Color(0xFF00695C)),
  _AccentSeed('Slate',    Color(0xFF455A64)),
  _AccentSeed('Rose',     Color(0xFFAD1457)),
];

// ---------------------------------------------------------------------------
// Card dimensions
// ---------------------------------------------------------------------------

/// Width of each theme preview card.
const _cardW = 130.0;

/// Height of each theme preview card.
const _cardH = 90.0;

/// Border radius for all theme cards.
const _cardRadius = 16.0;

// ---------------------------------------------------------------------------
// Theme selection screen
// ---------------------------------------------------------------------------

/// Full-screen page for choosing the active Cyber Bible theme.
///
/// Shown when the user taps "Theme" on [SettingsScreen].
class ThemeSelectionScreen extends StatefulWidget {
  const ThemeSelectionScreen({super.key});

  @override
  State<ThemeSelectionScreen> createState() => _ThemeSelectionScreenState();
}

class _ThemeSelectionScreenState extends State<ThemeSelectionScreen> {
  @override
  void initState() {
    super.initState();
    SettingsService.instance.addListener(_onSettingsChanged);
  }

  @override
  void dispose() {
    SettingsService.instance.removeListener(_onSettingsChanged);
    super.dispose();
  }

  void _onSettingsChanged() => setState(() {});

  // ---- Build ----

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    // Split the catalog into the two sections.
    final customizable = AppThemeCatalog.all
        .where((t) => t.isCustomizable)
        .toList();
    final setThemes = AppThemeCatalog.all
        .where((t) => !t.isCustomizable)
        .toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Choose Theme')),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        children: [

          // ── Customisable themes ──────────────────────────────────────────
          _sectionLabel('Customisable Themes', cs),
          const SizedBox(height: 4),
          Text(
            'Tap a card to choose an accent colour. '
            '"Classic White" also supports Light, Dark and System modes.',
            style: TextStyle(
              fontSize: 12,
              color: cs.onSurfaceVariant,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 14),
          _ThemeCardRow(
            themes: customizable,
            onTap: _onCustomizableTap,
          ),
          const SizedBox(height: 28),

          // ── Divider ──────────────────────────────────────────────────────
          Row(
            children: [
              const Expanded(child: Divider()),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  'SET THEMES',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.4,
                    color: cs.onSurfaceVariant,
                  ),
                ),
              ),
              const Expanded(child: Divider()),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            'Fixed, hand-crafted palettes. No customisation needed — '
            'just tap to apply.',
            style: TextStyle(
              fontSize: 12,
              color: cs.onSurfaceVariant,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 14),

          // ── Set themes ───────────────────────────────────────────────────
          _ThemeCardRow(
            themes: setThemes,
            onTap: _onSetThemeTap,
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  // ---- Helpers ----

  /// Section label widget.
  Widget _sectionLabel(String text, ColorScheme cs) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w700,
        color: cs.primary,
        letterSpacing: 0.3,
      ),
    );
  }

  // ---- Tap handlers ----

  /// Tapping a customisable-theme card opens the accent-colour popup.
  void _onCustomizableTap(AppThemeDefinition def) {
    // First, select the theme so the preview card shows the selected state.
    SettingsService.instance.setSelectedThemeId(def.id);
    // Then open the accent picker.
    _showAccentPicker(def);
  }

  /// Tapping a set-theme card simply selects it.
  void _onSetThemeTap(AppThemeDefinition def) {
    SettingsService.instance.setSelectedThemeId(def.id);
  }

  // ---- Accent picker bottom sheet ----

  /// Opens a modal bottom sheet for choosing the accent colour for [def].
  ///
  /// Contains:
  ///   - 8 curated accent swatches
  ///   - A "Custom…" button that opens the full flex_color_picker dialog
  ///   - Light / Dark / System segmented toggle (only for classic_white)
  void _showAccentPicker(AppThemeDefinition def) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (sheetCtx) => _AccentPickerSheet(
        definition: def,
        onAccentChanged: (color) async {
          await SettingsService.instance.setAccentColor(def.id, color);
        },
        onThemeModeChanged: def.supportsThemeMode
            ? (mode) async {
                await SettingsService.instance.setThemeMode(mode);
              }
            : null,
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Theme card row — wraps cards into a horizontal scrolling row
// ---------------------------------------------------------------------------

/// A horizontally scrollable row of [_ThemeCard] widgets.
class _ThemeCardRow extends StatelessWidget {
  /// The themes to render as cards.
  final List<AppThemeDefinition> themes;

  /// Called when the user taps a card.
  final void Function(AppThemeDefinition) onTap;

  const _ThemeCardRow({required this.themes, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: themes
            .map((t) => Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: _ThemeCard(definition: t, onTap: () => onTap(t)),
                ))
            .toList(),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Theme card
// ---------------------------------------------------------------------------

/// A single theme preview card.
///
/// Customisable themes show a plain coloured rectangle with horizontal lines
/// representing text.  Set themes use a custom [CustomPainter] for a richly
/// decorated preview.
///
/// A glowing border + checkmark overlay indicates the currently selected theme.
class _ThemeCard extends StatelessWidget {
  final AppThemeDefinition definition;
  final VoidCallback onTap;

  const _ThemeCard({required this.definition, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final isSelected =
        SettingsService.instance.selectedThemeId == definition.id;
    final currentAccent = SettingsService.instance.accentColor(definition.id);

    return Semantics(
      label: '${definition.name} theme'
          '${isSelected ? ', currently selected' : ''}. '
          '${definition.isCustomizable ? 'Customisable accent colour.' : 'Fixed palette.'}',
      button: true,
      selected: isSelected,
      child: InkWell(
        // InkWell provides keyboard focus (Tab to reach, Enter/Space to tap)
        // and a tactile ripple for touch/mouse, satisfying keyboard-operability
        // requirements on desktop and web as well as mobile.
        onTap: onTap,
        borderRadius: BorderRadius.circular(_cardRadius),
        child: Stack(
          children: [
            // ── Card preview ──────────────────────────────────────────────
            AnimatedContainer(
              duration: const Duration(milliseconds: 180),
              width: _cardW,
              height: _cardH,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(_cardRadius),
                // Selected: glow border in the current accent / primary color.
                border: isSelected
                    ? Border.all(
                        color: definition.isCustomizable
                            ? currentAccent
                            : _setThemeAccentColor(definition.id),
                        width: 3,
                      )
                    : Border.all(color: Colors.grey.withAlpha(60), width: 1),
                boxShadow: isSelected
                    ? [
                        BoxShadow(
                          color: (definition.isCustomizable
                                  ? currentAccent
                                  : _setThemeAccentColor(definition.id))
                              .withAlpha(90),
                          blurRadius: 14,
                          spreadRadius: 1,
                        ),
                      ]
                    : null,
              ),
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(_cardRadius - 1),
                child: _cardContent(currentAccent),
              ),
            ),

            // ── Selected checkmark overlay ────────────────────────────────
            if (isSelected)
              Positioned(
                top: 6,
                right: 6,
                child: Container(
                  width: 22,
                  height: 22,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: definition.isCustomizable
                        ? currentAccent
                        : _setThemeAccentColor(definition.id),
                  ),
                  child: const Icon(
                    Icons.check_rounded,
                    size: 14,
                    color: Colors.white,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  /// Returns the preview card content for this theme.
  Widget _cardContent(Color currentAccent) {
    if (definition.isCustomizable) {
      return _CustomizableCardContent(
        baseColor: definition.baseColor!,
        accentColor: currentAccent,
      );
    }
    // Set themes each have a unique custom painter.
    switch (definition.id) {
      case 'forest_cathedral':
        return const _ForestCathedralCardContent();
      case 'midnight_ocean':
        return const _MidnightOceanCardContent();
      case 'desert_sunrise':
        return const _DesertSunriseCardContent();
      case 'royal_amethyst':
        return const _RoyalAmethystCardContent();
      case 'crimson_covenant':
        return const _CrimsonCovenantCardContent();
      case 'aurora':
        return const _AuroraCardContent();
      default:
        return Container(color: Colors.grey.shade300);
    }
  }

  /// Returns the glow/border accent color for a set theme.
  Color _setThemeAccentColor(String id) {
    switch (id) {
      case 'forest_cathedral':  return const Color(0xFFD4AF37);
      case 'midnight_ocean':    return const Color(0xFF90CAF9);
      case 'desert_sunrise':    return const Color(0xFFFFCC80);
      case 'royal_amethyst':    return const Color(0xFFFFD54F);
      case 'crimson_covenant':  return const Color(0xFFFFCCBC);
      case 'aurora':            return const Color(0xFF64FFDA);
      default:                  return const Color(0xFF2D6A4F);
    }
  }
}

// ---------------------------------------------------------------------------
// Customisable card content — tinted base + text line preview
// ---------------------------------------------------------------------------

/// Preview card for customisable themes.
///
/// Background is the theme's base colour.  Three horizontal "text" bars
/// are coloured with the current accent to represent verse content.
class _CustomizableCardContent extends StatelessWidget {
  final Color baseColor;
  final Color accentColor;

  const _CustomizableCardContent({
    required this.baseColor,
    required this.accentColor,
  });

  @override
  Widget build(BuildContext context) {
    // Compute appropriate text color for the base (dark on light, etc.)
    final brightness = ThemeData.estimateBrightnessForColor(baseColor);
    final textColor = brightness == Brightness.light
        ? const Color(0xFF222222)
        : const Color(0xFFEEEEEE);

    return Container(
      color: baseColor,
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Verse number line (accent colored, narrow)
          _Line(color: accentColor, width: 18, height: 4),
          const SizedBox(height: 5),
          // Body text lines (3 lines, varying widths)
          _Line(color: textColor.withAlpha(200), width: _cardW - 28, height: 4),
          const SizedBox(height: 4),
          _Line(color: textColor.withAlpha(160), width: _cardW - 42, height: 4),
          const SizedBox(height: 4),
          _Line(color: textColor.withAlpha(130), width: _cardW - 50, height: 4),
          const Spacer(),
          // Accent color swatch dot at bottom-right.
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 14,
              height: 14,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: accentColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Simple rounded rectangle used as a "text line" in card previews.
class _Line extends StatelessWidget {
  final Color color;
  final double width;
  final double height;

  const _Line({
    required this.color,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(height / 2),
      ),
    );
  }
}

// ===========================================================================
// Set theme card painters
// ===========================================================================

// ---------------------------------------------------------------------------
// Forest Cathedral card — dark green with gold ornaments and swirls
// ---------------------------------------------------------------------------

/// Preview card for the Forest Cathedral set theme.
///
/// Design: Deep forest-green background with a three-stop vertical gradient,
/// gold filigree swirls along the sides (mirroring the home-screen painter),
/// gold text-line bars representing verse content, and the theme name in
/// small gold italic text at the bottom.
class _ForestCathedralCardContent extends StatelessWidget {
  const _ForestCathedralCardContent();

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _ForestCathedralPainter(),
    );
  }
}

class _ForestCathedralPainter extends CustomPainter {
  // Home-screen brand palette.
  static const _bgDark = Color(0xFF071A0E);
  static const _bgMid  = Color(0xFF0F3D20);
  static const _gold   = Color(0xFFD4AF37);
  static const _goldDim = Color(0x99D4AF37);
  static const _goldFade = Color(0x00D4AF37);
  static const _cream  = Color(0xFFF3E6C8);

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);

    // ── Background gradient ──────────────────────────────────────────────
    final bgPaint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [_bgDark, _bgMid, _bgDark],
        stops: [0.0, 0.5, 1.0],
      ).createShader(rect);
    canvas.drawRect(rect, bgPaint);

    // ── Gold horizontal ornament bar (top) ───────────────────────────────
    final barPaint = Paint()
      ..shader = LinearGradient(
        colors: const [_goldFade, _gold, _goldFade],
      ).createShader(Rect.fromLTWH(0, 14, size.width, 1));
    canvas.drawLine(Offset(8, 14), Offset(size.width - 8, 14), barPaint..strokeWidth = 1.0);

    // ── Side filigree swirls (miniature, adapted from home screen) ───────
    final swirlPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..strokeWidth = 1.2
      ..color = _goldDim;

    final softSwirlPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..strokeWidth = 0.8
      ..color = const Color(0x3FD4AF37);

    void drawSwirl({required bool left}) {
      final xBase = left ? 9.0 : size.width - 9.0;
      final dir   = left ? 1.0 : -1.0;

      // Scaled-down version of the home screen's _SideFiligreePainter
      final main = Path()
        ..moveTo(xBase, size.height * 0.18)
        ..cubicTo(
          xBase + (12 * dir), size.height * 0.28,
          xBase + (15 * dir), size.height * 0.40,
          xBase, size.height * 0.50,
        )
        ..cubicTo(
          xBase - (12 * dir), size.height * 0.60,
          xBase - (12 * dir), size.height * 0.72,
          xBase, size.height * 0.82,
        );
      canvas.drawPath(main, swirlPaint);

      // Small leaf sprigs.
      final leaf = Path()
        ..moveTo(xBase, size.height * 0.50)
        ..quadraticBezierTo(
          xBase + (20 * dir), size.height * 0.48,
          xBase + (6 * dir), size.height * 0.53,
        );
      canvas.drawPath(leaf, softSwirlPaint);

      // Terminal dot.
      canvas.drawCircle(
        Offset(xBase, size.height * 0.18), 1.5,
        Paint()..color = _goldDim,
      );
    }
    drawSwirl(left: true);
    drawSwirl(left: false);

    // ── Gold content lines (verse preview) ──────────────────────────────
    final linePaint = Paint()..color = _gold.withAlpha(200);
    _drawLine(canvas, linePaint, 22, 26, size.width - 44, 3);
    _drawLine(canvas, linePaint.._setAlpha(160), 22, 36, size.width - 52, 3);
    _drawLine(canvas, linePaint.._setAlpha(120), 22, 46, size.width - 58, 3);

    // ── Bottom thin gold bar ─────────────────────────────────────────────
    final bottomBarPaint = Paint()
      ..shader = LinearGradient(
        colors: const [_goldFade, _gold, _goldFade],
      ).createShader(Rect.fromLTWH(0, size.height - 16, size.width, 1));
    canvas.drawLine(
      Offset(8, size.height - 16),
      Offset(size.width - 8, size.height - 16),
      bottomBarPaint..strokeWidth = 1.0,
    );

    // ── "Forest Cathedral" label in tiny gold italic text ────────────────
    final textSpan = TextSpan(
      text: 'Forest Cathedral',
      style: const TextStyle(
        color: _cream,
        fontSize: 8,
        fontStyle: FontStyle.italic,
        letterSpacing: 0.4,
      ),
    );
    final tp = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    )..layout(maxWidth: size.width - 20);
    tp.paint(canvas, Offset((size.width - tp.width) / 2, size.height - 12));
  }

  void _drawLine(Canvas canvas, Paint paint, double x, double y, double w, double h) {
    final rrect = RRect.fromRectAndRadius(
      Rect.fromLTWH(x, y, w, h),
      const Radius.circular(1.5),
    );
    canvas.drawRRect(rrect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

extension on Paint {
  void _setAlpha(int alpha) => color = color.withAlpha(alpha);
}

// ---------------------------------------------------------------------------
// Midnight Ocean card
// ---------------------------------------------------------------------------

class _MidnightOceanCardContent extends StatelessWidget {
  const _MidnightOceanCardContent();

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: _MidnightOceanPainter());
  }
}

class _MidnightOceanPainter extends CustomPainter {
  static const _bg     = Color(0xFF030810);
  static const _blue   = Color(0xFF90CAF9);
  static const _blueDim = Color(0x6690CAF9);
  static const _cyan   = Color(0xFF4FC3F7);

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);

    // Background — near-black navy.
    canvas.drawRect(rect, Paint()..color = _bg);

    // Subtle radial glow in the centre (like stars in deep space).
    final glowPaint = Paint()
      ..shader = RadialGradient(
        center: Alignment.center,
        radius: 0.8,
        colors: const [Color(0x1A4FC3F7), Color(0x00000000)],
      ).createShader(rect);
    canvas.drawRect(rect, glowPaint);

    // Wave lines at the bottom — three sweeping curves.
    final wavePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.2
      ..strokeCap = StrokeCap.round
      ..color = _blueDim;

    void drawWave(double yOffset) {
      final path = Path()
        ..moveTo(-4, size.height * yOffset)
        ..cubicTo(
          size.width * 0.25, size.height * (yOffset - 0.06),
          size.width * 0.75, size.height * (yOffset + 0.06),
          size.width + 4, size.height * yOffset,
        );
      canvas.drawPath(path, wavePaint);
    }
    drawWave(0.72);
    wavePaint.color = const Color(0x4490CAF9);
    drawWave(0.80);
    wavePaint.color = const Color(0x2290CAF9);
    drawWave(0.88);

    // Star dots — scattered randomly but deterministically.
    final starPaint = Paint()..color = const Color(0x99FFFFFF);
    const stars = [
      Offset(0.15, 0.12), Offset(0.32, 0.22), Offset(0.55, 0.08),
      Offset(0.70, 0.18), Offset(0.85, 0.28), Offset(0.42, 0.30),
      Offset(0.62, 0.40), Offset(0.22, 0.42), Offset(0.90, 0.46),
    ];
    for (final s in stars) {
      canvas.drawCircle(
        Offset(s.dx * size.width, s.dy * size.height), 1.2, starPaint);
    }

    // Text preview lines in silver-blue.
    final linePaint = Paint()..color = _blue.withAlpha(200);
    _drawRLine(canvas, linePaint, 22, 26, size.width - 44, 3);
    _drawRLine(canvas, Paint()..color = _blue.withAlpha(150), 22, 36, size.width - 50, 3);
    _drawRLine(canvas, Paint()..color = _cyan.withAlpha(120), 22, 46, size.width - 58, 3);

    // "Midnight Ocean" label.
    _drawLabel(canvas, size, 'Midnight Ocean', _blue);
  }

  void _drawRLine(Canvas canvas, Paint p, double x, double y, double w, double h) {
    canvas.drawRRect(
      RRect.fromRectAndRadius(Rect.fromLTWH(x, y, w, h), const Radius.circular(1.5)),
      p,
    );
  }

  void _drawLabel(Canvas canvas, Size size, String label, Color color) {
    final tp = TextPainter(
      text: TextSpan(
        text: label,
        style: TextStyle(color: color.withAlpha(200), fontSize: 8, fontStyle: FontStyle.italic, letterSpacing: 0.3),
      ),
      textDirection: TextDirection.ltr,
    )..layout(maxWidth: size.width - 16);
    tp.paint(canvas, Offset((size.width - tp.width) / 2, size.height - 12));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

// ---------------------------------------------------------------------------
// Desert Sunrise card
// ---------------------------------------------------------------------------

class _DesertSunriseCardContent extends StatelessWidget {
  const _DesertSunriseCardContent();

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: _DesertSunrisePainter());
  }
}

class _DesertSunrisePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);

    // Warm dark-brown background with amber gradient.
    canvas.drawRect(
      rect,
      Paint()
        ..shader = const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF110800), Color(0xFF2E1B0A), Color(0xFF110800)],
          stops: [0.0, 0.5, 1.0],
        ).createShader(rect),
    );

    // Sun / dawn glow — orange-gold radial gradient at the top.
    canvas.drawCircle(
      Offset(size.width / 2, -size.height * 0.1),
      size.width * 0.7,
      Paint()
        ..shader = RadialGradient(
          center: const Alignment(0, -0.6),
          radius: 0.7,
          colors: const [Color(0x55FFB74D), Color(0x00FFB74D)],
        ).createShader(rect),
    );

    // Horizon line.
    canvas.drawLine(
      Offset(0, size.height * 0.60),
      Offset(size.width, size.height * 0.60),
      Paint()
        ..color = const Color(0x55FFCC80)
        ..strokeWidth = 1.0,
    );

    // Sand dunes (two arcing curves at the bottom).
    final dunePaint = Paint()
      ..style = PaintingStyle.fill
      ..color = const Color(0xFF1A0C04);
    final dune = Path()
      ..moveTo(0, size.height * 0.75)
      ..quadraticBezierTo(size.width * 0.35, size.height * 0.60, size.width * 0.6, size.height * 0.72)
      ..quadraticBezierTo(size.width * 0.80, size.height * 0.80, size.width, size.height * 0.70)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();
    canvas.drawPath(dune, dunePaint);

    // Text lines in warm amber.
    final lp = Paint()..color = const Color(0xCCFFCC80);
    canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(22, 26, size.width - 44, 3), const Radius.circular(1.5)), lp);
    canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(22, 36, size.width - 52, 3), const Radius.circular(1.5)), Paint()..color = const Color(0x99FFCC80));
    canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(22, 46, size.width - 58, 3), const Radius.circular(1.5)), Paint()..color = const Color(0x77FFAB40));

    _drawLabel(canvas, size, 'Desert Sunrise', const Color(0xCCFFCC80));
  }

  void _drawLabel(Canvas canvas, Size size, String label, Color color) {
    final tp = TextPainter(
      text: TextSpan(text: label, style: TextStyle(color: color, fontSize: 8, fontStyle: FontStyle.italic, letterSpacing: 0.3)),
      textDirection: TextDirection.ltr,
    )..layout(maxWidth: size.width - 16);
    tp.paint(canvas, Offset((size.width - tp.width) / 2, size.height - 12));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

// ---------------------------------------------------------------------------
// Royal Amethyst card
// ---------------------------------------------------------------------------

class _RoyalAmethystCardContent extends StatelessWidget {
  const _RoyalAmethystCardContent();

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: _RoyalAmethystPainter());
  }
}

class _RoyalAmethystPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);

    // Deep purple background.
    canvas.drawRect(
      rect,
      Paint()
        ..shader = const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF080018), Color(0xFF1A0840), Color(0xFF080018)],
          stops: [0.0, 0.55, 1.0],
        ).createShader(rect),
    );

    // Jewel-like shimmer — diagonal highlight.
    canvas.drawRect(
      rect,
      Paint()
        ..shader = LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: const [Color(0x22CE93D8), Color(0x00000000), Color(0x11CE93D8)],
        ).createShader(rect),
    );

    // Crown icon suggestion — three small arches.
    final crownPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5
      ..strokeCap = StrokeCap.round
      ..color = const Color(0xAAFFD54F);
    final cx = size.width / 2;
    final crown = Path()
      ..moveTo(cx - 14, 18)
      ..lineTo(cx - 14, 10)
      ..lineTo(cx - 7, 14)
      ..lineTo(cx, 8)
      ..lineTo(cx + 7, 14)
      ..lineTo(cx + 14, 10)
      ..lineTo(cx + 14, 18)
      ..lineTo(cx - 14, 18);
    canvas.drawPath(crown, crownPaint);

    // Gold text lines.
    final lp = Paint()..color = const Color(0xCCFFD54F);
    canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(22, 30, size.width - 44, 3), const Radius.circular(1.5)), lp);
    canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(22, 40, size.width - 52, 3), const Radius.circular(1.5)), Paint()..color = const Color(0x99FFD54F));
    canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(22, 50, size.width - 58, 3), const Radius.circular(1.5)), Paint()..color = const Color(0x66CE93D8));

    _drawLabel(canvas, size, 'Royal Amethyst', const Color(0xCCFFD54F));
  }

  void _drawLabel(Canvas canvas, Size size, String label, Color color) {
    final tp = TextPainter(
      text: TextSpan(text: label, style: TextStyle(color: color, fontSize: 8, fontStyle: FontStyle.italic, letterSpacing: 0.3)),
      textDirection: TextDirection.ltr,
    )..layout(maxWidth: size.width - 16);
    tp.paint(canvas, Offset((size.width - tp.width) / 2, size.height - 12));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

// ---------------------------------------------------------------------------
// Crimson Covenant card
// ---------------------------------------------------------------------------

class _CrimsonCovenantCardContent extends StatelessWidget {
  const _CrimsonCovenantCardContent();

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: _CrimsonCovenantPainter());
  }
}

class _CrimsonCovenantPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);

    // Deep oxblood background.
    canvas.drawRect(
      rect,
      Paint()
        ..shader = const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF110103), Color(0xFF2D0612), Color(0xFF110103)],
          stops: [0.0, 0.55, 1.0],
        ).createShader(rect),
    );

    // Subtle cross silhouette — thin lines in deep crimson.
    final crossPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.2
      ..color = const Color(0x44EF9A9A);
    final cx = size.width / 2;
    final cy = size.height * 0.38;
    canvas.drawLine(Offset(cx, cy - 14), Offset(cx, cy + 18), crossPaint);
    canvas.drawLine(Offset(cx - 10, cy - 3), Offset(cx + 10, cy - 3), crossPaint);

    // Warm ivory text lines.
    final lp = Paint()..color = const Color(0xCCFFCCBC);
    canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(22, 30, size.width - 44, 3), const Radius.circular(1.5)), lp);
    canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(22, 40, size.width - 52, 3), const Radius.circular(1.5)), Paint()..color = const Color(0x99FFCBC8));
    canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(22, 50, size.width - 58, 3), const Radius.circular(1.5)), Paint()..color = const Color(0x66EF9A9A));

    _drawLabel(canvas, size, 'Crimson Covenant', const Color(0xCCFFCCBC));
  }

  void _drawLabel(Canvas canvas, Size size, String label, Color color) {
    final tp = TextPainter(
      text: TextSpan(text: label, style: TextStyle(color: color, fontSize: 8, fontStyle: FontStyle.italic, letterSpacing: 0.3)),
      textDirection: TextDirection.ltr,
    )..layout(maxWidth: size.width - 16);
    tp.paint(canvas, Offset((size.width - tp.width) / 2, size.height - 12));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

// ---------------------------------------------------------------------------
// Aurora card
// ---------------------------------------------------------------------------

class _AuroraCardContent extends StatelessWidget {
  const _AuroraCardContent();

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: _AuroraPainter());
  }
}

class _AuroraPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);

    // Near-black background.
    canvas.drawRect(rect, Paint()..color = const Color(0xFF020508));

    // Aurora curtains — two sweeping translucent gradient bands.
    void drawAuroraStrip(double startX, Color col1, Color col2) {
      final path = Path()
        ..moveTo(startX, 0)
        ..cubicTo(
          startX + 14, size.height * 0.3,
          startX + 8, size.height * 0.7,
          startX + 20, size.height,
        )
        ..lineTo(startX + 36, size.height)
        ..cubicTo(
          startX + 24, size.height * 0.7,
          startX + 30, size.height * 0.3,
          startX + 16, 0,
        )
        ..close();
      canvas.drawPath(
        path,
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [col1, col2, col1],
            stops: const [0.0, 0.5, 1.0],
          ).createShader(rect),
      );
    }
    drawAuroraStrip(10, const Color(0x2264FFDA), const Color(0x4464FFDA));
    drawAuroraStrip(40, const Color(0x1569F0AE), const Color(0x3369F0AE));
    drawAuroraStrip(72, const Color(0x1882B1FF), const Color(0x2882B1FF));

    // Text lines in electric teal.
    final lp = Paint()..color = const Color(0xCC64FFDA);
    canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(22, 26, size.width - 44, 3), const Radius.circular(1.5)), lp);
    canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(22, 36, size.width - 50, 3), const Radius.circular(1.5)), Paint()..color = const Color(0x8869F0AE));
    canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(22, 46, size.width - 58, 3), const Radius.circular(1.5)), Paint()..color = const Color(0x6682B1FF));

    _drawLabel(canvas, size, 'Aurora', const Color(0xCC64FFDA));
  }

  void _drawLabel(Canvas canvas, Size size, String label, Color color) {
    final tp = TextPainter(
      text: TextSpan(text: label, style: TextStyle(color: color, fontSize: 8, fontStyle: FontStyle.italic, letterSpacing: 0.3)),
      textDirection: TextDirection.ltr,
    )..layout(maxWidth: size.width - 16);
    tp.paint(canvas, Offset((size.width - tp.width) / 2, size.height - 12));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

// ===========================================================================
// Accent picker bottom sheet
// ===========================================================================

/// Bottom sheet shown when the user taps a customisable theme card.
///
/// Contains:
///   - 8 curated accent swatches
///   - A "Custom…" button → full flex_color_picker wheel
///   - Light / Dark / System segmented toggle (classic_white only)
class _AccentPickerSheet extends StatefulWidget {
  /// The customisable theme being configured.
  final AppThemeDefinition definition;

  /// Called when the user picks (or enters) a new accent color.
  final Future<void> Function(Color) onAccentChanged;

  /// Called when the user changes the ThemeMode.  Null for themes that do
  /// not support Light/Dark/System switching.
  final Future<void> Function(ThemeMode)? onThemeModeChanged;

  const _AccentPickerSheet({
    required this.definition,
    required this.onAccentChanged,
    this.onThemeModeChanged,
  });

  @override
  State<_AccentPickerSheet> createState() => _AccentPickerSheetState();
}

class _AccentPickerSheetState extends State<_AccentPickerSheet> {
  // ---- State ----

  /// The currently previewed accent colour.  Starts from the stored value.
  late Color _pickedColor;

  @override
  void initState() {
    super.initState();
    _pickedColor = SettingsService.instance.accentColor(widget.definition.id);
    SettingsService.instance.addListener(_onSettingsChanged);
  }

  @override
  void dispose() {
    SettingsService.instance.removeListener(_onSettingsChanged);
    super.dispose();
  }

  void _onSettingsChanged() => setState(() {
    _pickedColor = SettingsService.instance.accentColor(widget.definition.id);
  });

  // ---- Build ----

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return SingleChildScrollView(
      // Scrollable wrapper prevents overflow on small screens or when the
      // keyboard is visible and the classic_white brightness toggle is also
      // displayed (handle bar + title + 9 swatches + divider + segmented
      // button can exceed available height on compact devices).
      child: Padding(
      padding: EdgeInsets.fromLTRB(
        20, 16, 20,
        MediaQuery.of(context).viewInsets.bottom + 20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Handle bar.
          Center(
            child: Container(
              width: 40, height: 4,
              decoration: BoxDecoration(
                color: cs.onSurfaceVariant.withAlpha(80),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Title.
          Text(
            'Accent Colour — ${widget.definition.name}',
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 16),

          // Curated swatch row.
          _swatchRow(cs),
          const SizedBox(height: 16),

          // Light/Dark/System toggle — only for classic_white.
          if (widget.onThemeModeChanged != null) ...[
            const Divider(),
            const SizedBox(height: 8),
            _themeModeToggle(cs),
            const SizedBox(height: 8),
          ],
        ],
      ),
    ), // Padding
    ); // SingleChildScrollView
  }

  /// Row of 8 colour swatches + Custom button.
  Widget _swatchRow(ColorScheme cs) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        ..._accentSeeds.map((seed) => _SwatchButton(
              color: seed.color,
              name: seed.name,
              isSelected: _pickedColor.toARGB32() == seed.color.toARGB32(),
              onTap: () async {
                setState(() => _pickedColor = seed.color);
                await widget.onAccentChanged(seed.color);
              },
            )),
        // "Custom" button — opens the full color picker wheel.
        _CustomPickerButton(
          currentColor: _pickedColor,
          onColorPicked: (color) async {
            setState(() => _pickedColor = color);
            await widget.onAccentChanged(color);
          },
        ),
      ],
    );
  }

  /// Segmented button for Light / System / Dark — classic_white only.
  Widget _themeModeToggle(ColorScheme cs) {
    final mode = SettingsService.instance.themeMode;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'BRIGHTNESS MODE',
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.2,
            color: cs.primary,
          ),
        ),
        const SizedBox(height: 8),
        SegmentedButton<ThemeMode>(
          segments: const [
            ButtonSegment(
              value: ThemeMode.light,
              label: Text('Light'),
              icon: Icon(Icons.light_mode_rounded),
            ),
            ButtonSegment(
              value: ThemeMode.system,
              label: Text('System'),
              icon: Icon(Icons.brightness_auto_rounded),
            ),
            ButtonSegment(
              value: ThemeMode.dark,
              label: Text('Dark'),
              icon: Icon(Icons.dark_mode_rounded),
            ),
          ],
          selected: {mode},
          onSelectionChanged: (sel) async {
            await widget.onThemeModeChanged!(sel.first);
          },
          style: ButtonStyle(
            minimumSize: WidgetStateProperty.all(const Size(0, 44)),
          ),
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// Swatch button — a single coloured circle with optional checkmark
// ---------------------------------------------------------------------------

class _SwatchButton extends StatelessWidget {
  final Color color;
  final String name;
  final bool isSelected;
  final VoidCallback onTap;

  const _SwatchButton({
    required this.color,
    required this.name,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: '$name accent colour${isSelected ? ', currently selected' : ''}',
      button: true,
      selected: isSelected,
      child: InkWell(
        // InkWell enables Tab+Enter/Space activation on desktop/web keyboards.
        onTap: onTap,
        customBorder: const CircleBorder(),
        child: Tooltip(
          message: name,
          // SizedBox gives a 48×48 dp tap target (Material minimum) while
          // the visible circle remains 40 dp.
          child: SizedBox(
            width: 48,
            height: 48,
            child: Center(
              child: AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
              border: Border.all(
                color: isSelected ? Colors.white : Colors.transparent,
                width: 3,
              ),
              boxShadow: [
                BoxShadow(
                  color: color.withAlpha(isSelected ? 130 : 60),
                  blurRadius: isSelected ? 10 : 4,
                ),
              ],
            ),
            child: isSelected
                ? const Icon(Icons.check_rounded,
                    size: 18, color: Colors.white)
                : null,
          ),
            ),
          ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Custom colour picker button
// ---------------------------------------------------------------------------

/// Opens the full flex_color_picker dialog for picking any color.
class _CustomPickerButton extends StatelessWidget {
  final Color currentColor;
  final Future<void> Function(Color) onColorPicked;

  const _CustomPickerButton({
    required this.currentColor,
    required this.onColorPicked,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Semantics(
      label: 'Custom colour picker',
      button: true,
      child: Tooltip(
        message: 'Custom color…',
        child: InkWell(
          // InkWell enables Tab+Enter/Space activation on desktop/web keyboards.
          onTap: () => _openPicker(context),
          customBorder: const CircleBorder(),
          // SizedBox gives a 48×48 dp tap target (Material minimum).
          child: SizedBox(
            width: 48,
            height: 48,
            child: Center(
              child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: cs.outline,
                width: 1.5,
              ),
              gradient: const SweepGradient(
                colors: [
                  Color(0xFFFF0000), Color(0xFFFFFF00), Color(0xFF00FF00),
                  Color(0xFF00FFFF), Color(0xFF0000FF), Color(0xFFFF00FF),
                  Color(0xFFFF0000),
                ],
              ),
            ),
            child: const Icon(Icons.add_rounded, size: 18, color: Colors.white),
          ),
            ),
          ),
        ),
      ),
    );
  }

  /// Shows the flex_color_picker dialog.
  Future<void> _openPicker(BuildContext context) async {
    Color result = currentColor;

    await showDialog<void>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Choose a custom accent'),
        content: SizedBox(
          width: 280,
          child: ColorPicker(
            color: currentColor,
            onColorChanged: (c) => result = c,
            // Show wheel and opacity sliders; no alpha slider needed.
            pickersEnabled: const {
              ColorPickerType.wheel: true,
              ColorPickerType.primary: true,
              ColorPickerType.accent: true,
            },
            enableShadesSelection: false,
            showColorCode: true,
            copyPasteBehavior: const ColorPickerCopyPasteBehavior(
              copyButton: true,
              pasteButton: true,
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () async {
              Navigator.pop(ctx);
              await onColorPicked(result);
            },
            child: const Text('Apply'),
          ),
        ],
      ),
    );
  }
}
