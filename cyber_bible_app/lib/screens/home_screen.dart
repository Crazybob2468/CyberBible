// Home screen — the landing screen users see when Cyber Bible launches.
//
// Responsibilities:
//   1. Open the Bible database (BibleService.ensureOpen) while showing a
//      "Loading Cyber Bible..." indicator — the database is already on disk
//      thanks to BibleSetupService running in main(), so this is fast on
//      native platforms. On the web it may take a second or two on the very
//      first visit while the DB is seeded into IndexedDB.
//   2. Once ready, show the Cyber Bible branding and a "Read the Bible"
//      button that navigates to the book-selection screen.
//   3. If opening the database fails, show an error message with a Retry
//      button so the user is not left on a blank screen.
//
// Visual design:
//   The home screen uses a fixed branded dark-forest-green + gold gradient
//   that does NOT change with the device dark/light mode setting — it is
//   always the same, like a splash page. All inner screens (book selection,
//   chapter selection, reading) continue to follow the system theme normally.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // SystemUiOverlayStyle

import '../app_routes.dart';
import '../services/bible_service.dart';

// ---------------------------------------------------------------------------
// Brand color palette — fixed for the home screen regardless of theme mode.
// ---------------------------------------------------------------------------

/// The dark anchor of the background gradient (very dark forest green).
const _bgDark = Color(0xFF071A0E);

/// The rich mid-tone of the background gradient (deep forest green).
const _bgMid = Color(0xFF0F3D20);

/// Classic metallic gold used for borders, icons, and text highlights.
const _gold = Color(0xFFD4AF37);

/// Brighter warm gold for the top of the CTA button gradient.
const _goldBright = Color(0xFFF0C040);

/// Darker antique gold for the bottom of the CTA button gradient.
const _goldDeep = Color(0xFFB8860B);

// ---------------------------------------------------------------------------
// Home screen widget
// ---------------------------------------------------------------------------

