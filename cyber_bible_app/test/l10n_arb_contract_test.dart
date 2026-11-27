// Parsed contract tests for active locales and pending translation drafts.

import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

/// Extracts the exact ICU placeholder names embedded in an ARB message.
Set<String> _placeholders(String value) {
  return RegExp(
    r'\{([^{}]+)\}',
  ).allMatches(value).map((match) => match.group(1)!).toSet();
}

void main() {
  // Keep the new footnote messages translated in the catalogs updated for 2.2.
  test('translated footnote messages do not fall back to English', () {
    final english =
        jsonDecode(File('lib/l10n/app_en.arb').readAsStringSync())
            as Map<String, dynamic>;
    const keys = <String>[
      'chapterFootnotesTitle',
      'openScriptureReference',
      'couldNotLoadFootnotes',
    ];
    for (final code in <String>[
      'es',
      'fr',
      'de',
      'it',
      'pt',
      'ar',
      'zh',
      'ja',
      'ko',
      'ru',
      'nl',
      'uk',
      'pl',
    ]) {
      final catalog =
          jsonDecode(File('lib/l10n/app_$code.arb').readAsStringSync())
              as Map<String, dynamic>;
      for (final key in keys) {
        expect(catalog[key], isNot(english[key]), reason: '$code: $key');
      }
    }
  });

  test(
    'active locales do not reuse another locale complete message catalog',
    () {
      final l10nDirectory = Directory('lib/l10n');
      final activeCatalogSignatures = <String>{};

      for (final entity in l10nDirectory.listSync()) {
        if (entity is! File ||
            !entity.path.endsWith('.arb') ||
            entity.path.endsWith('app_en.arb')) {
          continue;
        }

        final catalog =
            jsonDecode(entity.readAsStringSync()) as Map<String, dynamic>;
        final messageKeys =
            catalog.keys.where((key) => !key.startsWith('@')).toList()..sort();
        final signature = jsonEncode(<String, dynamic>{
          for (final key in messageKeys) key: catalog[key],
        });

        expect(
          activeCatalogSignatures.add(signature),
          isTrue,
          reason: '${entity.path} duplicates another active locale catalog',
        );
      }
    },
  );

  test(
    'every ARB locale matches the English key and ICU placeholder contract',
    () {
      final l10nDirectory = Directory('lib/l10n');
      final english =
          jsonDecode(
                File('${l10nDirectory.path}/app_en.arb').readAsStringSync(),
              )
              as Map<String, dynamic>;
      final englishKeys = english.keys
          .where((key) => !key.startsWith('@@'))
          .toSet();
      final englishPlaceholders = <String, Set<String>>{
        for (final key in englishKeys)
          key: _placeholders(english[key] as String),
      };

      final catalogDirectories = <Directory>[
        l10nDirectory,
        Directory('docs/localization/pending'),
      ];
      for (final directory in catalogDirectories) {
        expect(directory.existsSync(), isTrue, reason: directory.path);
        for (final entity in directory.listSync()) {
          if (entity is! File || !entity.path.endsWith('.arb')) continue;

          final catalog =
              jsonDecode(entity.readAsStringSync()) as Map<String, dynamic>;
          final catalogKeys = catalog.keys
              .where((key) => !key.startsWith('@@'))
              .toSet();
          expect(catalogKeys, englishKeys, reason: entity.path);

          for (final key in englishKeys) {
            expect(
              _placeholders(catalog[key] as String),
              englishPlaceholders[key],
              reason: '${entity.path}: $key',
            );
          }
        }
      }
    },
  );
}
