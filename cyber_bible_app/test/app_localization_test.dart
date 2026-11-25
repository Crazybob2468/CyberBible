// Integration tests for the root app localization configuration.

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:cyber_bible_app/app.dart';
import 'package:cyber_bible_app/l10n/app_localizations.dart';
import 'package:cyber_bible_app/l10n/app_localizations_os.dart';
import 'package:cyber_bible_app/l10n/localization_helpers.dart';
import 'package:cyber_bible_app/services/settings_service.dart';

void main() {
  // Pending draft ARBs remain discoverable for review but are not generated
  // into runtime localization classes until their content is ready.
  test('pending locales are not included in generated runtime localizations', () {
    const pendingCodes = <String>[
      'agq',
      'blo',
      'mas',
      'mer',
      'mgh',
      'nd',
      'nnh',
      'nqo',
      'chr',
      'csw',
      'lkt',
      'ii',
      'yav',
      'kkj',
      'khq',
      'ses',
      'twq',
      'jgo',
      'ksf',
      'kde',
      'mgo',
      'vun',
      'guz',
      'vmw',
      'xog',
      'ebu',
      'ksb',
      'lag',
      'jmc',
      'naq',
      'teo',
      'dua',
      'dyo',
      'rof',
      'rwk',
      'raj',
      'kxv',
      'xnr',
      'prg',
      'wae',
      'zgh',
    ];
    final supportedCodes = AppLocalizations.supportedLocales
        .map((locale) => locale.languageCode)
        .toSet();

    for (final code in pendingCodes) {
      expect(supportedCodes, isNot(contains(code)), reason: code);
    }
  });

  // Ossetian uses Cyrillic ӕ; the Latin æ in this label was accidental.
  test('Ossetian pending status uses the Ossetian Cyrillic character', () {
    expect(
      AppLocalizationsOs().languageModulePending,
      'Машины перевод кӕсын',
    );
  });

  setUp(() async {
    // Use an isolated preferences store so each test starts with the default
    // system-language setting and no persisted manual override.
    SharedPreferences.setMockInitialValues({});
    SettingsService.instance.resetForTesting();
    await SettingsService.ensureLoaded();
  });

  testWidgets('manual Spanish override reaches MaterialApp', (tester) async {
    await SettingsService.instance.setUseSystemLanguage(false);
    await SettingsService.instance.setSelectedLanguageCode('es');

    await tester.pumpWidget(const CyberBibleApp());

    final app = tester.widget<MaterialApp>(find.byType(MaterialApp));
    expect(app.locale, const Locale('es'));
    expect(app.supportedLocales, contains(const Locale('es')));
    expect(app.localizationsDelegates, isNotEmpty);
  });

  testWidgets('manual French override reaches MaterialApp', (tester) async {
    await SettingsService.instance.setUseSystemLanguage(false);
    await SettingsService.instance.setSelectedLanguageCode('fr');

    await tester.pumpWidget(const CyberBibleApp());

    final app = tester.widget<MaterialApp>(find.byType(MaterialApp));
    expect(app.locale, const Locale('fr'));
  });

  testWidgets('manual German override reaches MaterialApp', (tester) async {
    await SettingsService.instance.setUseSystemLanguage(false);
    await SettingsService.instance.setSelectedLanguageCode('de');

    await tester.pumpWidget(const CyberBibleApp());

    final app = tester.widget<MaterialApp>(find.byType(MaterialApp));
    expect(app.locale, const Locale('de'));
    expect(app.supportedLocales, contains(const Locale('de')));
  });

  testWidgets('manual Japanese override reaches MaterialApp', (tester) async {
    await SettingsService.instance.setUseSystemLanguage(false);
    await SettingsService.instance.setSelectedLanguageCode('ja');

    await tester.pumpWidget(const CyberBibleApp());

    final app = tester.widget<MaterialApp>(find.byType(MaterialApp));
    expect(app.locale, const Locale('ja'));
    expect(app.supportedLocales, contains(const Locale('ja')));
  });

  testWidgets('AI-generated locales reach MaterialApp', (tester) async {
    for (final code in <String>[
      'af',
      'am',
      'ca',
      'cs',
      'da',
      'az',
      'be',
      'bem',
      'bg',
      'bho',
      'bm',
      'bo',
      'br',
      'bs',
      'et',
      'eu',
      'fa',
      'fi',
      'fil',
      'gl',
      'gu',
      'he',
      'hr',
      'hu',
      'hy',
      'as',
      'el',
      'km',
      'kn',
      'ku',
      'ky',
      'mn',
      'mr',
      'ms',
      'my',
      'nb',
      'ne',
      'or',
      'pa',
      'ro',
      'si',
      'sk',
      'sl',
      'sq',
      'sr',
      'sv',
      'sw',
      'ta',
      'te',
      'th',
      'ur',
      'uz',
      'zu',
      'dz',
      'ee',
      'eo',
      'ff',
      'fo',
      'fur',
      'fy',
      'ga',
      'gd',
      'gv',
      'ha',
      'haw',
      'ig',
      'jv',
      'kab',
      'kln',
      'lg',
      'ny',
      'om',
      'rw',
      'cy',
      'so',
      'yo',
      'nn',
      'se',
      'lu',
      'luo',
      'luy',
      'ln',
      'kea',
      'ceb',
      'cgg',
      'ce',
      'su',
      'xh',
      'mai',
      'qu',
      'lij',
      'lmo',
      'bgc',
      'asa',
      'ak',
      'ast',
      'dav',
      'dje',
      'dsb',
      'hsb',
      'kgp',
      'kl',
      'kok',
      'ks',
      'mni',
      'mzn',
      'syr',
      'nl',
      'pl',
      'pcm',
      'tr',
      'uk',
      'vi',
    ]) {
      await SettingsService.instance.setUseSystemLanguage(false);
      await SettingsService.instance.setSelectedLanguageCode(code);
      await tester.pumpWidget(const CyberBibleApp());

      final app = tester.widget<MaterialApp>(find.byType(MaterialApp));
      expect(app.locale, Locale(code));
      expect(app.supportedLocales, contains(Locale(code)));
    }
  });

  // Flutter has no framework strings for these locales, so the app delegates
  // must supply the English Widgets, Material, and Cupertino localizations.
  testWidgets('new locales use English framework localizations', (tester) async {
    for (final code in <String>[
      'so',
      'yo',
      'nn',
      'se',
      'kab',
      'kln',
      'lg',
      'rw',
      'om',
      'lu',
      'luo',
      'luy',
      'ln',
      'kea',
      'ceb',
      'cgg',
      'ce',
      'su',
      'xh',
      'mai',
      'qu',
      'lij',
      'lmo',
      'bgc',
      'asa',
      'dav',
      'dje',
    ]) {
      await SettingsService.instance.setUseSystemLanguage(false);
      await SettingsService.instance.setSelectedLanguageCode(code);
      await tester.pumpWidget(const CyberBibleApp());

      final context = tester.element(find.byType(Scaffold).first);
      expect(MaterialLocalizations.of(context).okButtonLabel, 'OK');
      expect(CupertinoLocalizations.of(context).alertDialogLabel, 'Alert');
      expect(
        WidgetsLocalizations.of(context).textDirection,
        TextDirection.ltr,
      );
    }
  });

  testWidgets('Welsh uses Flutter framework localizations', (tester) async {
    await SettingsService.instance.setUseSystemLanguage(false);
    await SettingsService.instance.setSelectedLanguageCode('cy');
    await tester.pumpWidget(const CyberBibleApp());

    final context = tester.element(find.byType(Scaffold).first);
    expect(MaterialLocalizations.of(context).okButtonLabel, 'Iawn');
  });

  testWidgets('unsupported isolated locale falls back to English', (tester) async {
    AppLocalizations? resolved;

    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (context) => Localizations.override(
            context: context,
            locale: const Locale('xx'),
            child: Builder(
              builder: (context) {
                resolved = appLocalizations(context);
                return const SizedBox.shrink();
              },
            ),
          ),
        ),
      ),
    );

    expect(resolved?.localeName, 'en');
  });
}
