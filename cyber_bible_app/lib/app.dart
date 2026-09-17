// Root application widget for Cyber Bible.
//
// CyberBibleApp is a StatefulWidget so it can listen to SettingsService and
// rebuild MaterialApp whenever the user changes a theme-level setting (theme
// selection, accent color, or Light/Dark/System mode).
//
// The home screen's branded dark-green gradient is FIXED and unaffected by
// any theme setting.  Only inner screens (book selection, chapters, reading)
// respond to the chosen theme.

import 'package:flutter/material.dart';
import 'package:cyber_bible_app/l10n/app_localizations.dart';

import 'models/app_theme_definition.dart';
import 'routes.dart';
import 'services/settings_service.dart';

/// Root widget of the Cyber Bible app.
///
/// Holds the single [MaterialApp] instance.  When [SettingsService] notifies
/// a change (theme, accent, or themeMode), [setState] causes [MaterialApp] to
/// rebuild with the new resolved [ThemeData] pair — no hot-restart required.
class CyberBibleApp extends StatefulWidget {
  const CyberBibleApp({super.key});

  @override
  State<CyberBibleApp> createState() => _CyberBibleAppState();
}

class _CyberBibleAppState extends State<CyberBibleApp> {
  /// Locales compiled directly into this app build.
  ///
  /// Keep this list as the single source of truth for locale fallback logic.
  /// English is the base fallback, with Spanish added for the first translation-
  /// ready pass in Step 1.17.
  static const List<Locale> _compiledUiLocales = <Locale>[
    Locale('en'),
    Locale('es'),
  ];

  @override
  void initState() {
    super.initState();
    // Listen to SettingsService so this widget rebuilds when the user changes
    // a theme-level preference (theme ID, accent color, or theme mode).
    SettingsService.instance.addListener(_onSettingsChanged);
  }

  @override
  void dispose() {
    SettingsService.instance.removeListener(_onSettingsChanged);
    super.dispose();
  }

  /// Called whenever SettingsService notifies a change — triggers a rebuild
  /// so MaterialApp picks up the latest ThemeData/ThemeMode.
  void _onSettingsChanged() => setState(() {});

  /// Returns true when [candidate] is directly supported by this app build.
  bool _isCompiledLocale(Locale candidate) {
    return _compiledUiLocales
        .any((locale) => locale.languageCode == candidate.languageCode);
  }

  /// Resolves the active UI locale from the app's language settings.
  ///
  /// This follows the Phase 1.17 rule: by default, use the OS locale when the
  /// system-language toggle is enabled; otherwise use the stored manual override.
  /// English is the permanent fallback if no supported locale matches.
  Locale _resolveActiveLocale() {
    if (SettingsService.instance.useSystemLanguage) {
      final code = SettingsService.instance.effectiveLanguageCode;
      if (_isCompiledLocale(Locale(code))) {
        return Locale(code);
      }
      return const Locale('en');
    }

    final code = SettingsService.instance.selectedLanguageCode;
    if (_isCompiledLocale(Locale(code))) {
      return Locale(code);
    }
    return const Locale('en');
  }

  @override
  Widget build(BuildContext context) {
    // Resolve the current theme pair from the user's active settings.
    // This is a cheap synchronous call — no disk I/O.
    final resolved = AppThemeBuilder.resolveFromSettings();

    return MaterialApp(
      title: 'Cyber Bible',
      debugShowCheckedModeBanner: false,

      // Light theme — generated from the user's selected theme + accent color.
      //
      // For customisable themes, ColorScheme.fromSeed is called with the
      // user's accent.  For set themes, a hand-crafted ColorScheme is used.
      // The home screen's fixed dark-green gradient is unaffected by this.
      theme: resolved.light,

      // Dark theme — only non-null for 'classic_white', which supports all
      // three ThemeMode settings.  All other themes are either always-light
      // (customisable non-white) or already dark (set themes).
      darkTheme: resolved.dark,

      // ThemeMode — 'classic_white' honours the user's System/Light/Dark
      // choice; all other themes force ThemeMode.light so the single
      // ThemeData is always used.
      themeMode: resolved.mode,

      // Named route configuration — all routes defined in routes.dart.
      // onGenerateRoute lets screens receive typed argument objects.
      locale: _resolveActiveLocale(),
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      initialRoute: AppRoutes.home,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
