// Unit tests for the local UI-language catalog.

import 'package:flutter_test/flutter_test.dart';

import 'package:cyber_bible_app/services/language_catalog.dart';

void main() {
  test('catalog includes all currently installed modules', () {
    expect(
      languageCatalogEntry('en').state,
      LanguageModuleState.installed,
    );
    expect(
      languageCatalogEntry('es').state,
      LanguageModuleState.installed,
    );
    for (final code in <String>[
      'fr',
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
    ]) {
      expect(languageCatalogEntry(code).state, LanguageModuleState.installed);
    }
  });

  test('catalog exposes a broad Android language roadmap', () {
    expect(androidLanguageCatalog.length, greaterThan(70));
    expect(
      androidLanguageCatalog.map((entry) => entry.code),
      containsAll(<String>['ar', 'fr', 'hi', 'ja', 'pt', 'sw', 'zh']),
    );
  });

  test('language search matches code, English name, and native name', () {
    final spanish = languageCatalogEntry('es');

    expect(spanish.matches('es'), isTrue);
    expect(spanish.matches('Spanish'), isTrue);
    expect(spanish.matches('Español'), isTrue);
    expect(spanish.matches('Japanese'), isFalse);
  });

  test('unknown language codes fall back to English metadata', () {
    expect(languageCatalogEntry('unknown').code, 'en');
  });
}
