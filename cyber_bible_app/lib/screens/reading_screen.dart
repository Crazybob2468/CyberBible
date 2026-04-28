// Scripture reading screen — placeholder for Step 1.10.
//
// This stub exists so that Step 1.8 routing works end-to-end:
// HomeScreen → BookSelectionScreen → ChapterSelectionScreen → ReadingScreen.
//
// The full implementation (formatted chapter text, scroll, verse numbers)
// will be built in Step 1.10.

import 'package:flutter/material.dart';

import '../models/book.dart';

/// Placeholder scripture reading screen.
///
/// Receives a [Book] and a chapter number via the route arguments
/// (see [ReadingArgs] in routes.dart). The actual formatted reading UI
/// is coming in Step 1.10.
class ReadingScreen extends StatelessWidget {
  /// The book being read.
  final Book book;

  /// The 1-based chapter number to display.
  final int chapter;

  const ReadingScreen({super.key, required this.book, required this.chapter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Show "Book Name — Chapter N" as the title.
        title: Text('${book.nameShort} — Chapter $chapter'),
      ),
      body: const Center(
        child: Text(
          'Scripture reading coming in Step 1.10',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ),
    );
  }
}
