// Parsed contract tests for every bundled Flutter localization catalog.

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

      for (final entity in l10nDirectory.listSync()) {
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
    },
  );
}
