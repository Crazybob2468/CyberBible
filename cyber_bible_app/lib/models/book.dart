/// The testament a biblical book belongs to.
enum Testament {
  /// Old Testament.
  ot,

  /// New Testament.
  nt,

  /// Deuterocanon / Apocrypha.
  dc,
}

/// A book of the Bible within a translation module.
///
/// Each row in the `books` table maps to one [Book].
/// The [code] uses the standard 3-letter USFX/Paratext identifier (e.g. "GEN", "MAT").
class Book {
  /// 3-letter USFX/Paratext book code, e.g. "GEN", "PSA", "MAT".
  final String code;

  /// Display order within the Bible (0-based).
  final int sortOrder;

  /// Short display name, e.g. "Genesis".
  final String nameShort;

  /// Full formal name, e.g. "The First Book of Moses, Commonly Called Genesis".
  final String nameLong;

  /// Abbreviation, e.g. "Gen".
  final String abbreviation;

  /// Which testament this book belongs to.
  final Testament testament;

  /// Total number of chapters in this book.
  final int chapterCount;

  const Book({
    required this.code,
    required this.sortOrder,
    required this.nameShort,
    required this.nameLong,
    required this.abbreviation,
    required this.testament,
    required this.chapterCount,
  });

  /// Create from a SQLite row map.
  factory Book.fromMap(Map<String, dynamic> map) {
    return Book(
      code: map['code'] as String,
      sortOrder: map['sort_order'] as int,
      nameShort: map['name_short'] as String,
      nameLong: map['name_long'] as String,
      abbreviation: map['abbreviation'] as String,
      testament: Testament.values.byName(map['testament'] as String),
      chapterCount: map['chapter_count'] as int,
    );
  }

  /// Convert to a SQLite row map.
  Map<String, dynamic> toMap() {
    return {
      'code': code,
      'sort_order': sortOrder,
      'name_short': nameShort,
      'name_long': nameLong,
      'abbreviation': abbreviation,
      'testament': testament.name,
      'chapter_count': chapterCount,
    };
  }

  @override
  String toString() => 'Book($code, $nameShort)';
}
