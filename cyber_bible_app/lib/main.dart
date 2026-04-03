// Cyber Bible — A free/libre and open source software (FLOSS) Bible study app.
// Licensed under GPL 3.0. See LICENSE for details.
//
// This is the app entry point. It initializes Flutter and launches
// the root [CyberBibleApp] widget defined in app.dart.

import 'package:flutter/material.dart';

import 'app.dart';

void main() {
  // Ensure Flutter bindings are ready before any plugin or async work.
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const CyberBibleApp());
}
