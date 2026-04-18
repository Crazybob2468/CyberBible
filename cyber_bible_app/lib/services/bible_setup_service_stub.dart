/// Web stub for [BibleSetupService] platform-specific operations.
///
/// This file is selected at compile time by the conditional import in
/// `bible_setup_service.dart` when `dart.library.io` is NOT available — i.e.,
/// on Flutter Web. It must **never** be imported directly.
///
/// All functions here are intentional no-ops. The [BibleSetupService] class
/// handles the web case with a `kIsWeb` short-circuit before calling into this
/// stub, so [platformEnsureReady] will not actually be invoked at runtime.
/// The stub exists solely to satisfy the Dart compiler on web, where dart:io
/// is unavailable and the IO implementation file cannot be linked.
library;

/// No-op stub — returns null because there is no file-based database on web.
///
/// Web-specific Bible data access will be implemented in a later phase.
/// This function is never called at runtime because [BibleSetupService.ensureReady]
/// returns early via `if (kIsWeb) return;` before reaching this call.
Future<String?> platformEnsureReady(
  String assetPath,
  String subdir,
  String filename,
) async =>
    null;
