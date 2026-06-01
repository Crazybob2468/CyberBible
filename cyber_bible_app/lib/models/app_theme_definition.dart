// Theme definitions for Cyber Bible.
//
// This file contains:
//   - [AppThemeDefinition]  — data class describing a single theme entry
//   - [AppThemeCategory]    — enum distinguishing customisable vs. set themes
//   - [AppThemeCatalog]     — static list of all available themes in display order
//   - [AppThemeBuilder]     — static helpers that turn a theme definition +
//                             user settings into concrete [ThemeData] objects
//
// Architecture note:
//   • Customisable themes use [ColorScheme.fromSeed] so Material 3 generates a
//     full coherent palette from the user-chosen accent seed.  The surface and
//     background slots are overridden to achieve the desired base tone.
//   • Set themes use a hand-crafted [ColorScheme] for full creative control.
//     They do NOT expose accent-color or light/dark mode options.

import 'package:flutter/material.dart';

import '../services/settings_service.dart';

// ---------------------------------------------------------------------------
// Enums and data class
// ---------------------------------------------------------------------------

/// Whether a theme allows the user to customise the accent color and (for
/// 'classic_white') the light/dark mode.
enum AppThemeCategory {
  /// User can pick an accent seed color.  'classic_white' also exposes the
  /// Light / Dark / System ThemeMode toggle.
  customizable,

  /// Fixed, hand-crafted colour palette.  No user customisation.
  set,
}

/// Describes a single theme option shown on the theme-selection screen.
class AppThemeDefinition {
  /// Stable key used in [SharedPreferences] (e.g. 'forest_cathedral').
  final String id;

  /// Human-readable display name shown on the theme-selection screen.
  final String name;

  /// Whether this theme is customisable or a fixed set theme.
  final AppThemeCategory category;

  /// Base surface color shown in the theme preview card for customisable
  /// themes.  Null for set themes — they use their own card painter.
  final Color? baseColor;

  /// Default accent color used before the user customises this theme.
  /// Only meaningful for [AppThemeCategory.customizable] themes.
  final Color defaultAccent;

  const AppThemeDefinition({
    required this.id,
    required this.name,
    required this.category,
    this.baseColor,
    required this.defaultAccent,
  });

  /// Whether this theme supports the Light / Dark / System toggle.
  bool get supportsThemeMode => id == 'classic_white';

  /// Whether this theme is customisable (accent color can be changed).
  bool get isCustomizable => category == AppThemeCategory.customizable;

  /// Whether this customisable theme uses a dark base color.
  ///
  /// Dark-base customisable themes generate a dark [ColorScheme] rather than
  /// a light one.  They always use [ThemeMode.light] (a single dark-looking
  /// [ThemeData]) because only one ThemeData is ever constructed for them.
  bool get isDarkBase =>
      baseColor != null &&
      ThemeData.estimateBrightnessForColor(baseColor!) == Brightness.dark;
}

// ---------------------------------------------------------------------------
// Theme catalog — all available themes in display order
// ---------------------------------------------------------------------------

/// Complete ordered list of all themes.
///
/// The first group (customisable) is shown at the top of the theme-selection
/// screen; the second group (set themes) appears after a divider.
class AppThemeCatalog {
  AppThemeCatalog._(); // Namespace only — no instantiation.

  // ---- Customisable themes ----

  /// Default white theme — supports L/D/S toggle + accent picker.
  static const classicWhite = AppThemeDefinition(
    id: 'classic_white',
    name: 'Classic White',
    category: AppThemeCategory.customizable,
    baseColor: Color(0xFFFFFFFF),
    defaultAccent: Color(0xFF2D6A4F),
  );

  /// Warm cream — soft antique-white base + accent picker.
  static const warmCream = AppThemeDefinition(
    id: 'warm_cream',
    name: 'Warm Cream',
    category: AppThemeCategory.customizable,
    baseColor: Color(0xFFFAF0E6),
    defaultAccent: Color(0xFFFF8F00),
  );

  /// Aged parchment — tinted tan/sepia base + accent picker.
  static const agedParchment = AppThemeDefinition(
    id: 'aged_parchment',
    name: 'Aged Parchment',
    category: AppThemeCategory.customizable,
    baseColor: Color(0xFFF5E6C8),
    defaultAccent: Color(0xFF8D6E63),
  );

