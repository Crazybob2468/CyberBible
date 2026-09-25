// Temporary generator for the requested Flutter localization catalogs.
//
// This tool translates only the current English UI strings, refuses to
// overwrite a catalog, and validates keys and ICU placeholders after writing.

import 'dart:convert';
import 'dart:io';

/// Requested language codes and their Google Translate target identifiers.
const Map<String, String> _targets = <String, String>{
  'sw': 'sw',
  'ta': 'ta',
  'te': 'te',
  'th': 'th',
  'ur': 'ur',
  'uz': 'uz',
  'zu': 'zu',
};

/// Matches ICU placeholders that must remain byte-for-byte unchanged.
final RegExp _placeholderPattern = RegExp(r'\{[A-Za-z][A-Za-z0-9_]*\}');

/// Loads, translates, and validates each requested ARB catalog.
Future<void> main() async {
  final sourceFile = File('lib/l10n/app_en.arb');
  final source = jsonDecode(await sourceFile.readAsString()) as Map<String, dynamic>;

  for (final entry in _targets.entries) {
    final outputFile = File('lib/l10n/app_${entry.key}.arb');
    if (await outputFile.exists()) {
      final existing = jsonDecode(await outputFile.readAsString()) as Map<String, dynamic>;
      _validate(source, existing, entry.key);
      stdout.writeln('Preserved validated ${outputFile.path}.');
      continue;
    }

    final translated = <String, dynamic>{'@@locale': entry.key};
    for (final sourceEntry in source.entries) {
      if (sourceEntry.key.startsWith('@')) continue;
      final value = sourceEntry.value as String;
      translated[sourceEntry.key] = await _translate(value, entry.value);
    }

    _validate(source, translated, entry.key);
    await outputFile.writeAsString('${const JsonEncoder.withIndent('  ').convert(translated)}\n');
    stdout.writeln('Generated and validated ${outputFile.path}.');
  }
}

/// Translates [source] while replacing placeholders with stable sentinels.
Future<String> _translate(String source, String targetLanguage) async {
  final placeholders = _placeholderPattern.allMatches(source).map((match) => match.group(0)!).toList();
  var protectedSource = source;
  for (var index = 0; index < placeholders.length; index++) {
    protectedSource = protectedSource.replaceFirst(placeholders[index], '998877${index}665544');
  }

  final uri = Uri.https('translate.googleapis.com', '/translate_a/single', <String, String>{
    'client': 'gtx',
    'sl': 'en',
    'tl': targetLanguage,
    'dt': 't',
    'q': protectedSource,
  });
  for (var attempt = 1; attempt <= 3; attempt++) {
    final client = HttpClient();
    try {
      final request = await client.getUrl(uri);
      final response = await request.close();
      if (response.statusCode != HttpStatus.ok) {
        if (attempt < 3 && response.statusCode >= HttpStatus.internalServerError) continue;
        throw HttpException('Translation request failed with HTTP ${response.statusCode}.', uri: uri);
      }
      final payload = jsonDecode(await utf8.decodeStream(response)) as List<dynamic>;
      final segments = payload.first as List<dynamic>;
      var translated = segments.map((segment) => (segment as List<dynamic>).first as String).join();
      for (var index = 0; index < placeholders.length; index++) {
        translated = translated.replaceAll('998877${index}665544', placeholders[index]);
      }
      return translated;
    } finally {
      client.close(force: true);
    }
  }
  throw StateError('Translation attempts unexpectedly exhausted.');
}

/// Ensures a translated catalog exactly mirrors the English key/placeholder contract.
void _validate(Map<String, dynamic> source, Map<String, dynamic> translated, String locale) {
  final sourceKeys = source.keys.where((key) => !key.startsWith('@')).toSet();
  final translatedKeys = translated.keys.where((key) => !key.startsWith('@')).toSet();
  if (sourceKeys.length != 147 || sourceKeys.length != translatedKeys.length || !sourceKeys.containsAll(translatedKeys)) {
    throw StateError('$locale does not contain the required 147 non-locale keys.');
  }
  for (final key in sourceKeys) {
    final sourcePlaceholders = _placeholderPattern.allMatches(source[key] as String).map((match) => match.group(0)!).toSet();
    final translatedPlaceholders = _placeholderPattern.allMatches(translated[key] as String).map((match) => match.group(0)!).toSet();
    if (sourcePlaceholders.length != translatedPlaceholders.length || !sourcePlaceholders.containsAll(translatedPlaceholders)) {
      throw StateError('$locale has a placeholder mismatch for $key.');
    }
  }
}