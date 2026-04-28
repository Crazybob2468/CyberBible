// Named route constants and route argument classes for Cyber Bible.
//
// This file is intentionally separate from routes.dart (which contains the
// onGenerateRoute factory and imports all screen widgets).  Splitting the two
// breaks the circular import that would otherwise occur when a screen needs
// to reference route constants or argument types:
//
//   screens  →  app_routes.dart   (route constants + arg classes)
//   routes.dart  →  app_routes.dart + screen files  (factory only)
//   app.dart     →  routes.dart (gets app_routes re-exported for free)
//
// ── What belongs here ──────────────────────────────────────────────────────
//   • AppRoutes   — named route path string constants
//   • ChapterArgs — typed arguments for AppRoutes.chapters
//   • ReadingArgs — typed arguments for AppRoutes.reading
//
// ── What does NOT belong here ──────────────────────────────────────────────
//   • Screen widget classes  (live in lib/screens/)
//   • onGenerateRoute        (lives in routes.dart)

import 'models/book.dart';

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
  /// Expects a `ChapterArgs` instance as the route argument.
  static const String chapters = '/chapters';

  /// Scripture reading screen — displays a single chapter.
  /// Expects a `ReadingArgs` instance as the route argument.
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
