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

import 'package:flutter/foundation.dart'; // kDebugMode, debugPrint
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // SystemUiOverlayStyle

import '../routes.dart';
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
      // Log the raw exception in debug builds only — paths and SQL details
      // should not be surfaced to end users in production.
      if (kDebugMode) {
        debugPrint('HomeScreen._openDatabase() failed: $e');
      }
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

        // 2. Decorative circles placed at the edges — they extend partially
        //    off-screen (negative position values) for a depth effect.
        //    All sizes/positions are purely aesthetic.
        const Positioned(
          top: -100,
          right: -100,
          child: _DecorativeCircle(size: 320),
        ),
        const Positioned(
          bottom: -80,
          left: -80,
          child: _DecorativeCircle(size: 260),
        ),
        const Positioned(
          top: 60,
          left: 20,
          child: _DecorativeCircle(size: 80),
        ),

        // 3. Main scrollable content column.
        //    SingleChildScrollView prevents overflow on very small screens.
        SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                children: [
                  const SizedBox(height: 48),

                  // Glowing icon badge.
                  _buildIconBadge(),
                  const SizedBox(height: 28),

                  // Large "Cyber Bible" title.
                  _buildTitle(),
                  const SizedBox(height: 10),

                  // Tagline.
                  const Text(
                    'A free and open source Bible study app',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white60,
                      letterSpacing: 0.3,
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
      ],
    );
  }

  // ---- Ready state sub-builders ----

  /// The large book icon centered inside a glowing gold-bordered circle.
  Widget _buildIconBadge() {
    return Container(
      width: 128,
      height: 128,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        // Very subtle gold fill inside the circle.
        color: const Color(0x1AD4AF37), // gold 10%
        border: Border.all(color: _gold, width: 2.5),
        boxShadow: const [
          // Outer glow — diffuse.
          BoxShadow(
            color: Color(0x66D4AF37), // gold 40%
            blurRadius: 36,
            spreadRadius: 6,
          ),
          // Inner soft ring.
          BoxShadow(
            color: Color(0x33D4AF37), // gold 20%
            blurRadius: 12,
            spreadRadius: 2,
          ),
        ],
      ),
      child: const Icon(
        Icons.menu_book_rounded,
        size: 60,
        color: _gold,
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
        // Frosted glass: white at 10% opacity, baked into ARGB hex (const-safe).
        color: const Color(0x1AFFFFFF),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: const Color(0x4DD4AF37), // gold 30%
        ),
      ),
      child: const Column(
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
    );
  }
}

// ---------------------------------------------------------------------------
// Reusable: gold gradient button
// ---------------------------------------------------------------------------

/// A gold gradient button used across the home screen.
///
/// The [large] flag switches between a full-width CTA style (for "Read the
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
              vertical: large ? 18 : 14,
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
// Reusable: decorative background circle
// ---------------------------------------------------------------------------

/// A translucent gold-outlined circle placed in the background of the
/// home screen to add visual depth to the gradient.
///
/// These are purely decorative — they carry no semantic meaning and are
/// intentionally placed partially off-screen via [Positioned] so they
/// act as a subtle framing device rather than a foreground element.
class _DecorativeCircle extends StatelessWidget {
  /// The diameter of the circle in logical pixels.
  final double size;

  const _DecorativeCircle({required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          // gold at 10% — barely visible, just adds texture.
          color: const Color(0x1AD4AF37),
          width: 1.5,
        ),
      ),
    );
  }
}
