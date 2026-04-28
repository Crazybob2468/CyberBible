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
      //
      // Seed color: forest green (0xFF2D6A4F) — harmonises with the home
      // screen's fixed dark-green brand gradient. Material 3 derives a full
      // coherent ColorScheme from this single seed, so primaryContainer,
      // onPrimaryContainer, surface, error, etc. are all set automatically.
      // Step 1.16 will let users override this with their own accent seed.
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2D6A4F), // Forest green
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
      ),

      // Dark theme — used when system is in dark mode.
      // Same seed; Material 3 adjusts lightness/chroma for dark surfaces.
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2D6A4F), // Forest green (dark variant)
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
