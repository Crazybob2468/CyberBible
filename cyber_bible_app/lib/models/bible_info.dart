/// Metadata about a Bible translation module.
///
/// Each SQLite Bible database contains a single row in the `bible_info` table.
/// A separate library database may aggregate [BibleInfo] from all installed modules.
class BibleInfo {
  /// Translation identifier, e.g. "eng-web".
  final String id;

  /// Full name, e.g. "World English Bible Classic".
  final String name;

  /// Vernacular name (may equal [name] for English translations).
  final String nameLocal;

  /// Short abbreviation, e.g. "WEB".
  final String abbreviation;

  /// Brief description of the translation.
  final String description;

  /// ISO 639 language code, e.g. "eng".
  final String languageCode;

  /// Language name in English, e.g. "English".
  final String languageName;

  /// Script name, e.g. "Latin", "Arabic".
  final String script;

  /// Text direction: "LTR" or "RTL".
  final String scriptDirection;

  /// ISO 3166 country code, e.g. "US".
  final String countryCode;

  /// Scope of the translation, e.g. "Bible with Deuterocanon", "New Testament".
  final String scope;

  /// Copyright or licensing information.
  final String copyright;

  const BibleInfo({
    required this.id,
    required this.name,
    required this.nameLocal,
    required this.abbreviation,
    this.description = '',
    required this.languageCode,
    required this.languageName,
    this.script = 'Latin',
    this.scriptDirection = 'LTR',
    this.countryCode = '',
    this.scope = '',
    this.copyright = '',
  });

  /// Create from a SQLite row map.
  factory BibleInfo.fromMap(Map<String, dynamic> map) {
    return BibleInfo(
      id: map['id'] as String,
      name: map['name'] as String,
      nameLocal: map['name_local'] as String,
      abbreviation: map['abbreviation'] as String,
      description: map['description'] as String? ?? '',
      languageCode: map['language_code'] as String,
      languageName: map['language_name'] as String,
      script: map['script'] as String? ?? 'Latin',
      scriptDirection: map['script_direction'] as String? ?? 'LTR',
      countryCode: map['country_code'] as String? ?? '',
      scope: map['scope'] as String? ?? '',
      copyright: map['copyright'] as String? ?? '',
    );
  }

  /// Convert to a SQLite row map.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'name_local': nameLocal,
      'abbreviation': abbreviation,
      'description': description,
      'language_code': languageCode,
      'language_name': languageName,
      'script': script,
      'script_direction': scriptDirection,
      'country_code': countryCode,
      'scope': scope,
      'copyright': copyright,
    };
  }

  @override
  String toString() => 'BibleInfo($id, $abbreviation)';
}
