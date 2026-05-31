/// Native-platform conditional-import stub for [UserDataService] database
/// factory setup.
///
/// This file is selected at compile time by the conditional import in
/// `user_data_service.dart` when `dart.library.io` is available — i.e., on
/// Android, iOS, Windows, macOS, and Linux.  It must **never** be imported
/// directly; always go through the conditional import in
/// `user_data_service.dart`.
///
/// On native platforms, sqflite uses its built-in native SQLite factory by
/// default.  No global factory override is needed, so this function is a
/// deliberate no-op.  The real database-opening logic (resolving the path via
/// `path_provider` and calling `openDatabase`) lives in
/// [UserDataService._doOpen] in the main file.
library;

/// No-op on native platforms — sqflite uses the native factory by default.
///
/// On Flutter Web, `user_data_service_web.dart` overrides this function to
/// redirect the global sqflite factory to the WebAssembly / IndexedDB backend.
/// On all other platforms this function does nothing and returns immediately.
Future<void> platformSetupUserDatabaseFactory() async {
  // sqflite on native (Android, iOS, Windows, macOS, Linux) uses the platform
  // SQLite library via platform channels. No factory override is needed.
  // The function exists only to satisfy the conditional import contract.
}
