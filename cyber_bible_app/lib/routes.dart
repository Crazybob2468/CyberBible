// Named route constants and route generation for Cyber Bible.
//
// All navigation in the app goes through these named routes so that:
//   - Route strings are never duplicated as magic strings across the codebase.
//   - Route arguments are defined in one place and are type-safe.
//   - New routes are easy to add in future steps.
//
// How navigation works:
//   Navigator.pushNamed(context, AppRoutes.bookSelect);
//   Navigator.pushNamed(context, AppRoutes.chapters, arguments: ChapterArgs(book: myBook));
//   Navigator.pushNamed(context, AppRoutes.reading,  arguments: ReadingArgs(book: myBook, chapter: 1));

import 'package:flutter/material.dart';

import 'models/book.dart';
import 'screens/home_screen.dart';
import 'screens/book_selection_screen.dart';
import 'screens/chapter_selection_screen.dart';
import 'screens/reading_screen.dart';

// ---------------------------------------------------------------------------
// Route path constants
// ---------------------------------------------------------------------------

/// All named route paths used in the app.
///
/// Use these constants instead of plain strings wherever you call
/// [Navigator.pushNamed] or set [MaterialApp.initialRoute].
class AppRoutes {
  AppRoutes._(); // Prevent instantiation — this is a namespace class.

  /// The home / landing screen. Initial route shown on app launch.
  static const String home = '/';

  /// Book selection screen — lists all books of the Bible.
  static const String bookSelect = '/books';

  /// Chapter selection screen — lists chapters for a chosen book.
  /// Expects a [ChapterArgs] instance as the route argument.
  static const String chapters = '/chapters';

  /// Scripture reading screen — displays a single chapter.
  /// Expects a [ReadingArgs] instance as the route argument.
  static const String reading = '/read';
}

// ---------------------------------------------------------------------------
// Route argument classes
// ---------------------------------------------------------------------------

/// Arguments passed to [AppRoutes.chapters].
///
/// Contains the [Book] the user selected on the book-selection screen.
class ChapterArgs {
  /// The book whose chapters should be displayed.
  final Book book;

  const ChapterArgs({required this.book});
}

/// Arguments passed to [AppRoutes.reading].
///
/// Contains both the [Book] and the chapter number to display.
class ReadingArgs {
  /// The book being read.
  final Book book;

  /// The 1-based chapter number to display.
  final int chapter;

  const ReadingArgs({required this.book, required this.chapter});
}

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
      if (settings.arguments is! ChapterArgs) {
        return MaterialPageRoute<void>(
          settings: settings,
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
      if (settings.arguments is! ReadingArgs) {
        return MaterialPageRoute<void>(
          settings: settings,
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
