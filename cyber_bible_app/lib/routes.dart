// Route generator for Cyber Bible.
//
// This file contains only the onGenerateRoute factory function.
// Route constants (AppRoutes) and argument classes (ChapterArgs, ReadingArgs)
// live in app_routes.dart so screens can import them without creating a
// circular dependency (screens → app_routes; routes.dart → app_routes + screens).
//
// app_routes.dart is re-exported here so callers that only import routes.dart
// (e.g. app.dart) continue to get AppRoutes/ChapterArgs/ReadingArgs for free.
//
// How navigation works:
//   Navigator.pushNamed(context, AppRoutes.bookSelect);
//   Navigator.pushNamed(context, AppRoutes.chapters, arguments: ChapterArgs(book: myBook));
//   Navigator.pushNamed(context, AppRoutes.reading,  arguments: ReadingArgs(book: myBook, chapter: 1));

export 'app_routes.dart'; // Re-export so consumers of routes.dart still get AppRoutes etc.

import 'package:flutter/material.dart';

import 'app_routes.dart';
import 'screens/home_screen.dart';
import 'screens/book_selection_screen.dart';
import 'screens/chapter_selection_screen.dart';
import 'screens/reading_screen.dart';

// ---------------------------------------------------------------------------
// Route generator
// ---------------------------------------------------------------------------

/// Generates a [Route] for every named route in the app.
///
/// Pass this function to [MaterialApp.onGenerateRoute]. Flutter calls it
/// whenever [Navigator.pushNamed] is used, giving us a single place to handle
/// all route construction and argument extraction.
///
/// If an unknown route is requested, returns a simple error screen rather
/// than crashing — easier to diagnose during development.
Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    // ---- Home ----
    case AppRoutes.home:
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (_) => const HomeScreen(),
      );

    // ---- Book selection ----
    case AppRoutes.bookSelect:
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (_) => const BookSelectionScreen(),
      );

    // ---- Chapter selection ----
    case AppRoutes.chapters:
      // Guard against missing/wrong-typed arguments — can happen on Flutter
      // Web if the user refreshes the browser while on this route, or if a
      // caller forgets to pass a ChapterArgs instance. Redirect home safely
      // rather than crashing with a cast error.
      // Override RouteSettings.name to AppRoutes.home so the browser URL and
      // Navigator history match the screen that is actually shown.
      if (settings.arguments is! ChapterArgs) {
        return MaterialPageRoute<void>(
          settings: const RouteSettings(name: AppRoutes.home),
          builder: (_) => const HomeScreen(),
        );
      }
      final chapterArgs = settings.arguments as ChapterArgs;
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (_) => ChapterSelectionScreen(book: chapterArgs.book),
      );

    // ---- Reading screen ----
    case AppRoutes.reading:
      // Same guard as above — missing or wrong-typed args redirect home
      // instead of throwing a cast error at runtime.
      // Override RouteSettings.name so Navigator history stays consistent.
      if (settings.arguments is! ReadingArgs) {
        return MaterialPageRoute<void>(
          settings: const RouteSettings(name: AppRoutes.home),
          builder: (_) => const HomeScreen(),
        );
      }
      final readingArgs = settings.arguments as ReadingArgs;
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (_) => ReadingScreen(
          book: readingArgs.book,
          chapter: readingArgs.chapter,
        ),
      );

    // ---- Unknown route fallback ----
    default:
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (_) => Scaffold(
          appBar: AppBar(title: const Text('Page Not Found')),
          body: Center(
            child: Text(
              'No route defined for "${settings.name}"',
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ),
      );
  }
}
