// Local catalog of UI languages intended for Android and other Flutter targets.
//
// The catalog is deliberately separate from generated Flutter localization
// classes. It lets the settings screen search the full language roadmap while
// individual machine-translated modules are added over time.

/// Availability state for a local UI-language module.
enum LanguageModuleState {
  /// The module is bundled and can be selected immediately, including offline.
  installed,

  /// The language is in the catalog but its machine-translated module is not
  /// bundled in this build yet.
  machineTranslationPending,
}

/// Metadata used to display and search one UI language in the local catalog.
class LanguageCatalogEntry {
  /// Stable BCP-47 language code used by Flutter and Android.
  final String code;

  /// English language name used for universal searching.
  final String englishName;

  /// Native-language display name where known.
  final String nativeName;

  /// Extra spellings and language aliases used by the search field.
  final List<String> aliases;

  /// Whether this build includes a usable local translation module.
  final LanguageModuleState state;

  const LanguageCatalogEntry({
    required this.code,
    required this.englishName,
    required this.nativeName,
    this.aliases = const <String>[],
    this.state = LanguageModuleState.machineTranslationPending,
  });

  /// Returns true when [query] matches the code, names, or an alias.
  bool matches(String query) {
    final normalized = query.trim().toLowerCase();
    if (normalized.isEmpty) return true;
    return <String>[code, englishName, nativeName, ...aliases]
        .any((value) => value.toLowerCase().contains(normalized));
  }
}

