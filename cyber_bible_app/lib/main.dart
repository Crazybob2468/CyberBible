// Cyber Bible — A free/libre and open source software (FLOSS) Bible study app.
// Licensed under GPL 3.0. See LICENSE for details.
//
// This is the app entry point. It initializes Flutter, runs the one-time
// Bible database setup, and then launches the root [CyberBibleApp] widget.

import 'package:flutter/material.dart';

import 'app.dart';
import 'services/bible_setup_service.dart';

Future<void> main() async {
  // Ensure Flutter bindings are ready before calling any plugin or async code.
  // This is required before path_provider and rootBundle can be used.
  WidgetsFlutterBinding.ensureInitialized();

  // Copy the bundled Bible database from the read-only asset bundle to the
  // app's writable Application Support directory (skipped on subsequent
  // launches if the file already exists). Must complete before the UI renders
  // so that BibleService can open the database synchronously once needed.
  await BibleSetupService.ensureReady();

  runApp(const CyberBibleApp());
}
