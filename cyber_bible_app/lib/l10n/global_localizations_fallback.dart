// English framework-localization fallbacks for installed UI locales that are
// not included in Flutter's global Material and Cupertino locale data.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

/// Locale codes whose app strings are localized but whose framework controls
/// must use English because Flutter does not provide their global locale data.
const Set<String> _frameworkFallbackLocaleCodes = <String>{
  'bas',
  'bem',
  'bez',
  'bho',
  'brx',
  'bm',
  'br',
  'ceb',
  'cy',
  'dz',
  'ee',
  'eo',
  'ewo',
  'ff',
  'fo',
  'fur',
  'fy',
  'doi',
  'gd',
  'gv',
  'ha',
  'haw',
  'ig',
  'ia',
  'ie',
  'jv',
  'kab',
  'lb',
  'kea',
  'ku',
  'kln',
  'lg',
  'ln',
  'lu',
  'luo',
  'luy',
  'mai',
  'mg',
  'mfe',
  'mi',
  'mt',
  'to',
  'tg',
  'ti',
  'tk',
  'tt',
  'tzm',
  'nn',
  'ny',
  'nyn',
  'nus',
  'nds',
  'oc',
  'om',
  'os',
  'rw',
  'se',
  'seh',
  'so',
  'su',
  'szl',
  'qu',
  'rm',
  'rn',
  'sa',
  'sah',
  'sc',
  'sat',
  'sd',
  'sg',
  'sn',
  'cv',
  'smn',
  'vec',
  'wo',
  'yrl',
  'za',
  'kam',
  'ki',
  'kw',
  'ksh',
  'yue',
  'saq',
  'sbp',
  'xh',
  'yo',
};

/// Supplies English Material control strings when Flutter has no native data.
class MaterialLocalizationsFallbackDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  /// Creates the constant fallback delegate used by [MaterialApp].
  const MaterialLocalizationsFallbackDelegate();

  @override
  bool isSupported(Locale locale) {
    return _frameworkFallbackLocaleCodes.contains(locale.languageCode);
  }

  @override
  Future<MaterialLocalizations> load(Locale locale) {
    return GlobalMaterialLocalizations.delegate.load(const Locale('en'));
  }

  @override
  bool shouldReload(MaterialLocalizationsFallbackDelegate old) => false;
}

/// Supplies English Cupertino control strings when Flutter has no native data.
class CupertinoLocalizationsFallbackDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  /// Creates the constant fallback delegate used by [MaterialApp].
  const CupertinoLocalizationsFallbackDelegate();

  @override
  bool isSupported(Locale locale) {
    return _frameworkFallbackLocaleCodes.contains(locale.languageCode);
  }

  @override
  Future<CupertinoLocalizations> load(Locale locale) {
    return GlobalCupertinoLocalizations.delegate.load(const Locale('en'));
  }

  @override
  bool shouldReload(CupertinoLocalizationsFallbackDelegate old) => false;
}
