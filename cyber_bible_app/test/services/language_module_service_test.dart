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
        'ceb',
        'su',
        'xh',
        'mai',
        'qu',
      ]),
    );
    expect(
      LanguageModuleService.installedModules
          .where((module) => module.languageCode != 'en')
          .every(
            (module) =>
                module.sourceLabel == 'AI-generated initial translation',
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

  test(
    'legacy Android language tags resolve to canonical installed modules',
    () {
      expect(LanguageModuleService.isInstalled('in'), isTrue);
      expect(LanguageModuleService.isInstalled('iw'), isTrue);
      expect(
        LanguageModuleService.resolvePlatformLocale(const [Locale('in')]),
        const Locale('id'),
      );
      expect(
        LanguageModuleService.resolvePlatformLocale(const [Locale('iw')]),
        const Locale('he'),
      );
      expect(LanguageModuleService.catalogEntry('in').code, 'id');
      expect(LanguageModuleService.catalogEntry('iw').code, 'he');
    },
  );

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
      'ceb',
      'su',
      'xh',
      'mai',
      'qu',
      'rn',
      'sd',
      'szl',
      'tzm',
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
