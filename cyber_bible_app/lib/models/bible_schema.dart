/// SQLite schema definitions for Bible module databases.
///
/// Each Bible translation is stored in its own SQLite database file.
/// These SQL statements create the required tables and indexes.
class BibleSchema {
  BibleSchema._();

  /// Current schema version. Increment when making breaking changes.
  static const int version = 1;

  /// SQL to create all tables for a Bible module database.
  static const List<String> createStatements = [
    // Translation metadata (single row per database).
    '''
    CREATE TABLE IF NOT EXISTS bible_info (
      id              TEXT PRIMARY KEY,
      name            TEXT NOT NULL,
      name_local      TEXT NOT NULL,
      abbreviation    TEXT NOT NULL,
      description     TEXT NOT NULL DEFAULT '',
      language_code   TEXT NOT NULL,
      language_name   TEXT NOT NULL,
      script          TEXT NOT NULL DEFAULT 'Latin',
      script_direction TEXT NOT NULL DEFAULT 'LTR'
                        CHECK (script_direction IN ('LTR', 'RTL')),
      country_code    TEXT NOT NULL DEFAULT '',
      scope           TEXT NOT NULL DEFAULT '',
      copyright       TEXT NOT NULL DEFAULT ''
    )
    ''',

    // Books of the Bible with display names and ordering.
    '''
    CREATE TABLE IF NOT EXISTS books (
      code          TEXT PRIMARY KEY,
      sort_order    INTEGER NOT NULL UNIQUE,
      name_short    TEXT NOT NULL,
      name_long     TEXT NOT NULL,
      abbreviation  TEXT NOT NULL,
      testament     TEXT NOT NULL CHECK (testament IN ('ot', 'nt', 'dc')),
      chapter_count INTEGER NOT NULL
    )
    ''',

    // Chapter content stored as raw USFX XML fragments.
    // Converted to HTML at display time by the renderer.
    '''
    CREATE TABLE IF NOT EXISTS chapters (
      book_code     TEXT NOT NULL REFERENCES books(code),
      number        INTEGER NOT NULL,
      content_usfx  TEXT NOT NULL,
      PRIMARY KEY (book_code, number)
    )
    ''',

    // Individual verses with plain text for search.
    '''
    CREATE TABLE IF NOT EXISTS verses (
      book_code TEXT NOT NULL REFERENCES books(code),
      chapter   INTEGER NOT NULL,
      verse     TEXT NOT NULL,
      text_plain TEXT NOT NULL,
      PRIMARY KEY (book_code, chapter, verse)
    )
    ''',

    // Full-text search index on verse plain text.
    '''
    CREATE VIRTUAL TABLE IF NOT EXISTS verses_fts USING fts5(
      text_plain,
      content='verses',
      content_rowid='rowid'
    )
    ''',
  ];

  /// SQL to populate the FTS index after verses are inserted.
  static const String rebuildFts =
      "INSERT INTO verses_fts(verses_fts) VALUES('rebuild')";

  /// Indexes for common query patterns.
  static const List<String> createIndexes = [
    'CREATE INDEX IF NOT EXISTS idx_books_sort ON books(sort_order)',
  ];
}
