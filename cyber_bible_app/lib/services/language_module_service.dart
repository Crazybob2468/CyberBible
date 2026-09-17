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
    LanguageModuleInfo(languageCode: 'am', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'ca', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'cs', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'da', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'az', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'be', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'bg', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
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
    LanguageModuleInfo(languageCode: 'kk', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'lo', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'lt', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'lv', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'mk', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
    LanguageModuleInfo(languageCode: 'ml', schemaVersion: 1, sourceLabel: 'AI-generated initial translation'),
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
