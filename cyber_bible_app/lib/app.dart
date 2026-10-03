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

import 'l10n/global_localizations_fallback.dart';
import 'models/app_theme_definition.dart';
import 'routes.dart';
import 'services/language_module_service.dart';
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
  /// English is the permanent fallback; the remaining entries are the
  /// compiled UI-language modules available in this build.
  static const List<Locale> _compiledUiLocales = <Locale>[
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('de'),
    Locale('it'),
    Locale('pt'),
    Locale('ps'),
    Locale('hi'),
    Locale('zh'),
    Locale('ar'),
    Locale('bn'),
    Locale('ja'),
    Locale('ko'),
    Locale('ru'),
    Locale('tr'),
    Locale('uk'),
    Locale('vi'),
    Locale('pl'),
    Locale('nl'),
    Locale('af'),
    Locale('bas'),
    Locale('ak'),
    Locale('am'),
    Locale('ca'),
    Locale('cs'),
    Locale('cv'),
    Locale('cy'),
    Locale('da'),
    Locale('doi'),
    Locale('az'),
    Locale('be'),
    Locale('bem'),
    Locale('bez'),
    Locale('bg'),
    Locale('bho'),
    Locale('bm'),
    Locale('bo'),
    Locale('br'),
    Locale('bs'),
    Locale('et'),
    Locale('eu'),
    Locale('fa'),
    Locale('fi'),
    Locale('fil'),
    Locale('gl'),
    Locale('gsw'),
    Locale('gu'),
    Locale('he'),
    Locale('hr'),
    Locale('hu'),
    Locale('hy'),
    Locale('ia'),
    Locale('id'),
    Locale('ie'),
    Locale('is'),
    Locale('ka'),
    Locale('kab'),
    Locale('lb'),
    Locale('kk'),
    Locale('kln'),
    Locale('lg'),
    Locale('lo'),
    Locale('lt'),
    Locale('lv'),
    Locale('mk'),
    Locale('ml'),
    Locale('as'),
    Locale('ast'),
    Locale('el'),
    Locale('km'),
    Locale('kn'),
    Locale('ku'),
    Locale('ky'),
    Locale('mn'),
    Locale('mr'),
    Locale('ms'),
    Locale('mt'),
    Locale('my'),
    Locale('nb'),
    Locale('nn'),
    Locale('ne'),
    Locale('om'),
    Locale('or'),
    Locale('os'),
    Locale('pa'),
    Locale('ro'),
    Locale('rn'),
    Locale('rw'),
    Locale('sah'),
    Locale('si'),
    Locale('sn'),
    Locale('sk'),
    Locale('smn'),
    Locale('szl'),
    Locale('sl'),
    Locale('sq'),
    Locale('sr'),
    Locale('sv'),
    Locale('se'),
    Locale('seh'),
    Locale('sg'),
    Locale('sw'),
    Locale('ta'),
    Locale('te'),
    Locale('tg'),
    Locale('th'),
    Locale('ti'),
    Locale('tk'),
    Locale('to'),
    Locale('tt'),
    Locale('tzm'),
    Locale('ug'),
    Locale('ur'),
    Locale('uz'),
    Locale('zu'),
    Locale('dz'),
    Locale('ee'),
    Locale('eo'),
    Locale('ewo'),
    Locale('ff'),
    Locale('fo'),
    Locale('fur'),
    Locale('fy'),
    Locale('ga'),
    Locale('gd'),
    Locale('gv'),
    Locale('ha'),
    Locale('haw'),
    Locale('ig'),
    Locale('jv'),
    Locale('ny'),
    Locale('nyn'),
    Locale('nus'),
    Locale('oc'),
    Locale('so'),
    Locale('yo'),
    Locale('lu'),
    Locale('luo'),
    Locale('luy'),
    Locale('ln'),
    Locale('kea'),
    Locale('ceb'),
    Locale('su'),
    Locale('xh'),
    Locale('mai'),
    Locale('mg'),
    Locale('mi'),
    Locale('qu'),
    Locale('rm'),
    Locale('mfe'),
    Locale('nds'),
    Locale('vec'),
    Locale('yue'),
    Locale('sa'),
    Locale('sat'),
    Locale('sc'),
    Locale('sd'),
    Locale('wo'),
    Locale('yrl'),
    Locale('za'),
    Locale('kam'),
    Locale('ki'),
    Locale('kw'),
    Locale('ksh'),
    Locale('brx'),
    Locale('saq'),
    Locale('sbp'),
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
    return _compiledUiLocales.any(
      (locale) => locale.languageCode == candidate.languageCode,
    );
  }

  /// Resolves the manually selected UI locale from the app's language settings.
  ///
  /// Returns null when system language is enabled so Flutter can observe and
  /// resolve platform locale changes against [supportedLocales] at runtime.
  Locale? _resolveActiveLocale() {
    if (SettingsService.instance.useSystemLanguage) return null;

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
      // Resolve all device preferences, including legacy language-code aliases.
      localeListResolutionCallback: (locales, _) {
        return LanguageModuleService.resolvePlatformLocale(
          locales ?? const <Locale>[],
        );
      },
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: <LocalizationsDelegate<dynamic>>[
        AppLocalizations.delegate,
        const MaterialLocalizationsFallbackDelegate(),
        const CupertinoLocalizationsFallbackDelegate(),
        ...AppLocalizations.localizationsDelegates.skip(1),
      ],
      initialRoute: AppRoutes.home,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
