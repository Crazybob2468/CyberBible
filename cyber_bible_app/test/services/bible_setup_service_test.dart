/// Unit tests for [BibleSetupService].
///
/// ## What is tested here
///
/// [BibleSetupService.dbPath] is a simple getter with a StateError guard —
/// pure Dart logic with no platform dependency.  That is tested here.
///
/// ## What is NOT tested here
///
/// [BibleSetupService.ensureReady] uses two Flutter/platform APIs that cannot
/// be exercised in plain unit tests without complex channel mocking:
///   - `getApplicationDocumentsDirectory()` from `path_provider`
///   - `rootBundle.load()` from `package:flutter/services.dart`
///
/// Coverage of `ensureReady()` requires integration tests (run on a real
/// device or emulator via `flutter test integration_test/`).  Those will be
/// added in a future step once the integration-test scaffold is in place.
/// See PROJECT_STATUS.md for the deferred-test note.
library;

import 'package:flutter_test/flutter_test.dart';

import 'package:cyber_bible_app/services/bible_setup_service.dart';

void main() {
  // ---------------------------------------------------------------------------
  // BibleSetupService.dbPath — StateError guard
  // ---------------------------------------------------------------------------

  group('BibleSetupService.dbPath', () {
    test(
      'throws StateError when accessed before ensureReady() is called',
      () {
        // dbPath must throw a descriptive StateError rather than a null-deref
        // crash when a caller forgets to await ensureReady() first.
        expect(
          () => BibleSetupService.dbPath,
          throwsA(
            isA<StateError>().having(
              (e) => e.message,
              'message',
              contains('ensureReady'),
            ),
          ),
        );
      },
    );
  });
}