/// The home / landing screen of Cyber Bible.
///
/// This is a [StatefulWidget] because it drives async database initialization.
/// The three possible states are:
///   - Loading: [BibleService.ensureOpen] is in progress.
///   - Error:   [BibleService.ensureOpen] threw an exception.
///   - Ready:   Database is open; show branding + "Read the Bible" button.
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ---- State ----

  /// True while [BibleService.ensureOpen] is in progress.
  bool _loading = true;

  /// Non-null when [BibleService.ensureOpen] threw an error.
  String? _errorMessage;

  // ---- Lifecycle ----

  @override
  void initState() {
    super.initState();
    _openDatabase();
  }

  // ---- Database initialization ----

  /// Calls [BibleService.ensureOpen] and updates the UI state accordingly.
  ///
  /// On success, [_loading] is set to false and the ready state is shown.
  /// On failure, [_errorMessage] is set so a Retry button is shown.
  Future<void> _openDatabase() async {
    // Reset to loading state before each attempt (handles Retry taps).
    setState(() {
      _loading = true;
      _errorMessage = null;
    });

    try {
      await BibleService.ensureOpen();
      if (mounted) {
        setState(() => _loading = false);
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _loading = false;
          _errorMessage = 'Could not open the Bible database. Please try again.';
        });
      }
    }
  }

  // ---- Build ----

  @override
  Widget build(BuildContext context) {
    // Make the system status bar icons light (white) so they contrast with
    // the dark green gradient background. AnnotatedRegion applies this
    // declaratively as part of the widget tree — no imperative side effects.
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light, // Android: light icons
        statusBarBrightness: Brightness.dark, // iOS: light icons on dark bg
      ),
      child: Scaffold(
        // No AppBar — the gradient fills the entire screen edge-to-edge.
        body: _buildBody(),
      ),
    );
  }

  /// Returns the appropriate body widget for the current state.
  Widget _buildBody() {
    if (_loading) return _buildLoadingState();
    if (_errorMessage != null) return _buildErrorState();
    return _buildReadyState();
  }

  // ---- Shared background ----

  /// A Container that fills the screen with the dark-green brand gradient.
  ///
  /// Used as the first child in each state's Stack so every UI state shares
  /// the same branded background — the color never changes with dark mode.
  Widget _gradientBackground() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          // Slightly darker at top and bottom, richer in the middle.
          colors: [_bgDark, _bgMid, _bgDark],
          stops: [0.0, 0.5, 1.0],
        ),
      ),
    );
  }

  // ---- Loading state ----

  /// Gold-tinted spinner shown while the database is being opened.
  Widget _buildLoadingState() {
    return Stack(
      fit: StackFit.expand,
      children: [
        _gradientBackground(),
        SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Gold progress ring to stay on-brand even during loading.
                const CircularProgressIndicator(
                  color: _gold,
                  strokeWidth: 3,
                ),
                const SizedBox(height: 24),
                const Text(
                  'Loading Cyber Bible...',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white60,
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // ---- Error state ----

  /// Error card + Retry button shown when the database open fails.
  Widget _buildErrorState() {
    return Stack(
      fit: StackFit.expand,
      children: [
        _gradientBackground(),
        SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              // Frosted-glass card to surface the error on the dark background.
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  // White at 10% opacity, baked into the ARGB hex value so
                  // this color remains a const and avoids an extra method call.
                  color: const Color(0x1AFFFFFF),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: const Color(0x33D4AF37), // gold 20%
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.error_outline,
                      size: 48,
                      color: Colors.redAccent,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      _errorMessage!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(height: 24),
                    _GoldButton(
                      label: 'Retry',
                      icon: Icons.refresh,
                      onTap: _openDatabase,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // ---- Ready state ----

  /// Full branded home screen shown when the database is open.
  ///
  /// Layout (top to bottom):
  ///   • Dark-green gradient background
  ///   • Subtle decorative circles in corners for depth
  ///   • Glowing gold-bordered book icon
  ///   • "Cyber Bible" title (white + gold)
  ///   • Tagline
  ///   • Thin gold divider
  ///   • Genesis 1:1 verse in a frosted-glass block
  ///   • "Read the Bible" gold gradient button
  Widget _buildReadyState() {
    return Stack(
      fit: StackFit.expand,
      children: [
        // 1. Branded gradient fills the entire screen.
        _gradientBackground(),

        // 2. Subtle gold-leaf style overlay: soft corner glow, center sheen,
        //    and fine frame lines to feel traditional and elegant.
        const Positioned.fill(child: IgnorePointer(child: _GoldLeafOverlay())),

        // 3. Side filigree swirls for a classic, ornate visual language.
        const Positioned.fill(
          child: IgnorePointer(child: _SideFiligreeOverlay()),
        ),

        // 4. Main scrollable content column.
        //    SingleChildScrollView prevents overflow on very small screens.
        SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                children: [
                  const SizedBox(height: 34),

                  // Ornamental icon presentation.
                  _buildIconBadge(),
                  const SizedBox(height: 28),

                  // Elegant gold-leaf horizontal divider between icon and title.
                  const _GoldHorizontalOrnament(),
                  const SizedBox(height: 28),

                  // Large "Cyber Bible" title.
                  _buildTitle(),
                  const SizedBox(height: 10),

                  // Tagline.
                  const Text(
                    'A free and open source Bible study app',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.5,
                      color: Color(0xD8F3E6C8),
                      letterSpacing: 0.35,
                    ),
                  ),
                  const SizedBox(height: 40),

                  // Thin gold gradient divider.
                  Container(
                    height: 1,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        // Fade in from the left, fade out to the right.
                        colors: [
                          Colors.transparent,
                          _gold,
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),

                  // Featured verse: Genesis 1:1.
                  _buildVerseBlock(),
                  const SizedBox(height: 48),

                  // Primary CTA — navigate to book selection.
                  _GoldButton(
                    label: 'Read the Bible',
                    icon: Icons.library_books_rounded,
                    onTap: () =>
                        Navigator.pushNamed(context, AppRoutes.bookSelect),
                    large: true,
                  ),
                  const SizedBox(height: 48),
                ],
              ),
            ),
          ),
        ),

        // 5. Settings gear icon — rendered LAST so it sits on top of the
        //    full-screen scroll view in Z-order. (If positioned earlier in
        //    the Stack, the SingleChildScrollView above it captures all taps
        //    and the icon becomes unreachable.)
        Positioned(
          top: 0,
          right: 0,
          child: SafeArea(
            child: Semantics(
              label: 'Settings',
              button: true,
              child: IconButton(
                icon: const Icon(Icons.settings_rounded),
                color: const Color(0xCCF3E6C8), // cream-gold, matches home screen palette
                tooltip: 'Settings',
                onPressed: () =>
                    Navigator.pushNamed(context, AppRoutes.settings),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // ---- Ready state sub-builders ----

  /// The branded app icon centered inside a traditional gilded frame.
  ///
  /// Uses the same icon artwork as launcher icons so the landing experience
  /// visually matches the installed app identity.
  Widget _buildIconBadge() {
    return SizedBox(
      width: 214,
      height: 214,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Diffuse gold aura behind the icon.
          Container(
            width: 190,
            height: 190,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [Color(0x55D4AF37), Color(0x00D4AF37)],
              ),
            ),
          ),

          // Branded icon artwork itself.
          Container(
            width: 156,
            height: 156,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0x66000000),
                  blurRadius: 18,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: Image.asset(
              'assets/branding/cyber_bible_icon.png',
              fit: BoxFit.contain,
              // This is the same artwork as the launcher icon — purely
              // decorative on the landing screen.  Exclude it from the
              // accessibility tree so screen readers skip it rather than
              // announcing a useless "image" node.
              excludeFromSemantics: true,
            ),
          ),
        ],
      ),
    );
  }

  /// "Cyber" in white + "Bible" in gold, large bold display type.
  Widget _buildTitle() {
    return RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(
        children: [
          TextSpan(
            text: 'Cyber ',
            style: TextStyle(
              fontSize: 46,
              fontWeight: FontWeight.w900,
              color: Colors.white,
              letterSpacing: 2,
            ),
          ),
          TextSpan(
            text: 'Bible',
            style: TextStyle(
              fontSize: 46,
              fontWeight: FontWeight.w900,
              color: _gold,
              letterSpacing: 2,
            ),
          ),
        ],
      ),
    );
  }

  /// Frosted-glass card displaying the featured verse (Genesis 1:1).
  ///
  /// The verse text and attribution are hardcoded here. A future "Verse of
  /// the Day" feature (Phase 2+) can replace this with a dynamic lookup.
  Widget _buildVerseBlock() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      decoration: BoxDecoration(
        // Deep translucent green panel with warm gold edge.
        color: const Color(0x26433722),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: const Color(0x88D4AF37), // gold 53%
          width: 1.4,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x2A000000),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Gentle top highlight band for a gilded card feel.
          Positioned(
            left: 10,
            right: 10,
            top: 8,
            child: Container(
              height: 16,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0x33D4AF37), Color(0x00D4AF37)],
                ),
              ),
            ),
          ),
          const Column(
            children: [
              Text(
                '"In the beginning God created the heavens\n'
                'and the earth."',
                textAlign: TextAlign.center,
                style: TextStyle(
                  // white at ~90%
                  color: Color(0xE6FFFFFF),
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                  height: 1.65,
                  letterSpacing: 0.2,
                ),
              ),
              SizedBox(height: 12),
              Text(
                '— Genesis 1:1',
                style: TextStyle(
                  color: _gold,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.8,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Elegant gold-leaf horizontal divider shown between the app icon and the
/// "Cyber Bible" title on the landing page. Draws a faded hairline on both
/// sides of a small central diamond, with short curved tendrils and dot
/// accents flanking the diamond — evoking classic illuminated-manuscript
/// ornament rules.
class _GoldHorizontalOrnament extends StatelessWidget {
  const _GoldHorizontalOrnament();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 220,
      height: 24,
      child: CustomPaint(
        painter: _GoldHorizontalOrnamentPainter(),
      ),
    );
  }
}

/// Paints the gold-leaf ornament rule:
/// - Two faded hairlines extending outward from the centre.
/// - A solid gold diamond at the centre.
/// - Small dot accents flanking the diamond.
/// - Short upward-curving tendrils beyond the dots, ending in tiny fade dots.
class _GoldHorizontalOrnamentPainter extends CustomPainter {
  const _GoldHorizontalOrnamentPainter();

  // Gold palette shared with the rest of the landing page.
  static const Color _goldMid = Color(0xCCD4AF37);
  static const Color _goldDim = Color(0x99D4AF37);
  static const Color _goldFade = Color(0x00D4AF37);

  @override
  void paint(Canvas canvas, Size size) {
    final double cx = size.width / 2;
    final double cy = size.height / 2;

    // ---- Faded hairlines left and right of the central ornament ----
    final hairPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0
      ..strokeCap = StrokeCap.round;

    // Left hairline fades from transparent (far left) to gold (near centre).
    hairPaint.shader = LinearGradient(
      colors: const [_goldFade, _goldMid],
    ).createShader(Rect.fromLTWH(4, cy - 0.5, cx - 22, 1));
    canvas.drawLine(Offset(4, cy), Offset(cx - 22, cy), hairPaint);

    // Right hairline fades from gold (near centre) to transparent (far right).
    hairPaint.shader = LinearGradient(
      colors: const [_goldMid, _goldFade],
    ).createShader(Rect.fromLTWH(cx + 22, cy - 0.5, size.width - cx - 26, 1));
    canvas.drawLine(Offset(cx + 22, cy), Offset(size.width - 4, cy), hairPaint);

    hairPaint.shader = null;

    // ---- Central diamond ----
    final diamond = Path()
      ..moveTo(cx, cy - 7) // top vertex
      ..lineTo(cx + 6, cy) // right vertex
      ..lineTo(cx, cy + 7) // bottom vertex
      ..lineTo(cx - 6, cy) // left vertex
      ..close();

    canvas.drawPath(
      diamond,
      Paint()
        ..style = PaintingStyle.fill
        ..color = _goldMid,
    );

    // ---- Flanking dot accents ----
    final dotPaint = Paint()
      ..style = PaintingStyle.fill
      ..color = _goldDim;
    canvas.drawCircle(Offset(cx - 12, cy), 2.2, dotPaint);
    canvas.drawCircle(Offset(cx + 12, cy), 2.2, dotPaint);

    // ---- Short curved tendrils beyond the dots ----
    final tendrilPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.2
      ..strokeCap = StrokeCap.round
      ..color = _goldDim;

    // Left tendril curves gently upward.
    final leftTendril = Path()
      ..moveTo(cx - 16, cy)
      ..cubicTo(cx - 22, cy - 1, cx - 30, cy - 8, cx - 38, cy - 4);
    canvas.drawPath(leftTendril, tendrilPaint);

    // Right tendril mirrors the left.
    final rightTendril = Path()
      ..moveTo(cx + 16, cy)
      ..cubicTo(cx + 22, cy - 1, cx + 30, cy - 8, cx + 38, cy - 4);
    canvas.drawPath(rightTendril, tendrilPaint);

    // Tiny faded terminal dots at the ends of the tendrils.
    final terminalPaint = Paint()
      ..style = PaintingStyle.fill
      ..color = const Color(0x55D4AF37);
    canvas.drawCircle(Offset(cx - 38, cy - 4), 1.5, terminalPaint);
    canvas.drawCircle(Offset(cx + 38, cy - 4), 1.5, terminalPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

/// Full-height decorative side swirls for a grand, traditional appearance.
class _SideFiligreeOverlay extends StatelessWidget {
  const _SideFiligreeOverlay();

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _SideFiligreePainter(),
    );
  }
}

/// Paints mirrored gold-leaf-style side flourishes.
class _SideFiligreePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..strokeWidth = 2.2
      ..color = const Color(0x55D4AF37);

    final softPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..strokeWidth = 1.2
      ..color = const Color(0x3FD4AF37);

    void drawSide({required bool left}) {
      final xBase = left ? 20.0 : size.width - 20.0;
      final dir = left ? 1.0 : -1.0;

      final main = Path()
        ..moveTo(xBase, size.height * 0.14)
        ..cubicTo(
          xBase + (32 * dir),
          size.height * 0.20,
          xBase + (38 * dir),
          size.height * 0.30,
          xBase,
          size.height * 0.36,
        )
        ..cubicTo(
          xBase - (26 * dir),
          size.height * 0.43,
          xBase - (26 * dir),
          size.height * 0.52,
          xBase,
          size.height * 0.58,
        )
        ..cubicTo(
          xBase + (36 * dir),
          size.height * 0.65,
          xBase + (36 * dir),
          size.height * 0.74,
          xBase,
          size.height * 0.82,
        );

      final leaf1 = Path()
        ..moveTo(xBase, size.height * 0.36)
        ..quadraticBezierTo(
          xBase + (44 * dir),
          size.height * 0.34,
          xBase + (14 * dir),
          size.height * 0.39,
        );

      final leaf2 = Path()
        ..moveTo(xBase, size.height * 0.58)
        ..quadraticBezierTo(
          xBase + (44 * dir),
          size.height * 0.56,
          xBase + (12 * dir),
          size.height * 0.61,
        );

      canvas.drawPath(main, paint);
      canvas.drawPath(leaf1, softPaint);
      canvas.drawPath(leaf2, softPaint);

      final dotPaint = Paint()..color = const Color(0x73D4AF37);
      canvas.drawCircle(Offset(xBase, size.height * 0.14), 2.5, dotPaint);
      canvas.drawCircle(Offset(xBase, size.height * 0.82), 2.5, dotPaint);
    }

    drawSide(left: true);
    drawSide(left: false);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

// ---------------------------------------------------------------------------
// Reusable: gold gradient button
// ---------------------------------------------------------------------------

/// A gold gradient button used across the home screen.
///
/// The [large] flag switches between a larger CTA styling (for "Read the
/// Bible") and a smaller compact style (for "Retry").
class _GoldButton extends StatelessWidget {
  /// The label text displayed inside the button.
  final String label;

  /// The leading icon displayed to the left of the label.
  final IconData icon;

  /// Called when the button is tapped.
  final VoidCallback onTap;

  /// When true, uses larger padding and font size for the primary CTA.
  final bool large;

  const _GoldButton({
    required this.label,
    required this.icon,
    required this.onTap,
    this.large = false,
  });

  @override
  Widget build(BuildContext context) {
    final radius = large ? 32.0 : 24.0;

    return Container(
      decoration: BoxDecoration(
        // Three-stop gold gradient from bright → metallic → deep antique.
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [_goldBright, _gold, _goldDeep],
        ),
        borderRadius: BorderRadius.circular(radius),
        boxShadow: const [
          // Warm gold drop-shadow for the "glowing" effect.
          BoxShadow(
            color: Color(0x80D4AF37), // gold 50%
            blurRadius: 18,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Material(
        // Transparent so the gradient shows through while InkWell ripples work.
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(radius),
        child: InkWell(
          borderRadius: BorderRadius.circular(radius),
          onTap: onTap,
          splashColor: const Color(0x33FFFFFF), // white 20%
          highlightColor: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: large ? 40 : 24,
              // Minimum 16 px vertical padding so the non-large (Retry)
              // button renders at ≥ 48 dp height — the Material tap-target
              // minimum.  14 px was ~46 dp which was just below the threshold.
              vertical: large ? 18 : 16,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Icon in dark green so it reads against the gold background.
                Icon(icon, color: _bgDark, size: large ? 22 : 18),
                SizedBox(width: large ? 12 : 8),
                Text(
                  label,
                  style: TextStyle(
                    // Dark green text on gold for maximum contrast.
                    color: _bgDark,
                    fontSize: large ? 18 : 15,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.4,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Reusable: gold-leaf style landing overlay
// ---------------------------------------------------------------------------

/// Decorative overlay for the landing screen.
///
/// Uses soft radial/linear highlights and fine border lines to create a
/// traditional "gold leaf" atmosphere without changing the app's green/gold
/// palette or reducing readability of foreground text.
class _GoldLeafOverlay extends StatelessWidget {
  const _GoldLeafOverlay();

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: const [
        // Top-right warm glow.
        Positioned(
          top: -140,
          right: -120,
          child: _OverlayGlow(size: 420, opacity: 0.20),
        ),

        // Bottom-left warm glow.
        Positioned(
          bottom: -170,
          left: -130,
          child: _OverlayGlow(size: 460, opacity: 0.16),
        ),

        // Center vertical sheen.
        _OverlaySheen(),

        // Fine inner frame line.
        Positioned.fill(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.fromBorderSide(
                  BorderSide(color: Color(0x26D4AF37), width: 1.2),
                ),
                borderRadius: BorderRadius.all(Radius.circular(14)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/// Soft circular gold glow used by [_GoldLeafOverlay].
class _OverlayGlow extends StatelessWidget {
  final double size;
  final double opacity;

  const _OverlayGlow({required this.size, required this.opacity});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            Color.fromRGBO(212, 175, 55, opacity),
            const Color(0x00D4AF37),
          ],
        ),
      ),
    );
  }
}

/// Subtle center sheen to emulate metallic leaf catch-light.
class _OverlaySheen extends StatelessWidget {
  const _OverlaySheen();

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0x00D4AF37),
              Color(0x1AD4AF37),
              Color(0x00D4AF37),
            ],
            stops: [0.1, 0.5, 0.9],
          ),
        ),
      ),
    );
  }
}
