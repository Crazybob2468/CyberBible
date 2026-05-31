/// Data model for a saved scripture bookmark.
///
/// A [Bookmark] records a precise Bible location (book, chapter, verse) plus
/// metadata that supports the bookmarks-list UI without extra queries:
///
///   - [verseText]  — plain-text snapshot captured at creation time so the
///     list screen can show a preview without re-opening the Bible DB.
///   - [label]      — optional user-written title (e.g. "Sunday sermon").
///   - [createdAt]  — creation timestamp used for the default sort order.
///
/// ## Verse range support (Phase 8)
///
/// [verseEnd] is nullable and is always `null` in Phase 1. It is reserved for
/// Phase 8 highlights and notes, which may reference a contiguous verse range.
/// The column is included in the schema now to avoid a migration later.
///
/// ## Persistence
///
/// Bookmarks are stored in the `bookmarks` table of `user_data.db`, a separate
/// SQLite file managed by [UserDataService]. The [id] field is `null` until
/// after the first INSERT; [UserDataService.addBookmark] returns the assigned
/// integer id.
///
/// ## Sort order
///
/// Use [BookmarkSortOrder] to control the query order returned by
/// [UserDataService.getBookmarks].
library;

// No external Flutter dependencies — this file is a pure-Dart data class.

// ---------------------------------------------------------------------------
// Sort order enum
// ---------------------------------------------------------------------------

/// Controls the order in which [UserDataService.getBookmarks] returns results.
///
/// [recentFirst] — most recently saved bookmark appears first. This is the
/// default, matching the user's last-touched-is-most-relevant mental model.
///
/// [canonicalOrder] — biblical reading order, Genesis through Revelation
/// (sorted by book sort position, then chapter, then verse). Useful for
/// browsing saved verses as they appear in the text.
enum BookmarkSortOrder {
  /// Most recently added first. Sorted by [Bookmark.createdAt] descending.
  recentFirst,

  /// Genesis → Revelation order. Sorted by [Bookmark.bookSortOrder] ascending,
  /// then [Bookmark.chapter] ascending, then [Bookmark.verse] ascending.
  canonicalOrder,
}

// ---------------------------------------------------------------------------
// Bookmark model
// ---------------------------------------------------------------------------

/// An immutable saved scripture reference.
///
/// Use [Bookmark.fromMap] to deserialise a SQLite row and [toMap] to serialise
/// for an INSERT. Use [copyWith] to produce a modified copy (e.g. when the
/// user renames a bookmark's [label]).
class Bookmark {
  // -- Location --

  /// Auto-assigned SQLite primary key. `null` before the first INSERT.
  final int? id;

  /// 3-letter USFX / Paratext book code, e.g. `"GEN"`, `"MAT"`, `"REV"`.
  ///
  /// Cross-references `books.code` in the Bible DB but is stored as a plain
  /// string here so that `user_data.db` stays self-contained.
  final String bookCode;

  /// Canonical sort position of the book (e.g. Genesis = 1, Revelation = 66).
  ///
  /// Denormalised from [Book.sortOrder] at bookmark-creation time so that
  /// [BookmarkSortOrder.canonicalOrder] queries work without a cross-database
  /// JOIN against the Bible DB.
  final int bookSortOrder;

  /// 1-based chapter number within the book.
  final int chapter;

  /// Verse identifier as stored in the Bible database.
  ///
  /// A [String] rather than an [int] to handle versification edge cases:
  ///   - Simple: `"1"`, `"16"`
  ///   - Segment: `"1a"`, `"1b"`
  ///   - Bridge:  `"1-2"` (two verses treated as one in this translation)
  final String verse;

  /// Last verse of a highlighted range (inclusive). Always `null` in Phase 1.
  ///
  /// Reserved for Phase 8 verse-range highlights and notes. The column is
  /// written to the schema now to avoid a data migration when that feature
  /// lands.
  final String? verseEnd;

  // -- UI metadata --

  /// Plain-text verse content snapshot captured at bookmark-creation time.
  ///
  /// Stored so the bookmarks list screen (Step 1.15) can show a one-line
  /// preview without querying the Bible DB. May be `null` for bookmarks added
  /// before this field was populated, or for translations that could not
  /// supply text.
  final String? verseText;

  /// Optional user-written title (e.g. `"Morning reading"`, `"Sermon verse"`).
  ///
  /// `null` until the user explicitly sets a label. The UI falls back to
  /// displaying the scripture reference when this is `null`.
  final String? label;

