// Local UI-language module contract for Cyber Bible.
//
// The first implementation keeps modules compiled through Flutter l10n. This
// service centralizes the metadata boundary so future AI-generated ARB/JSON
// modules can be bundled locally without changing settings or startup code.

import 'package:flutter/widgets.dart';

import 'language_catalog.dart';

/// Describes one language module that is available to the app.
class LanguageModuleInfo {
  /// Stable language code used by [Locale] and [LanguageCatalogEntry].
  final String languageCode;

  /// Module schema version, independent from the app version.
  final int schemaVersion;

  /// Human-readable source label for translation provenance.
  final String sourceLabel;

  const LanguageModuleInfo({
    required this.languageCode,
    required this.schemaVersion,
    required this.sourceLabel,
  });
}

/// Owns local module discovery and platform-locale matching.
class LanguageModuleService {
  LanguageModuleService._();

  /// Versioned metadata for modules currently compiled into the app.
  static const List<LanguageModuleInfo> installedModules = <LanguageModuleInfo>[
    LanguageModuleInfo(
      languageCode: 'en',
      schemaVersion: 1,
      sourceLabel: 'Human-authored base English',
    ),
    LanguageModuleInfo(
      languageCode: 'es',
      schemaVersion: 1,
      sourceLabel: 'AI-generated initial translation',
    ),
    LanguageModuleInfo(
      languageCode: 'fr',
      schemaVersion: 1,
      sourceLabel: 'AI-generated initial translation',
    ),
    LanguageModuleInfo(
      languageCode: 'de',
      schemaVersion: 1,
      sourceLabel: 'AI-generated initial translation',
    ),
    LanguageModuleInfo(
      languageCode: 'it',
      schemaVersion: 1,
      sourceLabel: 'AI-generated initial translation',
    ),
    LanguageModuleInfo(
      languageCode: 'pt',
      schemaVersion: 1,
      sourceLabel: 'AI-generated initial translation',
    ),
    LanguageModuleInfo(
      languageCode: 'hi',
      schemaVersion: 1,
      sourceLabel: 'AI-generated initial translation',
    ),
    LanguageModuleInfo(
      languageCode: 'zh',
      schemaVersion: 1,
      sourceLabel: 'AI-generated initial translation',
    ),
    LanguageModuleInfo(
      languageCode: 'ar',
      schemaVersion: 1,
      sourceLabel: 'AI-generated initial translation',
    ),
    LanguageModuleInfo(
      languageCode: 'bn',
      schemaVersion: 1,
      sourceLabel: 'AI-generated initial translation',
    ),
    LanguageModuleInfo(
      languageCode: 'ja',
      schemaVersion: 1,
      sourceLabel: 'AI-generated initial translation',
    ),
    LanguageModuleInfo(
      languageCode: 'ko',
      schemaVersion: 1,
      sourceLabel: 'AI-generated initial translation',
    ),
    LanguageModuleInfo(
      languageCode: 'ru',
      schemaVersion: 1,
      sourceLabel: 'AI-generated initial translation',
    ),
    LanguageModuleInfo(languageCode: 'tr', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'uk', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'vi', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'pl', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'nl', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'af', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'ak', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'am', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'ca', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'cs', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'da', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'az', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'be', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'bem', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'bg', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'bho', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'bm', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'bo', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'br', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'bs', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'et', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'eu', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'fa', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'fi', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'fil', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'gl', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'gu', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'he', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'hr', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'hu', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'hy', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'id', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'is', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'ka', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'kab', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'kk', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'kln', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'lg', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'lo', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'lt', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'lv', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'mk', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'ml', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'as', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'ast', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'el', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'km', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'kn', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'ky', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'mn', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'mr', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'ms', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'my', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'nb', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'ne', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'om', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'or', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'pa', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'ro', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'rw', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'si', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'sk', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'sl', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'sq', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'sr', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'sv', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'sw', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'ta', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'te', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'th', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'ur', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'uz', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'zu', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'dz', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'ee', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'eo', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'ff', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'fo', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'fur', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'fy', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'ga', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'gd', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'gv', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'ha', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'haw', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'ig', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'jv', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'ny', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'cy', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'so', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'yo', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'nn', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'se', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'lu', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'luo', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'luy', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'ln', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'kea', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
  ];

  /// Returns true when a compiled local module exists for [languageCode].
  static bool isInstalled(String languageCode) {
    return installedModules.any(
      (module) => module.languageCode == languageCode,
    );
  }

  /// Selects the first installed locale from the platform preference order.
  ///
  /// English is returned when none of the platform preferences has a local
  /// module. This is the same fallback rule used during first launch.
  static Locale resolvePlatformLocale(Iterable<Locale> platformLocales) {
    for (final platformLocale in platformLocales) {
      if (isInstalled(platformLocale.languageCode)) {
        return Locale(platformLocale.languageCode);
      }
    }
    return const Locale('en');
  }

  /// Returns the local catalog entry for [languageCode].
  static LanguageCatalogEntry catalogEntry(String languageCode) {
    return languageCatalogEntry(languageCode);
  }
}
