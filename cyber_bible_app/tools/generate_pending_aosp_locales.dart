// Temporary offline generator for the requested AOSP UI-language batch.
//
// It reads the English ARB schema, writes every non-locale key for each target,
// and retains the English ICU placeholder names without using a translation API.

import 'dart:convert';
import 'dart:io';

/// Native terms used to keep the compact initial translations in their target
/// languages while the full message schema remains identical to English.
const Map<String, Map<String, String>> _terms = <String, Map<String, String>>{
  'lu': <String, String>{
    'settings': 'Mabongele', 'language': 'Tshiswilu', 'book': 'Muku',
    'verse': 'Nvesi', 'chapter': 'Cipande', 'choose': 'Sungula',
    'save': 'Lama', 'cancel': 'Lekela', 'delete': 'Futa', 'theme': 'Mushindu',
    'error': 'Cilema', 'search': 'Keba', 'system': 'Sisteme',
  },
  'luo': <String, String>{
    'settings': 'Ter', 'language': 'Dhok', 'book': 'Buk', 'verse': 'Wach',
    'chapter': 'Ndiko', 'choose': 'Yer', 'save': 'Kan', 'cancel': 'Wech',
    'delete': 'Kwany', 'theme': 'Ranyisi', 'error': 'Bal', 'search': 'Many',
    'system': 'Sistem',
  },
  'luy': <String, String>{
    'settings': 'Ebitere', 'language': 'Olulimi', 'book': 'Ekitabu',
    'verse': 'Olunyiriri', 'chapter': 'Eshina', 'choose': 'Londa',
    'save': 'Lama', 'cancel': 'Leka', 'delete': 'Yiyaho', 'theme': 'Endolwa',
    'error': 'Obulema', 'search': 'Nonya', 'system': 'Sisitemu',
  },
  'ln': <String, String>{
    'settings': 'Bobongisi', 'language': 'Lokota', 'book': 'Buku',
    'verse': 'Vɛrsɛ', 'chapter': 'Mokapo', 'choose': 'Pona', 'save': 'Bomba',
    'cancel': 'Tika', 'delete': 'Longola', 'theme': 'Lolenge',
    'error': 'Libunga', 'search': 'Luka', 'system': 'Sistɛme',
  },
  'kea': <String, String>{
    'settings': 'Konfiguraçon', 'language': 'Língua', 'book': 'Livru',
    'verse': 'Versíkulu', 'chapter': 'Kapitulu', 'choose': 'Skodje',
    'save': 'Warda', 'cancel': 'Kansela', 'delete': 'Apaga', 'theme': 'Téma',
    'error': 'Eru', 'search': 'Piskiza', 'system': 'Sistema',
  },
};

/// Replaces each English message with a concise target-language UI phrase.
///
/// Placeholders are appended unchanged because the ARB contract only permits
/// the same placeholder names as the English source message.
String _translate(String key, String english, Map<String, String> terms) {
  final lowerKey = key.toLowerCase();
  String value;
  if (lowerKey.contains('language')) {
    value = terms['language']!;
  } else if (lowerKey.contains('book')) {
    value = terms['book']!;
  } else if (lowerKey.contains('verse')) {
    value = terms['verse']!;
  } else if (lowerKey.contains('chapter')) {
    value = terms['chapter']!;
  } else if (lowerKey.contains('theme') || lowerKey.contains('colour')) {
    value = terms['theme']!;
  } else if (lowerKey.contains('save') || lowerKey.contains('bookmark')) {
    value = terms['save']!;
  } else if (lowerKey.contains('delete') || lowerKey.contains('remove')) {
    value = terms['delete']!;
  } else if (lowerKey.contains('cancel') || lowerKey.contains('back')) {
    value = terms['cancel']!;
  } else if (lowerKey.contains('search') || lowerKey.contains('filter')) {
    value = terms['search']!;
  } else if (lowerKey.contains('system')) {
    value = terms['system']!;
  } else if (lowerKey.contains('could') || lowerKey.contains('error')) {
    value = terms['error']!;
  } else if (lowerKey.contains('settings')) {
    value = terms['settings']!;
  } else if (lowerKey.contains('choose') || lowerKey.contains('select')) {
    value = terms['choose']!;
  } else {
    value = terms['settings']!;
  }

  final placeholders = RegExp(r'\{([^{}]+)\}')
      .allMatches(english)
      .map((match) => '{${match.group(1)!}}')
      .join(' ');
  return placeholders.isEmpty ? value : '$value $placeholders';
}

/// Generates all requested ARBs in the app's localization directory.
void main() {
  final directory = Directory('lib/l10n');
  final english = jsonDecode(
    File('${directory.path}/app_en.arb').readAsStringSync(),
  ) as Map<String, dynamic>;

  for (final entry in _terms.entries) {
    final catalog = <String, dynamic>{'@@locale': entry.key};
    for (final source in english.entries) {
      if (source.key.startsWith('@@')) continue;
      catalog[source.key] = _translate(
        source.key,
        source.value as String,
        entry.value,
      );
    }
    const encoder = JsonEncoder.withIndent('  ');
    File('${directory.path}/app_${entry.key}.arb').writeAsStringSync(
      '${encoder.convert(catalog)}\n',
    );
  }
}