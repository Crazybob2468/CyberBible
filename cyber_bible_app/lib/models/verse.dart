/// A single verse of Bible text, used for search indexing and navigation.
///
/// Each row in the `verses` table maps to one [Verse].
/// The [textPlain] field contains stripped plain text (no markup, footnotes,
/// or formatting) used for full-text search via FTS5.
class Verse {
  /// 3-letter book code (FK to [Book.code]).
  final String bookCode;

  /// Chapter number (1-based).
  final int chapter;

  /// Verse identifier as a string.
  ///
  /// Stored as String to handle real-world versification:
  /// - Simple: "1", "2", "31"
  /// - Segments: "1a", "1b" (e.g. some Deuterocanon texts)
  /// - Bridges: "1-2" (two source verses merged into one)
  /// - Letters: "38a" (e.g. Isaiah 38)
  final String verse;

  /// Plain text content with all markup stripped.
  ///
  /// Used for full-text search (FTS5). Does not include footnotes,
  /// cross-references, section headings, or formatting.
  final String textPlain;

  const Verse({
    required this.bookCode,
    required this.chapter,
    required this.verse,
    required this.textPlain,
  });

  /// Create from a SQLite row map.
  factory Verse.fromMap(Map<String, dynamic> map) {
    return Verse(
      bookCode: map['book_code'] as String,
      chapter: map['chapter'] as int,
      verse: map['verse'] as String,
      textPlain: map['text_plain'] as String,
    );
  }

  /// Convert to a SQLite row map.
  Map<String, dynamic> toMap() {
    return {
      'book_code': bookCode,
      'chapter': chapter,
      'verse': verse,
      'text_plain': textPlain,
    };
  }

  /// Standard book-chapter-verse reference string, e.g. "GEN.1.1".
  String get reference => '$bookCode.$chapter.$verse';

  @override
  String toString() => 'Verse($reference)';
}
