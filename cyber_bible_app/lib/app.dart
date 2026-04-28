// Root application widget for Cyber Bible.
//
// Sets up MaterialApp with:
// - Light and dark themes (follows system preference)
// - Material 3 design
// - App-wide named routing via AppRoutes and onGenerateRoute (routes.dart)

import 'package:flutter/material.dart';

import 'routes.dart';

class CyberBibleApp extends StatelessWidget {
  const CyberBibleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cyber Bible',
      debugShowCheckedModeBanner: false,

      // Light theme — used when system is in light mode.
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2E5A88), // Calm blue
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
      ),

      // Dark theme — used when system is in dark mode.
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2E5A88), // Same seed, dark variant
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
      ),

      // Follow the device's light/dark setting automatically.
      themeMode: ThemeMode.system,

      // Named route configuration — all routes defined in routes.dart.
      // Using onGenerateRoute instead of a static routes map so we can pass
      // typed arguments (ChapterArgs, ReadingArgs) to each screen.
      initialRoute: AppRoutes.home,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
