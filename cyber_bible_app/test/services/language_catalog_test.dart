// Unit tests for the local UI-language catalog.

import 'package:flutter_test/flutter_test.dart';

import 'package:cyber_bible_app/services/language_catalog.dart';

void main() {
  test('catalog includes all currently installed modules', () {
    expect(languageCatalogEntry('en').state, LanguageModuleState.installed);
    expect(languageCatalogEntry('es').state, LanguageModuleState.installed);
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
      'cy',
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
      'ne',
      'nn',
      'or',
      'pa',
      'ro',
      'si',
      'sk',
      'sl',
      'sq',
      'sr',
      'sv',
      'se',
      'sw',
      'ta',
      'te',
      'th',
      'ur',
      'uz',
      'zu',
      'yo',
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
      'ny',
      'lu',
      'luo',
      'luy',
      'ln',
      'kea',
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

  test('newly installed languages expose their native display names', () {
    expect(languageCatalogEntry('bem').nativeName, 'Ichibemba');
    expect(languageCatalogEntry('bho').nativeName, 'भोजपुरी');
    expect(languageCatalogEntry('bm').nativeName, 'Bamanankan');
    expect(languageCatalogEntry('bo').nativeName, 'བོད་སྐད');
    expect(languageCatalogEntry('br').nativeName, 'Brezhoneg');
    expect(languageCatalogEntry('cy').nativeName, 'Cymraeg');
    expect(languageCatalogEntry('dz').nativeName, 'རྫོང་ཁ');
    expect(languageCatalogEntry('ee').nativeName, 'Eʋegbe');
    expect(languageCatalogEntry('eo').nativeName, 'Esperanto');
    expect(languageCatalogEntry('ff').nativeName, 'Fulfulde');
    expect(languageCatalogEntry('fo').nativeName, 'Føroyskt');
    expect(languageCatalogEntry('fur').nativeName, 'Furlan');
    expect(languageCatalogEntry('fy').nativeName, 'Frysk');
    expect(languageCatalogEntry('ga').nativeName, 'Gaeilge');
    expect(languageCatalogEntry('gd').nativeName, 'Gàidhlig');
    expect(languageCatalogEntry('gv').nativeName, 'Gaelg');
    expect(languageCatalogEntry('haw').nativeName, 'ʻŌlelo Hawaiʻi');
    expect(languageCatalogEntry('jv').nativeName, 'Basa Jawa');
    expect(languageCatalogEntry('kea').nativeName, 'Kabuverdianu');
    expect(languageCatalogEntry('ln').nativeName, 'Lingála');
    expect(languageCatalogEntry('lu').nativeName, 'Kiluba');
    expect(languageCatalogEntry('luo').nativeName, 'Dholuo');
    expect(languageCatalogEntry('luy').nativeName, 'Luluyia');
    expect(languageCatalogEntry('ny').nativeName, 'Chichewa');
    expect(languageCatalogEntry('nn').nativeName, 'Norsk nynorsk');
    expect(languageCatalogEntry('se').nativeName, 'Davvisámegiella');
    expect(languageCatalogEntry('so').nativeName, 'Soomaali');
    expect(languageCatalogEntry('yo').nativeName, 'Yorùbá');
  });

  test('unknown language codes fall back to English metadata', () {
    expect(languageCatalogEntry('unknown').code, 'en');
  });
}