  /// When this bookmark was saved.
  ///
  /// Stored as Unix milliseconds (`INTEGER`) in SQLite; converted to
  /// [DateTime] by [fromMap]. Drives [BookmarkSortOrder.recentFirst] ordering.
  final DateTime createdAt;

  // -- Constructor --

  /// Creates a [Bookmark] with all required fields.
  ///
  /// Pass `id: null` (the default) when constructing a bookmark that has not
  /// yet been saved to the database.
  const Bookmark({
    this.id,
    required this.bookCode,
    required this.bookSortOrder,
    required this.chapter,
    required this.verse,
    this.verseEnd,
    this.verseText,
    this.label,
    required this.createdAt,
  });

  // -- Deserialisation --

  /// Creates a [Bookmark] from a SQLite row map as returned by sqflite.
  ///
  /// All column names match the `bookmarks` table defined in
  /// [UserDataService._createSchema]. The [createdAt] integer (Unix ms) is
  /// converted to a [DateTime].
  factory Bookmark.fromMap(Map<String, dynamic> map) {
    return Bookmark(
      id: map['id'] as int?,
      bookCode: map['book_code'] as String,
      bookSortOrder: map['book_sort_order'] as int,
      chapter: map['chapter'] as int,
      verse: map['verse'] as String,
      verseEnd: map['verse_end'] as String?,
      verseText: map['verse_text'] as String?,
      label: map['label'] as String?,
      createdAt: DateTime.fromMillisecondsSinceEpoch(
        map['created_at'] as int,
      ),
    );
  }

  // -- Serialisation --

  /// Converts this bookmark to a SQLite row map for use with [Database.insert]
  /// or [Database.update].
  ///
  /// When [id] is `null` (bookmark not yet persisted), the `'id'` key is
  /// omitted from the returned map so that SQLite AUTOINCREMENT assigns a new
  /// primary key. When [id] is non-null, it is included for UPDATE operations.
  ///
  /// [createdAt] is stored as [DateTime.millisecondsSinceEpoch] to match the
  /// `INTEGER NOT NULL` column type in the schema.
  Map<String, dynamic> toMap() {
    return {
      if (id != null) 'id': id,
      'book_code': bookCode,
      'book_sort_order': bookSortOrder,
      'chapter': chapter,
      'verse': verse,
      'verse_end': verseEnd,
      'verse_text': verseText,
      'label': label,
      'created_at': createdAt.millisecondsSinceEpoch,
    };
  }

  // -- Copy-with --

  /// Returns a copy of this bookmark with the specified fields replaced.
  ///
  /// Useful when the user edits a bookmark's [label] or when [id] is
  /// assigned after the initial INSERT.
  ///
  /// **Important — nullable fields cannot be cleared to `null` via this
  /// method.** Passing `label: null` (or any other nullable field as null)
  /// retains the existing value rather than clearing it, because the `??`
  /// operator cannot distinguish "clear to null" from "keep existing".
  /// Phase 1 has no use case that requires clearing a nullable field, but
  /// if that need arises in a future step, this method will need to be
  /// updated to use a sentinel or `Optional` wrapper.
  ///
  /// Fields not provided retain their current values.
  Bookmark copyWith({
    int? id,
    String? bookCode,
    int? bookSortOrder,
    int? chapter,
    String? verse,
    String? verseEnd,
    String? verseText,
    String? label,
    DateTime? createdAt,
  }) {
    return Bookmark(
      id: id ?? this.id,
      bookCode: bookCode ?? this.bookCode,
      bookSortOrder: bookSortOrder ?? this.bookSortOrder,
      chapter: chapter ?? this.chapter,
      verse: verse ?? this.verse,
      verseEnd: verseEnd ?? this.verseEnd,
      verseText: verseText ?? this.verseText,
      label: label ?? this.label,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  // -- Convenience getters --

  /// Short scripture reference string, e.g. `"GEN 1:1"` or `"GEN 1:1-3"`.
  ///
  /// Appends the [verseEnd] when this bookmark covers a verse range.
  String get reference {
    final base = '$bookCode $chapter:$verse';
    if (verseEnd != null) return '$base-$verseEnd';
    return base;
  }

  // -- Object overrides --

  /// Human-readable description for logging and debugging.
  @override
  String toString() => 'Bookmark($reference, id=$id)';

  /// Two bookmarks are considered equal when they share the same [id],
  /// [bookCode], [chapter], and [verse]. Content fields ([verseText], [label])
  /// are not considered for equality because they may change after creation.
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Bookmark &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          bookCode == other.bookCode &&
          chapter == other.chapter &&
          verse == other.verse;

  @override
  int get hashCode => Object.hash(id, bookCode, chapter, verse);
}
