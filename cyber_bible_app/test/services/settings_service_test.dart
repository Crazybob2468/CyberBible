// Unit tests for SettingsService.
//
// These tests mock out SharedPreferences using the
// SharedPreferences.setMockInitialValues API so no real platform channel
// calls are made.  Each test group:
//
//   1. Clears all stored prefs and resets the singleton's internal state
//      using the package-private _resetForTesting() helper exposed only in
//      the test target.
//   2. Calls ensureLoaded() to initialise the singleton.
//   3. Exercises getters, setters, and ChangeNotifier notifications.
//
// Tests are deliberately isolated from real platform storage, making them
// safe to run on any host OS without a device or emulator attached.

// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:cyber_bible_app/services/settings_service.dart';

void main() {
  // ---- Setup / teardown ----

  setUp(() async {
    // Start each test with a completely empty preferences store.
    SharedPreferences.setMockInitialValues({});
    // Reset the singleton so each test begins from a clean slate.
    SettingsService.instance.resetForTesting();
    await SettingsService.ensureLoaded();
  });

  // =========================================================================
  // Default values
  // =========================================================================

  group('Default values', () {
    test('selectedThemeId defaults to classic_white', () {
      expect(SettingsService.instance.selectedThemeId, 'classic_white');
    });

    test('fontSizePx defaults to 17.0', () {
      expect(SettingsService.instance.fontSizePx, 17.0);
    });

    test('showVerseNumbers defaults to true', () {
      expect(SettingsService.instance.showVerseNumbers, true);
    });

    test('showSectionHeadings defaults to true', () {
      expect(SettingsService.instance.showSectionHeadings, true);
    });

    test('wordsOfChristRed defaults to true', () {
      expect(SettingsService.instance.wordsOfChristRed, true);
    });

    test('paragraphMode defaults to true', () {
      expect(SettingsService.instance.paragraphMode, true);
    });

    test('themeMode defaults to ThemeMode.system', () {
      expect(SettingsService.instance.themeMode, ThemeMode.system);
    });

    test('accentColor returns correct default for classic_white', () {
      expect(
        SettingsService.instance.accentColor('classic_white'),
        const Color(0xFF2D6A4F),
      );
    });

    test('accentColor returns correct default for warm_cream', () {
      expect(
        SettingsService.instance.accentColor('warm_cream'),
        const Color(0xFFFF8F00),
      );
    });

    test('accentColor returns correct default for aged_parchment', () {
      expect(
        SettingsService.instance.accentColor('aged_parchment'),
        const Color(0xFF8D6E63),
      );
    });

    test('accentColor returns correct default for cool_slate', () {
      expect(
        SettingsService.instance.accentColor('cool_slate'),
        const Color(0xFF1565C0),
      );
    });

    test('accentColor returns correct default for warm_sand', () {
      expect(
        SettingsService.instance.accentColor('warm_sand'),
        const Color(0xFFBF360C),
      );
    });

    test('accentColor falls back to forest-green for unknown theme IDs', () {
      // Set themes (e.g. 'forest_cathedral') have no stored accent; the
      // fallback default accent should be returned instead.
      expect(
        SettingsService.instance.accentColor('forest_cathedral'),
        const Color(0xFF2D6A4F),
      );
    });
  });

  // =========================================================================
  // Setters persist values and fire notifyListeners
  // =========================================================================

  group('setSelectedThemeId', () {
    test('stores value and notifies listeners', () async {
      var notified = false;
      SettingsService.instance.addListener(() => notified = true);

      await SettingsService.instance.setSelectedThemeId('forest_cathedral');

      expect(SettingsService.instance.selectedThemeId, 'forest_cathedral');
      expect(notified, true);
    });
  });

  group('setFontSizePx', () {
    test('stores value and notifies listeners', () async {
      var notified = false;
      SettingsService.instance.addListener(() => notified = true);

      await SettingsService.instance.setFontSizePx(20.0);

      expect(SettingsService.instance.fontSizePx, 20.0);
      expect(notified, true);
    });

    test('clamps values below 12 to 12', () async {
      await SettingsService.instance.setFontSizePx(5.0);
      expect(SettingsService.instance.fontSizePx, 12.0);
    });

    test('clamps values above 28 to 28', () async {
      await SettingsService.instance.setFontSizePx(99.0);
      expect(SettingsService.instance.fontSizePx, 28.0);
    });

    test('accepts boundary value 12', () async {
      await SettingsService.instance.setFontSizePx(12.0);
      expect(SettingsService.instance.fontSizePx, 12.0);
    });

    test('accepts boundary value 28', () async {
      await SettingsService.instance.setFontSizePx(28.0);
      expect(SettingsService.instance.fontSizePx, 28.0);
    });
  });

  group('setShowVerseNumbers', () {
    test('stores false and notifies listeners', () async {
      var notified = false;
      SettingsService.instance.addListener(() => notified = true);

      await SettingsService.instance.setShowVerseNumbers(false);

      expect(SettingsService.instance.showVerseNumbers, false);
      expect(notified, true);
    });

    test('can be toggled back to true', () async {
      await SettingsService.instance.setShowVerseNumbers(false);
      await SettingsService.instance.setShowVerseNumbers(true);
      expect(SettingsService.instance.showVerseNumbers, true);
    });
  });

  group('setShowSectionHeadings', () {
    test('stores false and notifies listeners', () async {
      var notified = false;
      SettingsService.instance.addListener(() => notified = true);

      await SettingsService.instance.setShowSectionHeadings(false);

      expect(SettingsService.instance.showSectionHeadings, false);
      expect(notified, true);
    });
  });

  group('setWordsOfChristRed', () {
    test('stores false and notifies listeners', () async {
      var notified = false;
      SettingsService.instance.addListener(() => notified = true);

      await SettingsService.instance.setWordsOfChristRed(false);

      expect(SettingsService.instance.wordsOfChristRed, false);
      expect(notified, true);
    });
  });

  group('setParagraphMode', () {
    test('stores false (verse-list mode) and notifies listeners', () async {
      var notified = false;
      SettingsService.instance.addListener(() => notified = true);

      await SettingsService.instance.setParagraphMode(false);

      expect(SettingsService.instance.paragraphMode, false);
      expect(notified, true);
    });
  });

  group('setThemeMode', () {
    test('stores ThemeMode.light and notifies listeners', () async {
      var notified = false;
      SettingsService.instance.addListener(() => notified = true);

      await SettingsService.instance.setThemeMode(ThemeMode.light);

      expect(SettingsService.instance.themeMode, ThemeMode.light);
      expect(notified, true);
    });

    test('stores ThemeMode.dark', () async {
      await SettingsService.instance.setThemeMode(ThemeMode.dark);
      expect(SettingsService.instance.themeMode, ThemeMode.dark);
    });

    test('stores ThemeMode.system', () async {
      await SettingsService.instance.setThemeMode(ThemeMode.system);
      expect(SettingsService.instance.themeMode, ThemeMode.system);
    });
  });

  group('setAccentColor', () {
    test('stores a custom accent and notifies listeners', () async {
      var notified = false;
      SettingsService.instance.addListener(() => notified = true);

      const customColor = Color(0xFFAD1457); // Rose
      await SettingsService.instance.setAccentColor('classic_white', customColor);

      expect(SettingsService.instance.accentColor('classic_white'), customColor);
      expect(notified, true);
    });

    test('different theme IDs store independently', () async {
      const rose   = Color(0xFFAD1457);
      const teal   = Color(0xFF00695C);
      await SettingsService.instance.setAccentColor('classic_white', rose);
      await SettingsService.instance.setAccentColor('warm_cream', teal);

      expect(SettingsService.instance.accentColor('classic_white'), rose);
      expect(SettingsService.instance.accentColor('warm_cream'), teal);
    });
  });

  // =========================================================================
  // ensureLoaded idempotency
  // =========================================================================

  group('ensureLoaded', () {
    test('calling ensureLoaded a second time does not reset stored values', () async {
      await SettingsService.instance.setFontSizePx(22.0);

      // Call again — should NOT clear the in-memory value.
      await SettingsService.ensureLoaded();

      expect(SettingsService.instance.fontSizePx, 22.0);
    });
  });

  // =========================================================================
  // Persistence across a simulated reload
  // =========================================================================

  group('Persistence round-trip', () {
    test('values survive a resetForTesting + ensureLoaded cycle', () async {
      // Write values.
      await SettingsService.instance.setSelectedThemeId('aurora');
      await SettingsService.instance.setFontSizePx(24.0);
      await SettingsService.instance.setParagraphMode(false);

      // Simulate restarting the service (new process).
      // The mock keeps its in-memory store, so SharedPreferences still has the
      // values — only the Dart-side instance state is reset.
      SettingsService.instance.resetForTesting();
      await SettingsService.ensureLoaded();

      expect(SettingsService.instance.selectedThemeId, 'aurora');
      expect(SettingsService.instance.fontSizePx, 24.0);
      expect(SettingsService.instance.paragraphMode, false);
    });
  });
}
