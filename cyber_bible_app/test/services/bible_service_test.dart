/// Unit tests for [BibleService].
///
/// These tests cover the pure-Dart logic in BibleService that can be verified
/// without a real SQLite database or platform plugins. Specifically:
///
/// - Accessing [BibleService] query methods before [ensureOpen] throws a
///   [StateError] with a clear message.
///
/// ## Deferred integration tests
///
/// The methods [BibleService.getBooks], [BibleService.getChapters],
/// [BibleService.getChapter], [BibleService.getVerses], and
/// [BibleService.getBibleInfo] all require an open sqflite database, which
/// depends on [BibleSetupService.ensureReady] and [path_provider] — platform
/// plugins that cannot be exercised in plain unit tests without channel
/// mocking. Full integration coverage of these query methods requires an
/// integration test run on a real device or emulator via
/// `flutter test integration_test/`.
///
/// Integration tests for BibleService will be added when the
/// integration-test scaffold is set up (Phase 1, after step 1.17 or when
/// integration tests are first prioritized).
library;

import 'package:flutter_test/flutter_test.dart';

import 'package:cyber_bible_app/services/bible_service.dart';

void main() {
  // Reset BibleService._db between tests to ensure clean state.
  // BibleService uses a static field that persists across tests in the same
  // process, so we need to ensure the not-yet-opened state is tested first.
  //
  // Note: Dart test files run sequentially within a group, so test ordering
  // within a group is reliable. We place the StateError test before any test
  // that would call ensureOpen().

  group('BibleService — pre-open guard', () {
    test(
      'getBibleInfo throws StateError before ensureOpen is called',
      () async {
        // BibleService._db starts as null (never opened in this test process
        // — this test must run before any test that opens the database).
        // The _database getter should detect this and throw.
        expect(
          () async => BibleService.getBibleInfo(),
          throwsA(
            isA<StateError>().having(
              (e) => e.message,
              'message',
              contains('ensureOpen'),
            ),
          ),
        );
      },
    );

    test(
      'getBooks throws StateError before ensureOpen is called',
      () async {
        expect(
          () async => BibleService.getBooks(),
          throwsA(isA<StateError>()),
        );
      },
    );

    test(
      'getChapters throws StateError before ensureOpen is called',
      () async {
        expect(
          () async => BibleService.getChapters('GEN'),
          throwsA(isA<StateError>()),
        );
      },
    );

    test(
      'getChapter throws StateError before ensureOpen is called',
      () async {
        expect(
          () async => BibleService.getChapter('GEN', 1),
          throwsA(isA<StateError>()),
        );
      },
    );

    test(
      'getVerses throws StateError before ensureOpen is called',
      () async {
        expect(
          () async => BibleService.getVerses('GEN', 1),
          throwsA(isA<StateError>()),
        );
      },
    );
  });
}
