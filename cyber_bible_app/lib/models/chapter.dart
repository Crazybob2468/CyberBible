/// A chapter of a biblical book.
///
/// Each row in the `chapters` table maps to one [Chapter].
/// The [contentUsfx] field stores the raw USFX XML fragment for the chapter,
/// which is converted to HTML at display time by the renderer service.
class Chapter {
  /// 3-letter book code (FK to [Book.code]).
  final String bookCode;

  /// Chapter number (1-based).
  final int number;

  /// Raw USFX XML fragment for this chapter's content.
  ///
  /// Contains all verse text, formatting markup, footnotes, cross-references,
  /// Strong's numbers, etc. Converted to HTML at display time so that user
  /// preferences (red letters, verse numbers, etc.) can be applied dynamically.
  final String contentUsfx;

  const Chapter({
    required this.bookCode,
    required this.number,
    required this.contentUsfx,
  });

  /// Create from a SQLite row map.
  factory Chapter.fromMap(Map<String, dynamic> map) {
    return Chapter(
      bookCode: map['book_code'] as String,
      number: map['number'] as int,
      contentUsfx: map['content_usfx'] as String,
    );
  }

  /// Convert to a SQLite row map.
  Map<String, dynamic> toMap() {
    return {
      'book_code': bookCode,
      'number': number,
      'content_usfx': contentUsfx,
    };
  }

  @override
  String toString() => 'Chapter($bookCode $number)';
}
