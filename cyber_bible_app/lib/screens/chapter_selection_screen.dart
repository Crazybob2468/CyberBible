// Chapter selection screen — placeholder for Step 1.9.
//
// This stub exists so that Step 1.8 routing works end-to-end:
// HomeScreen → BookSelectionScreen → ChapterSelectionScreen.
//
// The full implementation (grid of chapter numbers, tap to read) will be
// built in Step 1.9.

import 'package:flutter/material.dart';

import '../models/book.dart';

/// Placeholder chapter selection screen.
///
/// Receives a [Book] via the route arguments (see [ChapterArgs] in routes.dart)
/// and shows the book name as a title. The actual chapter grid UI is coming
/// in Step 1.9.
class ChapterSelectionScreen extends StatelessWidget {
  /// The book whose chapters will eventually be displayed.
  final Book book;

  const ChapterSelectionScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Show the book's short name as the screen title.
        title: Text(book.nameShort),
      ),
      body: const Center(
        child: Text(
          'Chapter selection coming in Step 1.9',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ),
    );
  }
}