  /// Cool slate — light blue-gray base + accent picker.
  static const coolSlate = AppThemeDefinition(
    id: 'cool_slate',
    name: 'Cool Slate',
    category: AppThemeCategory.customizable,
    baseColor: Color(0xFFECEFF1),
    defaultAccent: Color(0xFF1565C0),
  );

  /// Warm sand — sandy light-brown base + accent picker.
  static const warmSand = AppThemeDefinition(
    id: 'warm_sand',
    name: 'Warm Sand',
    category: AppThemeCategory.customizable,
    baseColor: Color(0xFFF5EFE0),
    defaultAccent: Color(0xFFBF360C),
  );

  // ---- Dark customisable themes ----

  /// Night Sky — dark steel-blue base + accent picker.
  ///
  /// A clean dark reading environment with a cool starlit tone.
  /// The user's chosen accent color drives buttons, links, and highlights.
  static const nightSky = AppThemeDefinition(
    id: 'night_sky',
    name: 'Night Sky',
    category: AppThemeCategory.customizable,
    baseColor: Color(0xFF1A2232), // Dark slate-blue
    defaultAccent: Color(0xFF7EB2E8), // Soft sky blue
  );

  /// Dark Forest — deep forest-green base matching the home screen aesthetic.
  ///
  /// Pairs naturally with the default antique-gold accent for a rich nighttime
  /// reading environment.  Any accent can be chosen by the user.
  static const darkForest = AppThemeDefinition(
    id: 'dark_forest',
    name: 'Dark Forest',
    category: AppThemeCategory.customizable,
    baseColor: Color(0xFF0C1E10), // Deep forest green
    defaultAccent: Color(0xFFD4AF37), // Antique gold
  );

  /// Charcoal — warm graphite base + accent picker.
  ///
  /// A neutral dark canvas that works well with almost any accent color and
  /// keeps eye strain low for extended reading sessions.
  static const charcoal = AppThemeDefinition(
    id: 'charcoal',
    name: 'Charcoal',
    category: AppThemeCategory.customizable,
    baseColor: Color(0xFF1C1E24), // Dark warm graphite
    defaultAccent: Color(0xFFE8C97A), // Warm gold
  );

  // ---- Set themes ----

  /// Forest Cathedral — deep forest green with gold leaf.  Inspired by the
  /// home-screen brand gradient; features ornamental swirl accents on the
  /// preview card.
  static const forestCathedral = AppThemeDefinition(
    id: 'forest_cathedral',
    name: 'Forest Cathedral',
    category: AppThemeCategory.set,
    defaultAccent: Color(0xFFD4AF37), // Gold — informational only, not used by builder
  );

  /// Midnight Ocean — deep navy and silver blue.
  static const midnightOcean = AppThemeDefinition(
    id: 'midnight_ocean',
    name: 'Midnight Ocean',
    category: AppThemeCategory.set,
    defaultAccent: Color(0xFF64B5F6),
  );

  /// Desert Sunrise — dark amber-brown and warm gold.
  static const desertSunrise = AppThemeDefinition(
    id: 'desert_sunrise',
    name: 'Desert Sunrise',
    category: AppThemeCategory.set,
    defaultAccent: Color(0xFFFFB74D),
  );

  /// Royal Amethyst — deep purple and gleaming gold.
  static const royalAmethyst = AppThemeDefinition(
    id: 'royal_amethyst',
    name: 'Royal Amethyst',
    category: AppThemeCategory.set,
    defaultAccent: Color(0xFFFFD54F),
  );

  /// Crimson Covenant — deep burgundy and warm ivory.
  static const crimsonCovenant = AppThemeDefinition(
    id: 'crimson_covenant',
    name: 'Crimson Covenant',
    category: AppThemeCategory.set,
    defaultAccent: Color(0xFFFFE0B2),
  );

  /// Aurora — near-black slate with electric teal-green highlights.
  static const aurora = AppThemeDefinition(
    id: 'aurora',
    name: 'Aurora',
    category: AppThemeCategory.set,
    defaultAccent: Color(0xFF64FFDA),
  );

  // ---- Master list ----

