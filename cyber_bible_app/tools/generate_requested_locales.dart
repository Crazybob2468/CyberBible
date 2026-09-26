// Temporary generator for the requested Flutter localization catalogs.
//
// This tool translates only the current English UI strings, refuses to
// overwrite a catalog, and validates keys and ICU placeholders after writing.

import 'dart:convert';
import 'dart:io';

/// Requested language codes and their Google Translate target identifiers.
const Map<String, String> _targets = <String, String>{
  'ha': 'ha',
  'haw': 'haw',
  'ig': 'ig',
  'jv': 'jv',
  'ny': 'ny',
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
    protectedSource = protectedSource.replaceFirst(
      placeholders[index],
      'CBVPLACEHOLDERTOKEN${index}END',
    );
  }

  String translated;
  try {
    translated = await _translateWithGoogle(protectedSource, targetLanguage);
  } on HttpException {
    try {
      // The primary Google endpoint is rate-limited in some environments.
      translated = await _translateWithGoogleDictionary(
        protectedSource,
        targetLanguage,
      );
    } on HttpException {
      // MyMemory supplies a final public machine-translation fallback.
      translated = await _translateWithMyMemory(protectedSource, targetLanguage);
    }
  }
  for (var index = 0; index < placeholders.length; index++) {
    translated = translated.replaceAll(
      'CBVPLACEHOLDERTOKEN${index}END',
      placeholders[index],
    );
  }
  return translated;
}

/// Translates [source] through the existing Google Translate endpoint.
Future<String> _translateWithGoogle(String source, String targetLanguage) async {
  final uri = Uri.https('translate.googleapis.com', '/translate_a/single', <String, String>{
    'client': 'gtx',
    'sl': 'en',
    'tl': targetLanguage,
    'dt': 't',
    'q': source,
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
      return segments.map((segment) => (segment as List<dynamic>).first as String).join();
    } finally {
      client.close(force: true);
    }
  }
  throw StateError('Translation attempts unexpectedly exhausted.');
}

/// Translates [source] through Google's dictionary client when needed.
Future<String> _translateWithGoogleDictionary(
  String source,
  String targetLanguage,
) async {
  final uri = Uri.https('clients5.google.com', '/translate_a/t', <String, String>{
    'client': 'dict-chrome-ex',
    'sl': 'en',
    'tl': targetLanguage,
    'q': source,
  });
  final client = HttpClient();
  try {
    final request = await client.getUrl(uri);
    final response = await request.close();
    if (response.statusCode != HttpStatus.ok) {
      throw HttpException('Dictionary translation request failed with HTTP ${response.statusCode}.', uri: uri);
    }
    final payload = jsonDecode(await utf8.decodeStream(response)) as List<dynamic>;
    if (payload.isEmpty || payload.first is! String) {
      throw StateError('Dictionary translation response did not contain translated text.');
    }
    return payload.first as String;
  } finally {
    client.close(force: true);
  }
}

/// Translates [source] through MyMemory when Google is temporarily unavailable.
Future<String> _translateWithMyMemory(String source, String targetLanguage) async {
  final uri = Uri.https('api.mymemory.translated.net', '/get', <String, String>{
    'q': source,
    'langpair': 'en|$targetLanguage',
  });
  final client = HttpClient();
  try {
    final request = await client.getUrl(uri);
    final response = await request.close();
    if (response.statusCode != HttpStatus.ok) {
      throw HttpException('Fallback translation request failed with HTTP ${response.statusCode}.', uri: uri);
    }
    final payload = jsonDecode(await utf8.decodeStream(response)) as Map<String, dynamic>;
    if (payload['responseStatus'] != 200) {
      throw HttpException(
        'Fallback translation request failed: ${payload['responseDetails']}.',
        uri: uri,
      );
    }
    final responseData = payload['responseData'] as Map<String, dynamic>?;
    final translated = responseData?['translatedText'] as String?;
    if (translated == null || translated.isEmpty) {
      throw StateError('Fallback translation response did not contain translated text.');
    }
    return translated;
  } finally {
    client.close(force: true);
  }
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