/// Complete local language roadmap used by the language picker.
///
/// Installed entries are selectable immediately, while pending entries remain
/// visible for discovery until their AI-generated string bundles are bundled
/// and tested. Keeping the metadata local means the app does not need a remote
/// catalog or network access to search languages.
const List<LanguageCatalogEntry> androidLanguageCatalog = <LanguageCatalogEntry>[
  LanguageCatalogEntry(code: 'af', englishName: 'Afrikaans', nativeName: 'Afrikaans', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'am', englishName: 'Amharic', nativeName: 'አማርኛ', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'ar', englishName: 'Arabic', nativeName: 'العربية', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'as', englishName: 'Assamese', nativeName: 'অসমীয়া'),
  LanguageCatalogEntry(code: 'az', englishName: 'Azerbaijani', nativeName: 'Azərbaycan dili', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'be', englishName: 'Belarusian', nativeName: 'Беларуская', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'bg', englishName: 'Bulgarian', nativeName: 'Български', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'bn', englishName: 'Bengali', nativeName: 'বাংলা', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'bs', englishName: 'Bosnian', nativeName: 'Bosanski', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'ca', englishName: 'Catalan', nativeName: 'Català', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'cs', englishName: 'Czech', nativeName: 'Čeština', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'da', englishName: 'Danish', nativeName: 'Dansk', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'de', englishName: 'German', nativeName: 'Deutsch', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'el', englishName: 'Greek', nativeName: 'Ελληνικά'),
  LanguageCatalogEntry(code: 'en', englishName: 'English', nativeName: 'English', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'es', englishName: 'Spanish', nativeName: 'Español', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'et', englishName: 'Estonian', nativeName: 'Eesti', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'eu', englishName: 'Basque', nativeName: 'Euskara', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'fa', englishName: 'Persian', nativeName: 'فارسی', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'fi', englishName: 'Finnish', nativeName: 'Suomi', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'fil', englishName: 'Filipino', nativeName: 'Filipino', state: LanguageModuleState.installed),
  LanguageCatalogEntry(
    code: 'fr',
    englishName: 'French',
    nativeName: 'Français',
    state: LanguageModuleState.installed,
  ),
  LanguageCatalogEntry(code: 'gl', englishName: 'Galician', nativeName: 'Galego', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'gu', englishName: 'Gujarati', nativeName: 'ગુજરાતી', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'he', englishName: 'Hebrew', nativeName: 'עברית', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'hi', englishName: 'Hindi', nativeName: 'हिन्दी', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'hr', englishName: 'Croatian', nativeName: 'Hrvatski', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'hu', englishName: 'Hungarian', nativeName: 'Magyar', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'hy', englishName: 'Armenian', nativeName: 'Հայերեն', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'id', englishName: 'Indonesian', nativeName: 'Bahasa Indonesia', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'is', englishName: 'Icelandic', nativeName: 'Íslenska', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'it', englishName: 'Italian', nativeName: 'Italiano', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'ja', englishName: 'Japanese', nativeName: '日本語', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'ka', englishName: 'Georgian', nativeName: 'ქართული', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'kk', englishName: 'Kazakh', nativeName: 'Қазақша', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'km', englishName: 'Khmer', nativeName: 'ខ្មែរ'),
  LanguageCatalogEntry(code: 'kn', englishName: 'Kannada', nativeName: 'ಕನ್ನಡ'),
  LanguageCatalogEntry(code: 'ko', englishName: 'Korean', nativeName: '한국어', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'ky', englishName: 'Kyrgyz', nativeName: 'Кыргызча'),
  LanguageCatalogEntry(code: 'lo', englishName: 'Lao', nativeName: 'ລາວ', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'lt', englishName: 'Lithuanian', nativeName: 'Lietuvių', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'lv', englishName: 'Latvian', nativeName: 'Latviešu', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'mk', englishName: 'Macedonian', nativeName: 'Македонски', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'ml', englishName: 'Malayalam', nativeName: 'മലയാളം', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'mn', englishName: 'Mongolian', nativeName: 'Монгол'),
  LanguageCatalogEntry(code: 'mr', englishName: 'Marathi', nativeName: 'मराठी'),
  LanguageCatalogEntry(code: 'ms', englishName: 'Malay', nativeName: 'Bahasa Melayu'),
  LanguageCatalogEntry(code: 'my', englishName: 'Burmese', nativeName: 'မြန်မာ'),
  LanguageCatalogEntry(code: 'nb', englishName: 'Norwegian Bokmål', nativeName: 'Norsk bokmål'),
  LanguageCatalogEntry(code: 'ne', englishName: 'Nepali', nativeName: 'नेपाली'),
  LanguageCatalogEntry(code: 'nl', englishName: 'Dutch', nativeName: 'Nederlands', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'or', englishName: 'Odia', nativeName: 'ଓଡ଼ିଆ'),
  LanguageCatalogEntry(code: 'pa', englishName: 'Punjabi', nativeName: 'ਪੰਜਾਬੀ'),
  LanguageCatalogEntry(code: 'pl', englishName: 'Polish', nativeName: 'Polski', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'pt', englishName: 'Portuguese', nativeName: 'Português', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'ro', englishName: 'Romanian', nativeName: 'Română'),
  LanguageCatalogEntry(code: 'ru', englishName: 'Russian', nativeName: 'Русский', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'si', englishName: 'Sinhala', nativeName: 'සිංහල'),
  LanguageCatalogEntry(code: 'sk', englishName: 'Slovak', nativeName: 'Slovenčina'),
  LanguageCatalogEntry(code: 'sl', englishName: 'Slovenian', nativeName: 'Slovenščina'),
  LanguageCatalogEntry(code: 'sq', englishName: 'Albanian', nativeName: 'Shqip'),
  LanguageCatalogEntry(code: 'sr', englishName: 'Serbian', nativeName: 'Српски'),
  LanguageCatalogEntry(code: 'sv', englishName: 'Swedish', nativeName: 'Svenska'),
  LanguageCatalogEntry(code: 'sw', englishName: 'Swahili', nativeName: 'Kiswahili'),
  LanguageCatalogEntry(code: 'ta', englishName: 'Tamil', nativeName: 'தமிழ்'),
  LanguageCatalogEntry(code: 'te', englishName: 'Telugu', nativeName: 'తెలుగు'),
  LanguageCatalogEntry(code: 'th', englishName: 'Thai', nativeName: 'ไทย'),
  LanguageCatalogEntry(code: 'tr', englishName: 'Turkish', nativeName: 'Türkçe', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'uk', englishName: 'Ukrainian', nativeName: 'Українська', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'ur', englishName: 'Urdu', nativeName: 'اردو'),
  LanguageCatalogEntry(code: 'uz', englishName: 'Uzbek', nativeName: 'Oʻzbekcha'),
  LanguageCatalogEntry(code: 'vi', englishName: 'Vietnamese', nativeName: 'Tiếng Việt', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'zh', englishName: 'Chinese', nativeName: '中文', state: LanguageModuleState.installed),
  LanguageCatalogEntry(code: 'zu', englishName: 'Zulu', nativeName: 'isiZulu'),
];

/// Returns the catalog entry for [code], or English when the code is unknown.
LanguageCatalogEntry languageCatalogEntry(String code) {
  return androidLanguageCatalog.firstWhere(
    (entry) => entry.code == code,
    orElse: () => androidLanguageCatalog.firstWhere(
      (entry) => entry.code == 'en',
    ),
  );
}