  /// All themes in the order they appear on the selection screen.
  /// Customisable themes first, then set themes.
  static const List<AppThemeDefinition> all = [
    classicWhite,
    warmCream,
    agedParchment,
    coolSlate,
    warmSand,
    nightSky,
    darkForest,
    charcoal,
    forestCathedral,
    midnightOcean,
    desertSunrise,
    royalAmethyst,
    crimsonCovenant,
    aurora,
  ];

  /// Returns the [AppThemeDefinition] with [id], or [classicWhite] if not found.
  static AppThemeDefinition byId(String id) {
    for (final t in all) {
      if (t.id == id) return t;
    }
    return classicWhite;
  }
}

// ---------------------------------------------------------------------------
// ThemeData builder
// ---------------------------------------------------------------------------

/// Generates [ThemeData] pairs from a theme definition + user settings.
class AppThemeBuilder {
  AppThemeBuilder._(); // Namespace only.

  // ---- Public entry points ----

  /// Builds the [ThemeData] to pass to [MaterialApp.theme] (light).
  ///
  /// For customisable themes, [accent] drives [ColorScheme.fromSeed].
  /// For set themes, a hand-crafted scheme is returned regardless of [accent].
  static ThemeData buildLight(AppThemeDefinition def, Color accent) {
    if (!def.isCustomizable) return _setTheme(def.id);
    // Dark-base customisable themes (Night Sky, Dark Forest, Charcoal) use a
    // specially constructed dark scheme rather than the standard light one.
    if (def.isDarkBase) return _customizableDark(def, accent);
    return _customizableLight(def, accent);
  }

  /// Builds the [ThemeData] to pass to [MaterialApp.darkTheme] (dark).
  ///
  /// Only 'classic_white' produces a meaningful dark theme.  All other
  /// customisable themes return null (the framework ignores a null darkTheme
  /// and always uses the light theme).
  ///
  /// Set themes return a null — they are already dark by design and should
  /// not invert.
  static ThemeData? buildDark(AppThemeDefinition def, Color accent) {
    if (def.id == 'classic_white') return _classicWhiteDark(accent);
    return null; // No dark variant for other themes
  }

  /// Returns [ThemeMode.system] for 'classic_white', [ThemeMode.light] for
  /// everything else (set themes are dark by design but use themeMode=light
  /// because they ship only one ThemeData).
  static ThemeMode resolvedThemeMode(
    AppThemeDefinition def,
    ThemeMode userMode,
  ) {
    if (def.id == 'classic_white') return userMode;
    return ThemeMode.light; // Use the single ThemeData for set/other themes
  }

  // ---- Customisable theme builders ----

  /// Generates a light ThemeData from a tinted base surface + accent seed.
  static ThemeData _customizableLight(AppThemeDefinition def, Color accent) {
    // Generate a full Material 3 scheme from the accent seed, then override
    // the surface color with the theme's custom base tone.
    final seed = ColorScheme.fromSeed(
      seedColor: accent,
      brightness: Brightness.light,
    );
    final base = def.baseColor ?? Colors.white;
    // Blend the base color into surface-related slots so headings / cards
    // feel tinted by the theme's characteristic tone while the accent drives
    // buttons, icons, and selections.
    final scheme = seed.copyWith(
      surface: base,
      surfaceContainerHighest: base,
      surfaceContainerHigh: Color.lerp(base, seed.surfaceContainerHigh, 0.5)!,
      surfaceContainer: Color.lerp(base, seed.surfaceContainer, 0.6)!,
      surfaceContainerLow: Color.lerp(base, seed.surfaceContainerLow, 0.7)!,
      surfaceContainerLowest: Color.lerp(base, seed.surfaceContainerLowest, 0.8)!,
    );
    return _baseThemeData(scheme);
  }

