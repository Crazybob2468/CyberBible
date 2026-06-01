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

  /// Settings screen — font size, verse format, display toggles, theme nav.
  static const String settings = '/settings';

  /// Theme selection screen — full-page theme picker with custom painters.
  static const String themeSelection = '/theme';
}

// ---------------------------------------------------------------------------
// Route argument classes
// ---------------------------------------------------------------------------

/// Arguments passed to [AppRoutes.bookSelect].
///
/// All fields are optional — callers that just want the default (Traditional
/// tab) can use [Navigator.pushNamed] without any arguments.
class BookSelectArgs {
  /// The tab index to show on entry.
  ///
  /// Tab indices correspond to [BookSelectionScreen]'s `TabController`:
  ///   0 — Traditional (canonical order, default)
  ///   1 — Alphabetical
  ///   2 — Bookmarks
  ///
  /// Out-of-range values are clamped to 0 by [BookSelectionScreen].
  final int initialTab;

  const BookSelectArgs({this.initialTab = 0});
}

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
/// Contains the [Book], the chapter number to display, and an optional
/// [initialVerse] to scroll to immediately after the chapter loads.
/// [initialVerse] is used when navigating from the Bookmarks tab so the
/// reading screen can jump directly to the saved verse.
class ReadingArgs {
  /// The book being read.
  final Book book;

  /// The 1-based chapter number to display.
  final int chapter;

  /// Optional verse ID string to scroll to on load (e.g. `'3'` for verse 3).
  ///
  /// When provided, the reading screen will scroll so that the target verse
  /// is visible immediately after rendering.  `null` means no automatic scroll
  /// (normal chapter-level navigation).
  final String? initialVerse;

  const ReadingArgs({required this.book, required this.chapter, this.initialVerse});
}
