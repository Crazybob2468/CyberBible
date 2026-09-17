// Unit tests for local UI-language module discovery and fallback.

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/widgets.dart';

import 'package:cyber_bible_app/services/language_module_service.dart';

void main() {
  test('installed modules expose provenance and schema metadata', () {
    expect(LanguageModuleService.isInstalled('en'), isTrue);
    expect(LanguageModuleService.isInstalled('es'), isTrue);
    expect(LanguageModuleService.isInstalled('fr'), isTrue);
    expect(
      LanguageModuleService.installedModules.map(
        (module) => module.languageCode,
      ),
      containsAll(<String>[
        'de',
        'it',
        'pt',
        'hi',
        'zh',
        'ar',
        'bn',
        'ja',
        'ko',
        'ru',
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
        'bg',
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
      ]),
    );
    expect(
      LanguageModuleService.installedModules
          .where((module) => module.languageCode != 'en')
          .every(
            (module) => module.sourceLabel == 'AI-generated initial translation',
          ),
      isTrue,
    );
    expect(LanguageModuleService.installedModules.first.schemaVersion, 1);
  });

  test('platform locale resolution selects the first installed language', () {
    expect(
      LanguageModuleService.resolvePlatformLocale(const [
        Locale('xx'),
        Locale('es'),
      ]),
      const Locale('es'),
    );
  });

  test('platform locale resolution selects a newly installed language', () {
    expect(
      LanguageModuleService.resolvePlatformLocale(const [Locale('zh')]),
      const Locale('zh'),
    );
  });

  test('platform locale resolution selects each new installed language', () {
    for (final code in <String>[
      'ar',
      'bn',
      'ja',
      'ko',
      'ru',
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
      'bg',
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
    ]) {
      expect(
        LanguageModuleService.resolvePlatformLocale([Locale(code)]),
        Locale(code),
      );
    }
  });

  test('platform locale resolution falls back to English', () {
    expect(
      LanguageModuleService.resolvePlatformLocale(const [Locale('xx')]),
      const Locale('en'),
    );
  });
}
