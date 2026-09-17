import 'package:flutter/widgets.dart';

import 'app_localizations.dart';

/// Returns the active app localization or an English fallback when a widget is
/// rendered without a MaterialApp localization scope, such as in a widget test.
AppLocalizations appLocalizations(BuildContext context) {
  final localized = AppLocalizations.of(context);
  if (localized != null) {
    return localized;
  }

  final locale = Localizations.maybeLocaleOf(context) ?? const Locale('en');
  return lookupAppLocalizations(locale);
}
