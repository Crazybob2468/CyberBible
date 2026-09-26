// Integration tests for the root app localization configuration.

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:cyber_bible_app/app.dart';
import 'package:cyber_bible_app/l10n/app_localizations.dart';
import 'package:cyber_bible_app/l10n/localization_helpers.dart';
import 'package:cyber_bible_app/services/settings_service.dart';

void main() {
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
      'tr',
      'uk',
      'vi',
      'pl',
      'nl',
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
  // must supply the English Material and Cupertino control labels.
  testWidgets('new locales use English Material and Cupertino controls', (
    tester,
  ) async {
    for (final code in <String>[
      'cy',
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
    ]) {
      await SettingsService.instance.setUseSystemLanguage(false);
      await SettingsService.instance.setSelectedLanguageCode(code);
      await tester.pumpWidget(const CyberBibleApp());

      final context = tester.element(find.byType(Scaffold).first);
      expect(MaterialLocalizations.of(context).okButtonLabel, 'OK');
      expect(CupertinoLocalizations.of(context).alertDialogLabel, 'Alert');
    }
  });

  testWidgets('unsupported isolated locale falls back to English', (
    tester,
  ) async {
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
