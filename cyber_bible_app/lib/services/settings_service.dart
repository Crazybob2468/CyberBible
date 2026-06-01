// User preferences service for Cyber Bible.
//
// Persists all reading and display settings using shared_preferences and
// exposes them through a ChangeNotifier so any listener (especially
// CyberBibleApp) can rebuild when settings change.
//
// Usage pattern (load at startup, then read anywhere):
//
//   await SettingsService.ensureLoaded();
//   final size = SettingsService.instance.fontSizePx;
//   SettingsService.instance.setFontSizePx(20.0);
//
// CyberBibleApp holds a listener:
//   SettingsService.instance.addListener(_onSettingsChanged);
//
// Settings covered:
//   - selectedThemeId      : which theme is active
//   - accentColor(themeId) : per-theme accent seed color
//   - themeMode            : Light / Dark / System (only for classic_white)
//   - fontSizePx           : verse body text size (12–28)
//   - showVerseNumbers     : show/hide inline verse superscripts
//   - showSectionHeadings  : show/hide <s> and <d> USFX elements
//   - wordsOfChristRed     : render <wj> in red vs body color
//   - paragraphMode        : true=paragraph flow, false=verse-list

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ---------------------------------------------------------------------------
// Shared-preferences key constants
// ---------------------------------------------------------------------------

/// Key for the currently selected theme ID string (e.g. 'classic_white').
const _kThemeId = 'theme_id';

/// Prefix for per-theme accent color keys (Int — ARGB color value).
/// Full key: '_kAccentPrefix + themeId' (e.g. 'accent_classic_white').
const _kAccentPrefix = 'accent_';

/// Key for ThemeMode: 0 = system, 1 = light, 2 = dark.
const _kThemeMode = 'theme_mode';

/// Key for verse body font size (double).
const _kFontSizePx = 'font_size_px';

/// Key for show-verse-numbers toggle (bool).
const _kShowVerseNumbers = 'show_verse_numbers';

/// Key for show-section-headings toggle (bool).
const _kShowSectionHeadings = 'show_section_headings';

/// Key for words-of-Christ red toggle (bool).
const _kWordsOfChristRed = 'words_of_christ_red';

/// Key for paragraph-mode toggle (bool).
const _kParagraphMode = 'paragraph_mode';

// ---------------------------------------------------------------------------
// Default values
// ---------------------------------------------------------------------------

/// Default theme shown on a fresh install.
const _defaultThemeId = 'classic_white';

/// Default per-theme accent colors (ARGB int) keyed by theme ID.
///
/// These represent the initial accent when the user has never customised a
/// theme.  Themes not listed here use [_defaultAccentColor].
const Map<String, int> _defaultAccentColors = {
  'classic_white': 0xFF2D6A4F,  // Forest green — same as the home brand color
  'warm_cream':    0xFFFF8F00,  // Amber gold
  'aged_parchment': 0xFF8D6E63, // Warm brown / sepia
  'cool_slate':    0xFF1565C0,  // Ocean blue
  'warm_sand':     0xFFBF360C,  // Terracotta
  // Dark customisable themes
  'night_sky':     0xFF7EB2E8,  // Soft sky blue
  'dark_forest':   0xFFD4AF37,  // Antique gold
  'charcoal':      0xFFE8C97A,  // Warm gold
};

/// Fallback accent used when a theme ID has no entry in [_defaultAccentColors].
const int _defaultAccentColor = 0xFF2D6A4F;

/// Default font size in logical pixels.
const double _defaultFontSizePx = 17.0;

// ---------------------------------------------------------------------------
// SettingsService
// ---------------------------------------------------------------------------

/// Singleton ChangeNotifier that owns all user preferences.
///
/// Must be initialised once at app startup before [runApp]:
///
///   await SettingsService.ensureLoaded();
///
/// Afterwards, read values through [SettingsService.instance] and listen for
/// changes with [SettingsService.instance.addListener(...)].
class SettingsService extends ChangeNotifier {
  // ---- Singleton ----

  /// The single shared instance.  Available after [ensureLoaded] completes.
  static final SettingsService instance = SettingsService._();

  SettingsService._();

  // ---- Internal state ----

  /// Underlying shared-preferences handle.  Non-null after [ensureLoaded].
  SharedPreferences? _prefs;

  /// Whether [ensureLoaded] has been awaited at least once.
  bool _loaded = false;

  // ---- Initialisation ----

  /// Loads all preferences from disk.
  ///
  /// Call this once in [main] before [runApp].  Subsequent calls are no-ops.
  static Future<void> ensureLoaded() async {
    if (instance._loaded) return;
    instance._prefs = await SharedPreferences.getInstance();
    instance._loaded = true;
    // No notifyListeners() here — listeners aren't attached yet at startup.
  }

  /// Resets the singleton's loaded state so [ensureLoaded] will reinitialise.
  ///
  /// **For use in unit tests only.**  Production code must never call this.
  /// Annotated [@visibleForTesting] to make lint aware of the intended scope.
  @visibleForTesting
  void resetForTesting() {
    _loaded = false;
    _prefs = null;
  }

  // ---- Convenience accessor ----

  /// Returns the prefs handle, asserting it is loaded.
  SharedPreferences get _p {
    assert(_loaded, 'SettingsService.ensureLoaded() must be awaited in main().');
    return _prefs!;
  }

  // =========================================================================
  // Settings getters & setters
  // =========================================================================

