// Home screen — the landing screen users see when Cyber Bible launches.
//
// Responsibilities:
//   1. Open the Bible database (BibleService.ensureOpen) while showing a
//      "Loading Cyber Bible..." indicator — the database is already on disk
//      thanks to BibleSetupService running in main(), so this is fast on
//      native platforms. On the web it may take a second or two on the very
//      first visit while the DB is seeded into IndexedDB.
//   2. Once ready, show the Cyber Bible branding and a "Read the Bible"
//      button that navigates to the book-selection screen.
//   3. If opening the database fails, show an error message with a Retry
//      button so the user is not left on a blank screen.

import 'package:flutter/material.dart';

import '../routes.dart';
import '../services/bible_service.dart';

/// The home / landing screen of Cyber Bible.
///
/// This is a [StatefulWidget] because it drives async database initialization.
/// The three possible states are:
///   - Loading: [BibleService.ensureOpen] is in progress.
///   - Error:   [BibleService.ensureOpen] threw an exception.
///   - Ready:   Database is open; show branding + "Read the Bible" button.
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ---- State ----

  /// True while [BibleService.ensureOpen] is in progress.
  bool _loading = true;

  /// Non-null when [BibleService.ensureOpen] threw an error.
  String? _errorMessage;

  // ---- Lifecycle ----

  @override
  void initState() {
    super.initState();
    _openDatabase();
  }

  // ---- Database initialization ----

  /// Calls [BibleService.ensureOpen] and updates the UI state accordingly.
  ///
  /// On success, [_loading] is set to false and the ready state is shown.
  /// On failure, [_errorMessage] is set so a Retry button is shown.
  Future<void> _openDatabase() async {
    // Reset to loading state before each attempt (handles Retry taps).
    setState(() {
      _loading = true;
      _errorMessage = null;
    });

    try {
      await BibleService.ensureOpen();
      if (mounted) {
        setState(() => _loading = false);
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _loading = false;
          _errorMessage = 'Could not open the Bible database: $e';
        });
      }
    }
  }

  // ---- Build ----

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cyber Bible'),
      ),
      body: _buildBody(),
    );
  }

  /// Returns the appropriate body widget for the current state.
  Widget _buildBody() {
    if (_loading) {
      return _buildLoadingState();
    }
    if (_errorMessage != null) {
      return _buildErrorState();
    }
    return _buildReadyState();
  }

  // ---- Loading state ----

  /// Spinner shown while the database is being opened.
  Widget _buildLoadingState() {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircularProgressIndicator(),
          SizedBox(height: 24),
          Text(
            'Loading Cyber Bible...',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  // ---- Error state ----

  /// Error message + Retry button shown when the database open fails.
  Widget _buildErrorState() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.error_outline, size: 48, color: Colors.red),
            const SizedBox(height: 16),
            Text(
              _errorMessage!,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: _openDatabase,
              icon: const Icon(Icons.refresh),
              label: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }

  // ---- Ready state ----

  /// Branding + "Read the Bible" button shown when the database is open.
  Widget _buildReadyState() {
    final colorScheme = Theme.of(context).colorScheme;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // App icon.
          Icon(
            Icons.menu_book,
            size: 80,
            color: colorScheme.primary,
          ),
          const SizedBox(height: 24),

          // App title.
          const Text(
            'Cyber Bible',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),

          // Tagline.
          const Text(
            'A free and open source Bible study app',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          const SizedBox(height: 48),

          // Primary call-to-action — navigate to book selection.
          FilledButton.icon(
            onPressed: () =>
                Navigator.pushNamed(context, AppRoutes.bookSelect),
            icon: const Icon(Icons.library_books),
            label: const Text(
              'Read the Bible',
              style: TextStyle(fontSize: 18),
            ),
            style: FilledButton.styleFrom(
              // Make the button comfortably large to tap.
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            ),
          ),
        ],
      ),
    );
  }
}
