/// A USFX footnote associated with one verse in a Bible chapter.
///
/// The complete `<f>` element is retained in [rawUsfx] so later presentation
/// code can render its text and nested USFX markup without losing source data.
class Footnote {
  /// 3-letter USFX/Paratext book identifier, such as `GEN` or `JHN`.
  final String bookCode;

  /// 1-based chapter number containing this footnote.
  final int chapter;

  /// Exact USFX verse identifier, including segments or bridges such as `1a`
  /// and `1-2`.
  final String verse;

  /// Zero-based order of this footnote among footnotes associated with [verse].
  final int ordinal;

  /// Original USFX `caller` symbol, defaulting to `*` when the source does
  /// not provide a usable caller. The reader generates its own chapter labels.
  final String caller;

  /// Complete serialized `<f>` element, including its body and nested markup.
  final String rawUsfx;

  /// Creates an immutable footnote record.
  const Footnote({
    required this.bookCode,
    required this.chapter,
    required this.verse,
    required this.ordinal,
    required this.caller,
    required this.rawUsfx,
  });

  /// Creates a [Footnote] from a SQLite row.
  factory Footnote.fromMap(Map<String, dynamic> map) {
    return Footnote(
      bookCode: map['book_code'] as String,
      chapter: map['chapter'] as int,
      verse: map['verse'] as String,
      ordinal: map['ordinal'] as int,
      caller: map['caller'] as String,
      rawUsfx: map['raw_usfx'] as String,
    );
  }

  /// Converts this footnote to the column names used by the SQLite schema.
  Map<String, dynamic> toMap() {
    return {
      'book_code': bookCode,
      'chapter': chapter,
      'verse': verse,
      'ordinal': ordinal,
      'caller': caller,
      'raw_usfx': rawUsfx,
    };
  }

  @override
  String toString() =>
      'Footnote($bookCode $chapter:$verse #${ordinal + 1} $caller)';
}

/// Converts a zero-based chapter-wide footnote index to A, B, ..., Z, AA, AB.
///
/// The sequence continues without repeating labels in note-heavy chapters.
String footnoteLabelForIndex(int index) {
  RangeError.checkNotNegative(index, 'index');
  var remaining = index;
  final letters = <String>[];
  do {
    letters.add(String.fromCharCode(65 + remaining % 26));
    remaining = remaining ~/ 26 - 1;
  } while (remaining >= 0);
  return letters.reversed.join();
}