  /// Generates a dark [ThemeData] for customisable themes with a dark base.
  ///
  /// A full Material 3 [Brightness.dark] scheme is seeded from the user-chosen
  /// accent color, then all surface slots are replaced with the theme's
  /// characteristic dark base tone so every screen has a consistent colored
  /// background.  Small white-alpha blends create subtle surface hierarchy
  /// (surfaceContainerLowest ← base, surfaceContainerHighest ← brightest)
  /// without losing the overall dark character.
  static ThemeData _customizableDark(AppThemeDefinition def, Color accent) {
    final base = def.baseColor!;
    // Seed a full dark Material 3 scheme from the chosen accent color.
    final seed = ColorScheme.fromSeed(
      seedColor: accent,
      brightness: Brightness.dark,
    );
    // Override surface hierarchy with blends on the base color.
    final scheme = seed.copyWith(
      surface:                 base,
      surfaceContainerLowest:  base,
      surfaceContainerLow:     Color.alphaBlend(Colors.white.withAlpha(8),  base),
      surfaceContainer:        Color.alphaBlend(Colors.white.withAlpha(14), base),
      surfaceContainerHigh:    Color.alphaBlend(Colors.white.withAlpha(22), base),
      surfaceContainerHighest: Color.alphaBlend(Colors.white.withAlpha(30), base),
    );
    // Scaffold is slightly darker than the base for depth on background areas.
    final scaffoldBg = Color.alphaBlend(Colors.black.withAlpha(30), base);
    return ThemeData(
      colorScheme: scheme,
      scaffoldBackgroundColor: scaffoldBg,
      useMaterial3: true,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: scaffoldBg,
        foregroundColor: accent,
        elevation: 0,
        scrolledUnderElevation: 2,
      ),
    );
  }

  /// Dark variant for 'classic_white' — deep, coherent, accent-driven.
  static ThemeData _classicWhiteDark(Color accent) {
    final scheme = ColorScheme.fromSeed(
      seedColor: accent,
      brightness: Brightness.dark,
    );
    return _baseThemeData(scheme);
  }

  // ---- Set theme builders ----

  /// Returns the hand-crafted [ThemeData] for the given set-theme [id].
  static ThemeData _setTheme(String id) {
    switch (id) {
      case 'forest_cathedral':
        return _forestCathedralTheme();
      case 'midnight_ocean':
        return _midnightOceanTheme();
      case 'desert_sunrise':
        return _desertSunriseTheme();
      case 'royal_amethyst':
        return _royalAmethystTheme();
      case 'crimson_covenant':
        return _crimsonCovenantTheme();
      case 'aurora':
        return _auroraTheme();
      default:
        // Fallback — should never happen if catalog IDs are consistent.
        return _forestCathedralTheme();
    }
  }

  // ---- Common base ThemeData builder ----

  /// Wraps a [ColorScheme] in a [ThemeData] with shared Material 3 settings.
  static ThemeData _baseThemeData(ColorScheme scheme) {
    return ThemeData(
      colorScheme: scheme,
      useMaterial3: true,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: scheme.surface,
        foregroundColor: scheme.onSurface,
        elevation: 0,
        scrolledUnderElevation: 2,
      ),
    );
  }

  // ==========================================================================
  // Hand-crafted set-theme ColorSchemes
  // ==========================================================================

  // ---- Forest Cathedral ----
  //
  // Palette: deep forest-green surfaces, antique gold primary, warm cream text.
  // Inspired directly by the Cyber Bible home-screen brand gradient.
  // The preview card on the theme page mirrors the home screen aesthetic
  // (dark green, gold ornaments, swirl filigree).

  static ThemeData _forestCathedralTheme() {
    const scheme = ColorScheme(
      brightness: Brightness.dark,
      // ── Primary (gold) ──
      primary:              Color(0xFFD4AF37), // Antique gold
      onPrimary:            Color(0xFF071A0E), // Deep forest for contrast on gold
      primaryContainer:     Color(0xFF1B5E37), // Rich forest green
      onPrimaryContainer:   Color(0xFFFFE082), // Light gold
      // ── Secondary ──
      secondary:            Color(0xFFB8860B), // Dark antique gold
      onSecondary:          Color(0xFF071A0E),
      secondaryContainer:   Color(0xFF0F3D20), // Deep green panel
      onSecondaryContainer: Color(0xFFF3E6C8), // Warm cream
      // ── Tertiary ──
      tertiary:             Color(0xFF81C784), // Soft leaf green
      onTertiary:           Color(0xFF0A2515),
      tertiaryContainer:    Color(0xFF143A1C),
      onTertiaryContainer:  Color(0xFFB8F5B0),
      // ── Error ──
      error:                Color(0xFFCF6679),
      onError:              Color(0xFF1A0308),
      errorContainer:       Color(0xFF4A1020),
      onErrorContainer:     Color(0xFFFFB3C1),
      // ── Surfaces ──
      surface:              Color(0xFF0B2A14), // Dark forest green
      onSurface:            Color(0xFFF3E6C8), // Warm cream text
      surfaceContainerHighest:       Color(0xFF12321C),
      onSurfaceVariant:     Color(0xFFB8C8B0), // Muted sage
      // ── Outline ──
      outline:              Color(0xFF5A7860),
      outlineVariant:       Color(0xFF2D4A35),
      // ── Misc ──
      shadow:               Colors.black,
      scrim:                Colors.black,
      inverseSurface:       Color(0xFFDCE7DA),
      onInverseSurface:     Color(0xFF1A2D1E),
      inversePrimary:       Color(0xFF2D6A4F),
    );

    return ThemeData(
      colorScheme: scheme,
      // Richer forest green — visually distinct from near-black, evokes
      // cathedral canopy even on the reading screen background.
      scaffoldBackgroundColor: const Color(0xFF092410),
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: Color(0xFF092410),
        foregroundColor: Color(0xFFD4AF37), // Gold icons/title
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
    );
  }

  // ---- Midnight Ocean ----
  //
  // Palette: deep navy / indigo surfaces, silver-blue primary, starlit highlights.

  static ThemeData _midnightOceanTheme() {
    const scheme = ColorScheme(
      brightness: Brightness.dark,
      primary:              Color(0xFF90CAF9), // Light sky blue
      onPrimary:            Color(0xFF00274D),
      primaryContainer:     Color(0xFF0D3966),
      onPrimaryContainer:   Color(0xFFBBDEFB),
      secondary:            Color(0xFF4FC3F7), // Cyan accent
      onSecondary:          Color(0xFF00274D),
      secondaryContainer:   Color(0xFF0B2942),
      onSecondaryContainer: Color(0xFFB3E5FC),
      tertiary:             Color(0xFF80DEEA), // Aqua
      onTertiary:           Color(0xFF002730),
      tertiaryContainer:    Color(0xFF003945),
      onTertiaryContainer:  Color(0xFFB2EBF2),
      error:                Color(0xFFEF9A9A),
      onError:              Color(0xFF3B0A0A),
      errorContainer:       Color(0xFF6B1A1A),
      onErrorContainer:     Color(0xFFFFCDD2),
      surface:              Color(0xFF050D1C), // Near-black navy
      onSurface:            Color(0xFFE3F2FD), // Very pale blue-white
      surfaceContainerHighest:       Color(0xFF0A1929),
      onSurfaceVariant:     Color(0xFF90A4B4),
      outline:              Color(0xFF2A4A6A),
      outlineVariant:       Color(0xFF102040),
      shadow:               Colors.black,
      scrim:                Colors.black,
      inverseSurface:       Color(0xFFD0E4F8),
      onInverseSurface:     Color(0xFF050D1C),
      inversePrimary:       Color(0xFF0D47A1),
    );

    return ThemeData(
      colorScheme: scheme,
      // Real deep navy — clearly blue rather than near-black, giving the
      // reading page a genuine open-ocean depth.
      scaffoldBackgroundColor: const Color(0xFF060E28),
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: Color(0xFF060E28),
        foregroundColor: Color(0xFF90CAF9),
        elevation: 0,
      ),
    );
  }

  // ---- Desert Sunrise ----
  //
  // Palette: warm spice / amber-brown surfaces, burnished gold-orange primary.

  static ThemeData _desertSunriseTheme() {
    const scheme = ColorScheme(
      brightness: Brightness.dark,
      primary:              Color(0xFFFFCC80), // Warm amber
      onPrimary:            Color(0xFF2E1000),
      primaryContainer:     Color(0xFF5D3010),
      onPrimaryContainer:   Color(0xFFFFE5B4),
      secondary:            Color(0xFFFFAB40), // Deep amber-orange
      onSecondary:          Color(0xFF2E1000),
      secondaryContainer:   Color(0xFF4A2008),
      onSecondaryContainer: Color(0xFFFFD9A8),
      tertiary:             Color(0xFFA5D6A7), // Oasis green
      onTertiary:           Color(0xFF0A2010),
      tertiaryContainer:    Color(0xFF1B3A20),
      onTertiaryContainer:  Color(0xFFC8E6C9),
      error:                Color(0xFFEF9A9A),
      onError:              Color(0xFF3B0A0A),
      errorContainer:       Color(0xFF6B1A1A),
      onErrorContainer:     Color(0xFFFFCDD2),
      surface:              Color(0xFF1A0C04), // Dark spiced brown
      onSurface:            Color(0xFFFFF8E1), // Warm ivory
      surfaceContainerHighest:       Color(0xFF2A180A),
      onSurfaceVariant:     Color(0xFFD7B48A),
      outline:              Color(0xFF7A4A20),
      outlineVariant:       Color(0xFF3A2010),
      shadow:               Colors.black,
      scrim:                Colors.black,
      inverseSurface:       Color(0xFFEFDCC8),
      onInverseSurface:     Color(0xFF1A0C04),
      inversePrimary:       Color(0xFF8B4513),
    );

    return ThemeData(
      colorScheme: scheme,
      // Warm amber-brown — noticeably warmer and more inviting than near-black,
      // evoking desert sandstone at dusk.
      scaffoldBackgroundColor: const Color(0xFF1C1004),
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: Color(0xFF1C1004),
        foregroundColor: Color(0xFFFFCC80),
        elevation: 0,
      ),
    );
  }

  // ---- Royal Amethyst ----
  //
  // Palette: deep jewel-purple surfaces, gleaming gold primary, regal indigo accents.

  static ThemeData _royalAmethystTheme() {
    const scheme = ColorScheme(
      brightness: Brightness.dark,
      primary:              Color(0xFFFFD54F), // Bright gold
      onPrimary:            Color(0xFF1A0050),
      primaryContainer:     Color(0xFF3D0080),
      onPrimaryContainer:   Color(0xFFEDE7F6),
      secondary:            Color(0xFFCE93D8), // Soft amethyst
      onSecondary:          Color(0xFF1A0040),
      secondaryContainer:   Color(0xFF2E0060),
      onSecondaryContainer: Color(0xFFE1BEE7),
      tertiary:             Color(0xFF80CBC4), // Teal-mint
      onTertiary:           Color(0xFF00302C),
      tertiaryContainer:    Color(0xFF004D45),
      onTertiaryContainer:  Color(0xFFB2DFDB),
      error:                Color(0xFFCF6679),
      onError:              Color(0xFF1A0308),
      errorContainer:       Color(0xFF4A1020),
      onErrorContainer:     Color(0xFFFFB3C1),
      surface:              Color(0xFF0D0220), // Deep velvet purple
      onSurface:            Color(0xFFF3E5F5), // Lavender-white
      surfaceContainerHighest:       Color(0xFF1A0840),
      onSurfaceVariant:     Color(0xFFCE93D8),
      outline:              Color(0xFF6A3FA0),
      outlineVariant:       Color(0xFF3A1060),
      shadow:               Colors.black,
      scrim:                Colors.black,
      inverseSurface:       Color(0xFFEDE7F6),
      onInverseSurface:     Color(0xFF0D0220),
      inversePrimary:       Color(0xFF7B1FA2),
    );

    return ThemeData(
      colorScheme: scheme,
      // Deep jewel purple — clearly violet rather than near-black, giving the
      // reading page a regal, velvet-draped feel.
      scaffoldBackgroundColor: const Color(0xFF120038),
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: Color(0xFF120038),
        foregroundColor: Color(0xFFFFD54F), // Gold
        elevation: 0,
      ),
    );
  }

  // ---- Crimson Covenant ----
  //
  // Palette: oxblood / deep burgundy surfaces, warm ivory primary, solemn crimson accents.

  static ThemeData _crimsonCovenantTheme() {
    const scheme = ColorScheme(
      brightness: Brightness.dark,
      primary:              Color(0xFFFFCCBC), // Warm ivory-pink
      onPrimary:            Color(0xFF300000),
      primaryContainer:     Color(0xFF6D0808),
      onPrimaryContainer:   Color(0xFFFFE0D8),
      secondary:            Color(0xFFEF9A9A), // Soft rose
      onSecondary:          Color(0xFF300000),
      secondaryContainer:   Color(0xFF5A0505),
      onSecondaryContainer: Color(0xFFFFCDD2),
      tertiary:             Color(0xFFFFD180), // Amber candlelight
      onTertiary:           Color(0xFF2E1000),
      tertiaryContainer:    Color(0xFF5D3010),
      onTertiaryContainer:  Color(0xFFFFE5B4),
      error:                Color(0xFFFF8A80),
      onError:              Color(0xFF300000),
      errorContainer:       Color(0xFF7F0000),
      onErrorContainer:     Color(0xFFFFCDD2),
      surface:              Color(0xFF1A0205), // Deep oxblood
      onSurface:            Color(0xFFFFF8F5), // Warm white
      surfaceContainerHighest:       Color(0xFF2D060C),
      onSurfaceVariant:     Color(0xFFD4A0A0),
      outline:              Color(0xFF8B2020),
      outlineVariant:       Color(0xFF4A0A0A),
      shadow:               Colors.black,
      scrim:                Colors.black,
      inverseSurface:       Color(0xFFF8ECE8),
      onInverseSurface:     Color(0xFF1A0205),
      inversePrimary:       Color(0xFF8B0000),
    );

    return ThemeData(
      colorScheme: scheme,
      // Deep wine-red — clearly burgundy rather than near-black, evoking aged
      // parchment and stained glass in candlelight.
      scaffoldBackgroundColor: const Color(0xFF1A0408),
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: Color(0xFF1A0408),
        foregroundColor: Color(0xFFFFCCBC),
        elevation: 0,
      ),
    );
  }

  // ---- Aurora ----
  //
  // Palette: near-black with ethereal teal-green highlights, electric aurora glow.

  static ThemeData _auroraTheme() {
    const scheme = ColorScheme(
      brightness: Brightness.dark,
      primary:              Color(0xFF64FFDA), // Electric aurora teal
      onPrimary:            Color(0xFF00251C),
      primaryContainer:     Color(0xFF004035),
      onPrimaryContainer:   Color(0xFFA7FFEB),
      secondary:            Color(0xFF69F0AE), // Lime-green
      onSecondary:          Color(0xFF00251C),
      secondaryContainer:   Color(0xFF003823),
      onSecondaryContainer: Color(0xFFB9F6CA),
      tertiary:             Color(0xFF82B1FF), // Aurora blue-violet
      onTertiary:           Color(0xFF001050),
      tertiaryContainer:    Color(0xFF002080),
      onTertiaryContainer:  Color(0xFFBBC8FF),
      error:                Color(0xFFFF6D6D),
      onError:              Color(0xFF280000),
      errorContainer:       Color(0xFF550000),
      onErrorContainer:     Color(0xFFFFCDD2),
      surface:              Color(0xFF05090F), // Near-black slate
      onSurface:            Color(0xFFE8F5E9), // Very soft white-green
      surfaceContainerHighest:       Color(0xFF0A1220),
      onSurfaceVariant:     Color(0xFF80CBC4),
      outline:              Color(0xFF20604A),
      outlineVariant:       Color(0xFF0A2820),
      shadow:               Colors.black,
      scrim:                Colors.black,
      inverseSurface:       Color(0xFFDFF7F2),
      onInverseSurface:     Color(0xFF05090F),
      inversePrimary:       Color(0xFF00796B),
    );

    return ThemeData(
      colorScheme: scheme,
      // Dark teal-blue — clearly cool and oceanic rather than near-black,
      // letting the electric aurora highlights pop against a real night sky.
      scaffoldBackgroundColor: const Color(0xFF050F22),
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: Color(0xFF050F22),
        foregroundColor: Color(0xFF64FFDA),
        elevation: 0,
      ),
    );
  }

  // =========================================================================
  // App-level resolver — called by CyberBibleApp.build()
  // =========================================================================

  /// Builds the resolved [ThemeData] pair and [ThemeMode] from current
  /// [SettingsService] state.
  ///
  /// Returns a record of (lightTheme, darkTheme?, resolvedThemeMode).
  static ({ThemeData light, ThemeData? dark, ThemeMode mode}) resolveFromSettings() {
    final settings = SettingsService.instance;
    final def = AppThemeCatalog.byId(settings.selectedThemeId);
    final accent = settings.accentColor(def.id);
    final light = buildLight(def, accent);
    final dark = buildDark(def, accent);
    final mode = resolvedThemeMode(def, settings.themeMode);
    return (light: light, dark: dark, mode: mode);
  }
}
