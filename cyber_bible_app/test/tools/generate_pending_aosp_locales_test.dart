// Tests pending-locale generator fallbacks and ICU placeholder preservation.

import 'package:flutter_test/flutter_test.dart';

import '../../tools/generate_pending_aosp_locales.dart';

void main() {
  test('unmatched message keys retain the complete English source', () {
    const english = 'Read the Bible, {bookName}, chapter {chapter}.';

    expect(
      translatePendingLocaleMessage('readTheBible', english, const {}),
      english,
    );
  });

  test('translated messages retain their ICU placeholders', () {
    expect(
      translatePendingLocaleMessage(
        'languageStatusSelected',
        'Selected language: {languageName}',
        const <String, String>{'language': 'Dhok'},
      ),
      'Dhok {languageName}',
    );
  });
}