  // ---- Theme selection ----

  /// ID of the currently active theme (e.g. 'classic_white', 'forest_cathedral').
  String get selectedThemeId =>
      _p.getString(_kThemeId) ?? _defaultThemeId;

  /// Updates the active theme and notifies listeners.
  Future<void> setSelectedThemeId(String id) async {
    await _p.setString(_kThemeId, id);
    notifyListeners();
  }

  // ---- Accent colors (per-theme) ----

  /// Returns the stored accent color for [themeId], or the default for that
  /// theme if the user has never customised it.
  Color accentColor(String themeId) {
    final stored = _p.getInt('$_kAccentPrefix$themeId');
    if (stored != null) return Color(stored);
    return Color(_defaultAccentColors[themeId] ?? _defaultAccentColor);
  }

  /// Stores a custom accent color for [themeId] and notifies listeners.
  Future<void> setAccentColor(String themeId, Color color) async {
    await _p.setInt('$_kAccentPrefix$themeId', color.toARGB32());
    notifyListeners();
  }

  // ---- Theme mode (Light / Dark / System) ----

  /// The theme brightness mode.
  ///
  /// Only meaningful for the 'classic_white' customisable theme, which
  /// supports all three modes.  All other themes have a fixed appearance.
  ThemeMode get themeMode {
    final index = _p.getInt(_kThemeMode) ?? 0; // default: system
    if (index == 1) return ThemeMode.light;
    if (index == 2) return ThemeMode.dark;
    return ThemeMode.system;
  }

  /// Updates the theme mode and notifies listeners.
  Future<void> setThemeMode(ThemeMode mode) async {
    final index = mode == ThemeMode.light
        ? 1
        : mode == ThemeMode.dark
            ? 2
            : 0;
    await _p.setInt(_kThemeMode, index);
    notifyListeners();
  }

  // ---- Font size ----

  /// Verse body text size in logical pixels.  Range: 12–28.
  double get fontSizePx =>
      (_p.getDouble(_kFontSizePx) ?? _defaultFontSizePx).clamp(12.0, 28.0);

  /// Updates the font size and notifies listeners.
  Future<void> setFontSizePx(double px) async {
    await _p.setDouble(_kFontSizePx, px.clamp(12.0, 28.0));
    notifyListeners();
  }

  // ---- Verse numbers ----

  /// Whether inline verse-number superscripts are shown in the reading screen.
  bool get showVerseNumbers => _p.getBool(_kShowVerseNumbers) ?? true;

  /// Updates the verse-numbers toggle and notifies listeners.
  Future<void> setShowVerseNumbers(bool value) async {
    await _p.setBool(_kShowVerseNumbers, value);
    notifyListeners();
  }

  // ---- Section headings ----

  /// Whether USFX section headings (`<s>`, `<d>`) are shown.
  bool get showSectionHeadings => _p.getBool(_kShowSectionHeadings) ?? true;

  /// Updates the section-headings toggle and notifies listeners.
  Future<void> setShowSectionHeadings(bool value) async {
    await _p.setBool(_kShowSectionHeadings, value);
    notifyListeners();
  }

  // ---- Words of Christ ----

  /// When true, `<wj>` text is rendered red; when false, it uses body color.
  bool get wordsOfChristRed => _p.getBool(_kWordsOfChristRed) ?? true;

  /// Updates the words-of-Christ color preference and notifies listeners.
  Future<void> setWordsOfChristRed(bool value) async {
    await _p.setBool(_kWordsOfChristRed, value);
    notifyListeners();
  }

  // ---- Verse format (paragraph vs verse-list) ----

  /// When true (default), the reading screen renders text in paragraph mode:
  /// consecutive prose paragraphs flow as continuous text, matching how a
  /// printed Bible looks.  When false, each USFX paragraph becomes its own
  /// HTML block (verse-list mode — every paragraph starts on a new line).
  bool get paragraphMode => _p.getBool(_kParagraphMode) ?? true;

  /// Updates the verse-format preference and notifies listeners.
  Future<void> setParagraphMode(bool value) async {
    await _p.setBool(_kParagraphMode, value);
    notifyListeners();
  }

  // =========================================================================
  // Convenience helpers for the theme system
  // =========================================================================

  /// True if the currently active theme is a customisable theme (not a set
  /// theme with a fixed palette).
  bool get isCustomizableTheme => _customizableThemeIds.contains(selectedThemeId);

  /// True if the currently active theme supports the Light/Dark/System toggle.
  /// Only 'classic_white' has this ability.
  bool get themeSupportsDarkMode => selectedThemeId == 'classic_white';
}

// ---------------------------------------------------------------------------
// Exported constant — the list of customisable theme IDs.
// ---------------------------------------------------------------------------

/// IDs of themes whose accent color can be changed by the user.
///
/// All other IDs are "set themes" with a fixed, hand-crafted colour palette.
const Set<String> _customizableThemeIds = {
  'classic_white',
  'warm_cream',
  'aged_parchment',
  'cool_slate',
  'warm_sand',
  // Dark customisable themes
  'night_sky',
  'dark_forest',
  'charcoal',
};

/// Public read-only view of the customisable-theme ID set.
///
/// Used by [SettingsService.isCustomizableTheme] and the theme-selection
/// screen to decide whether to show the accent-color popup.
const Set<String> customizableThemeIds = _customizableThemeIds;
