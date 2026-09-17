// Integration tests for the root app localization configuration.

import 'package:flutter/material.dart';
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

  testWidgets('unsupported isolated locale falls back to English',
      (tester) async {
    AppLocalizations? resolved;

    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (context) => Localizations.override(
            context: context,
            locale: const Locale('fr'),
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
