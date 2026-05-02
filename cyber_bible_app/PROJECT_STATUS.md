# Cyber Bible — Project Status & Roadmap

> **AI agents and new developers: start here.** This file contains the full project
> context, architecture decisions, current progress, and step-by-step roadmap.
> For the public-facing project overview, see the root [README.md](../README.md).
> For the complete design vision, see [docs/design-document.md](docs/design-document.md).
>
> **Step completion checklist:** After every step (1.1, 1.2, etc.), work through the
> full checklist defined in [../.github/copilot-instructions.md](../.github/copilot-instructions.md).
> Do not start the next step until all items are confirmed.

A free/libre and open source software (FLOSS) Bible study app built with Flutter & Dart.  
Licensed under **GPL 3.0**. Cross-platform: Android, iOS, Windows, macOS, Linux, and Web.

---

## Project Overview

Cyber Bible aims to be a high-quality, privacy-respecting Bible study app that can display and play any of the 1,535+ Bible translations available on [eBible.org](https://ebible.org). It prioritizes offline use, attractive text formatting, easy navigation, and support for every real-world Bible versification scheme and Unicode writing system.

**Key differentiators from existing apps:**
- Fully open source (GPL 3.0) — not just free-as-in-beer
- Privacy-first: no user tracking, personal data stays on user's device/cloud
- Supports any Bible versification (no force-fitting into a few schemes)
- Sources Bibles directly from eBible.org (USFX format)
- Cross-platform from a single Flutter codebase

## Tech Stack

| Component | Technology |
|-----------|-----------|
| Framework | Flutter (Dart) |
| Bible data format | USFX (XML) from eBible.org |
| Local storage | SQLite (via `sqflite` / `drift`) |
| Bible text display | USFX → HTML at runtime (via `flutter_widget_from_html` or WebView) |
| USFX parsing (build-time) | `package:xml` |
| State management | TBD (likely Provider or Riverpod) |
| Internationalization | Flutter l10n (ARB files) |
| Audio playback | TBD (for Phase 5) |

## Bible Data Pipeline

```
eBible.org
  └── usfx.xml + metadata.xml (per translation)
        └── Parse & index → SQLite database (one DB per Bible module)
              └── App reads SQLite → USFX rendered to HTML at runtime → displays in Flutter
```

Chapters are stored as raw USFX XML fragments in SQLite so the app can apply user
preferences (red letters, verse numbers, footnotes, section headings) dynamically
without re-downloading or re-processing. The entire reading experience works fully
offline — no network calls after the Bible module is downloaded.

The **World English Bible (WEB)** will be the first and default bundled translation.

## Project Structure (Planned)

```
cyber_bible_app/
├── docs/                     # Design documents and references
│   └── design-document.md    # Full design document (from original PDF)
├── lib/
│   ├── main.dart             # App entry point
│   ├── app.dart              # MaterialApp setup, routing, theme
│   ├── models/               # Data classes (Bible, Book, Chapter, Verse, Bookmark, etc.)
│   ├── services/             # Business logic (Bible parsing, DB access, search)
│   ├── screens/              # Full-page UI screens
│   ├── widgets/              # Reusable UI components
│   └── l10n/                 # Localization (ARB files for UI translations)
├── assets/
│   └── bibles/               # Bundled Bible data (WEB)
├── tools/                    # Offline scripts (USFX parser, DB builder, etc.)
├── test/                     # Unit and widget tests
├── android/                  # Android platform code
├── ios/                      # iOS platform code
├── windows/                  # Windows platform code
├── macos/                    # macOS platform code
├── linux/                    # Linux platform code
└── web/                      # Web platform code
```

## Current Status

**Phase 1 — Step 1.11 Complete: Basic text formatting**

Step 1.11 ✅ COMPLETE. Replaced plain-text verse rendering with a full USFX → HTML pipeline using `flutter_widget_from_html`. Reading screen now shows formatted Bible text: paragraphs, poetry indentation, section headings, Psalm superscriptions, verse number superscripts, words of Jesus in red, and footnote markers.

Step 1.11 implementation:
- **New package**: `flutter_widget_from_html: ^0.17.2` added (renders HTML as native Flutter widgets — no WebView, no platform overhead).
- **New utility**: `lib/utils/usfx_renderer.dart` — pure-Dart USFX XML → HTML converter. Entry point: `renderChapterToHtml(usfxFragment, {bodyColorCss, verseNumColorCss, headingColorCss, dHeadingColorCss, footnoteColorCss, baseFontSizePx})`. Returns a complete self-contained `<!DOCTYPE html>` document. Handles all USFX elements encountered in the WEB database:
  - `<p style="p">` — normal paragraph
  - `<p sfm="m" style="m">` — continuation paragraph (no indent)
  - `<p sfm="pi" style="pi1/pi2">` — indented paragraphs
  - `<p sfm="ms" style="ms1">` — major section heading (bold, centered)
  - `<q style="q1/q2/q3">` — poetry lines (1.5/3.0/4.5 em indent)
  - `<s style="s1">` — section headings (italic, centered, de-emphasised)
  - `<d style="d">` — Psalm superscription (italic, de-emphasised)
  - `<v id="N">` — verse start milestone → inline `<sup class="vn">N</sup>`
  - `<ve/>` — verse end milestone (no output)
  - `<wj>` — words of Jesus → `<span class="wj">` (red `#e53935`, always on)
  - `<f>` — footnote → `<sup class="fn">[†]</sup>` superscript marker (not tappable — Step 2.1)
  - `<w s="...">` — Strong's words → strip tag, keep text (linking in Phase 4)
  - `<add>` — supplied text → `<em class="add">` (defensive, rare in WEB)
  - `<nd>` — divine names → `<span class="nd">` with `font-variant: small-caps` (defensive, rare in WEB)
- **Updated `ReadingScreen`**: `_loadVerses()` + `BibleService.getVerses()` replaced by `_loadChapter()` + `BibleService.getChapter()`. `_buildVerseList()` and `_VerseItem` (both marked TEMPORARY since Step 1.10) replaced by `_buildHtmlContent()` which calls `renderChapterToHtml()` and renders via `HtmlWidget`.
- `_colorToCss()` helper converts Flutter `Color` → CSS `#rrggbb` / `rgba(r,g,b,a)` so callers can pass `ColorScheme.*` values without the renderer depending on `package:flutter`.
- All CSS colours sourced from `ColorScheme` — text, verse numbers, headings, and footnote markers adapt automatically to light/dark mode and the Step 1.16 accent colour picker.
- **Section heading toggle**: headings (`<s>`, `<ms>`) are always shown in this step. A user toggle ("Show section headings") is deferred to the settings screen (Step 1.16).
- **Words of Jesus toggle**: always red in this step. The "Words of Christ colour" toggle (red vs. default text colour) is deferred to Step 1.16 settings.
- **Footnote interactivity**: superscript marker only. Tappable footnote popups are Step 2.1.

**Tests (Step 1.11):**
- New `test/utils/usfx_renderer_test.dart` — 33 unit tests covering every USFX element type, HTML escaping, empty input, multi-block chapters, and colour/font passthrough.
- All 103 tests pass (`flutter test`): 70 pre-existing + 33 new renderer tests.
- `flutter analyze lib/ test/` → No issues.

**Architecture decision recorded — colour passthrough pattern:**
`renderChapterToHtml` takes CSS color strings (not `Color` objects) so it has no dependency on `package:flutter`. The call site in `ReadingScreen._buildHtmlContent()` converts `Color` → CSS via `_colorToCss()`. This keeps the renderer a pure-Dart utility (usable in build tools or tests without Flutter).

Next: Step 1.12 — Verse navigation. Add ability to jump to a specific verse within a chapter (scroll to verse). Add a quick-nav control (book > chapter > verse).

Step 1.10 ✅ COMPLETE. Scripture reading screen — collapsible header + scrollable plain-text verse list with inline verse numbers.

Step 1.10 implementation:
- Replaced the `ReadingScreen` placeholder stub with a full `StatefulWidget` implementation.
- **Header**: `SliverAppBar` with `expandedHeight: 200` (taller than Step 1.9 to fit three lines). Expanded state shows the testament label (small caps, de-emphasised), the book name (32px, w800), and "Chapter N" (18px, w600) — all in `onPrimaryContainer` on a `primaryContainer` background. Collapses to a compact AppBar showing "{nameShort} {chapter}" (e.g. "Genesis 1") as the title.
- **Verse list**: `SliverList` of `_VerseItem` widgets. Each item is a `Row(crossAxisAlignment: CrossAxisAlignment.start)` with a verse number `Text` (11px, w700, `primary` color) and an `Expanded` verse text `Text` (17px, w400, 1.65 line height). The `Row` is wrapped in `Semantics(label: 'Verse N: ...')` + `ExcludeSemantics` so screen readers announce each verse as one coherent unit rather than two separate nodes. Side padding 16px, bottom padding 48px.
- **Empty state**: graceful fallback message for chapters with no indexed verse rows (rare in partial translations).
- **Loading state**: centred `CircularProgressIndicator` while verses are fetched.
- **Error state**: error icon + user-friendly message + `FilledButton` Retry; raw exception logged via `debugPrint` under `kDebugMode` only.
- `BibleService.ensureOpen()` called before `getVerses()` — defence-in-depth guard for any in-app navigation path that bypasses `HomeScreen`. Note: a raw browser refresh on `/read` redirects to `HomeScreen` via `onGenerateRoute` (the `ReadingArgs` type guard in `routes.dart` redirects when args are absent), so this is not a web deep-link fix.
- `_isCollapsed` scroll tracking (same pattern as `ChapterSelectionScreen`) prevents the book name appearing in both the toolbar and the expanded header simultaneously.
- `Testament.label` used for the testament label text — the single source of truth in `lib/models/book.dart`.
- All colours use `ColorScheme.*` — adapts to light/dark mode and Step 1.16 accent colour picker automatically.

**Plain text is intentional for Step 1.10 — formatting comes in Step 1.11:**
The screen uses `BibleService.getVerses()` (plain text from the `verses` table) rather than the raw USFX XML in the `chapters` table. This is a deliberate scope boundary: Step 1.10 completes end-to-end navigation; Step 1.11 adds proper text formatting. Both `reading_screen.dart` (top-of-file comment block + `_buildVerseList()` / `_VerseItem` inline TODOs) document exactly what Step 1.11 must do:
  1. Switch to `BibleService.getChapter()` for the raw USFX XML.
  2. Write a `lib/utils/usfx_renderer.dart` USFX → HTML converter covering paragraphs, poetry, section headings, verse numbers, words of Jesus, footnote markers, supplied-text italics, divine names small caps.
  3. Replace the `SliverList` with a `flutter_widget_from_html` or WebView HTML widget.
  4. Delete `_buildVerseList()` and `_VerseItem`.

**Tests (Step 1.10):**
- **New pure Dart logic**: none — the screen is pure UI over existing `BibleService` and `Verse` model, both already tested.
- **Deferred widget tests:** Widget tests for `ReadingScreen` (loading/error/verse-list/empty states) deferred to the integration-test scaffold step along with other deferred UI tests.

`flutter analyze lib/ test/` → No issues. `flutter test` → 70 passed.

Next: Step 1.11 — Basic text formatting. Replace plain-text verse rendering with a proper USFX → HTML converter and an HTML display widget. See the top-of-file comment in `lib/screens/reading_screen.dart` for the exact migration plan.

Step 1.9 ✅ MERGED (PR #11). Chapter selection screen with collapsible header + 4-column chapter grid.
Step 1.6 ✅ MERGED. `BibleSetupService` (DB copy on first launch), startup wiring, and unit tests.
Step 1.7 ✅ COMPLETE. `BibleService` reads books, chapters, and verses from the SQLite DB, with full Flutter Web support (IndexedDB-backed SQLite persistence via `sqflite_common_ffi_web`).
Step 1.8 ✅ MERGED. Book selection screen with Traditional/Alphabetical tabs. Full named-route architecture wired up.
Step 1.9 ✅ COMPLETE. Chapter selection screen — collapsible header + 4-column chapter grid.

Step 1.9 implementation:
- Replaced the `ChapterSelectionScreen` stub with a full `StatefulWidget` implementation.
- **Header**: `SliverAppBar` with a large collapsible header (`expandedHeight: 160`). Expanded state shows the testament label (Old Testament / New Testament / Deuterocanon / Apocrypha) in small caps above the book name in large bold text — both in `onPrimaryContainer` on a `primaryContainer` background. Collapses to a compact AppBar showing the book short name as the title.
- **Chapter grid**: `SliverGrid` with 4 fixed columns. Each tile is a `_ChapterTile` — rounded-square `Material` widget (`borderRadius: 14`) with `primaryContainer` background, `InkWell` ripple, and the chapter number in `w700` `onPrimaryContainer` text.
- **Loading state**: centred `CircularProgressIndicator` while chapters are fetched.
- **Error state**: error icon + user-friendly message + `FilledButton` Retry (raw exception logged via `debugPrint` under `kDebugMode` only).
- `BibleService.ensureOpen()` called before `getChapters()` — web deep-link / browser-refresh safety, consistent with `BookSelectionScreen`.
- `Testament.label` getter (see `lib/models/book.dart`) used for testament display strings — replaced by the PR #11 refactor described below.
- All colours use `ColorScheme.*` — adapts to light/dark mode and Step 1.16 accent colour picker automatically.
- **Theme seed updated** (`lib/app.dart`): seed changed from calm blue (`0xFF2E5A88`) to forest green (`0xFF2D6A4F`) to harmonise with the home screen's fixed brand gradient. Light/dark system-mode response unchanged. Step 1.16 will let users override this seed via the settings screen.

**Tests (Step 1.9):**
- **New pure Dart logic added**: `Testament.label` getter in `lib/models/book.dart` — single source of truth for testament display strings.
- **Unit tests written**: 4 new tests added to `test/models/models_test.dart` in a `Testament.label` group (ot/nt/dc correct strings + non-empty guard for all values).
- **Deferred widget tests:** Widget tests for `ChapterSelectionScreen` (loading/error/grid states) deferred to the integration-test scaffold step along with other deferred UI tests.

- **PR #11 review fixes**:
  - `Testament.label` getter added to `lib/models/book.dart` — single source of truth for "Old Testament" / "New Testament" / "Deuterocanon / Apocrypha" strings. Both `BookSelectionScreen` (removed `_labelOT`/`_labelNT`/`_labelDC` constants) and `ChapterSelectionScreen` (removed `_testamentLabel()` helper) now call `testament.label`.
  - `_isCollapsed` scroll tracking added to `ChapterSelectionScreen`: `ScrollController` listener hides the toolbar title when the expanded header is visible, preventing the book name from appearing twice.
  - `_ChapterTile` wrapped in `Semantics(label: 'Chapter N', button: true)` with `ExcludeSemantics` on the inner `Text` — screen readers now announce "Chapter 1" instead of bare "1".
  - 4 unit tests added for `Testament.label` in `test/models/models_test.dart`.

`flutter analyze lib/ test/` → No issues. `flutter test` → 70 passed.

Next: Step 1.10 — Scripture reading screen (display a full chapter of formatted Bible text with book name + chapter number header and scrolling). `ReadingScreen` is currently a placeholder stub.

Step 1.8 implementation:
- Added `lib/app_routes.dart` — `AppRoutes` constants (`/`, `/books`, `/chapters`, `/read`), `ChapterArgs` and `ReadingArgs` argument classes. Added `lib/routes.dart` — `onGenerateRoute()` function only; re-exports `app_routes.dart` so callers that import `routes.dart` get the constants for free. Screens import `app_routes.dart` directly to avoid a circular import chain.
- Added `lib/screens/book_selection_screen.dart` — `StatefulWidget` that calls `BibleService.getBooks()` on mount. Two tabs:
  - **Traditional**: books in canonical `sortOrder` under styled section headers (4 px left accent bar in `primary`, `primaryContainer` tinted background, icon, ALL-CAPS bold label). Each header: OT (`history_edu`), NT (`auto_stories`), DC (`library_books`, only if present). Each book tile has a rounded abbreviation badge (`primaryContainer`), `w500` title, compact chapter count + chevron. Thin indented `Divider` between tiles within each group.
  - **Alphabetical**: all books sorted by `nameShort`; letter-group headers (in `primary` color) inserted between groups like a contacts app. Same tile style as Traditional.
  - Loading spinner while books are fetched; error message + Retry button if the fetch fails.
  - All colors use `ColorScheme.*` — adapts to light/dark mode and future Step 1.16 accent color changes automatically.
- Added `lib/screens/chapter_selection_screen.dart` — placeholder stub for Step 1.9. Accepts a `Book` argument and shows the book name as the title.
- Added `lib/screens/reading_screen.dart` — placeholder stub for Step 1.10. Accepts a `Book` + chapter number and shows them as the title.
- Updated `lib/app.dart` — replaced `home: const HomeScreen()` with `initialRoute: AppRoutes.home` + `onGenerateRoute: onGenerateRoute`.
- Updated `lib/screens/home_screen.dart` — converted from `StatelessWidget` to `StatefulWidget`. Calls `BibleService.ensureOpen()` in `initState`. Three UI states: loading ("Loading Cyber Bible..." + gold-tinted spinner on dark green gradient), error (frosted-glass card + Retry), ready (branded full-bleed dark-forest-green + gold gradient; glowing gold-bordered book icon; "Cyber" white + "Bible" gold display title; Genesis 1:1 verse in frosted-glass card; gold gradient "Read the Bible" `_GoldButton`). Home screen uses fixed brand colors — not affected by system dark/light mode. All inner screens continue to follow the system theme. Status bar icons forced light so they contrast with the dark background.

**PR #10 review fixes (second pass):**
- `lib/screens/book_selection_screen.dart` — added `await BibleService.ensureOpen()` at the start of `_loadBooks()` so navigating directly to `/books` (Flutter Web refresh or deep link) opens the DB before querying, instead of throwing an unrecoverable `StateError`.
- `lib/screens/home_screen.dart` + `book_selection_screen.dart` — replaced raw `$e` in user-facing error strings with friendly messages ("Could not open the Bible database. Please try again." / "Could not load the books list. Please try again."). Raw exception details are now logged via `debugPrint` under `kDebugMode` only, keeping internal paths and SQL out of production UI.
- `lib/screens/book_selection_screen.dart` — removed trailing whitespace after `...[` in `_SectionHeader` widget.
- Added `import 'package:flutter/foundation.dart'` to both screen files for `kDebugMode` / `debugPrint`.

**PR #10 review fixes (third pass):**
- Created `lib/app_routes.dart` — extracted `AppRoutes`, `ChapterArgs`, and `ReadingArgs` from `routes.dart` into a standalone file. Screens import `app_routes.dart` directly; `routes.dart` re-exports it and contains only `onGenerateRoute`. This eliminates the circular import chain (screens → routes.dart → screens).
- `lib/routes.dart` — fallback `MaterialPageRoute` for missing `/chapters` and `/read` arguments now uses `const RouteSettings(name: AppRoutes.home)` so the browser URL and Navigator history match the `HomeScreen` that is actually displayed.
- `lib/screens/home_screen.dart` — `_GoldButton` docstring corrected from "full-width CTA style" to "larger CTA styling" (widget uses `mainAxisSize.min`, never expands to fill width).
- `lib/screens/chapter_selection_screen.dart` + `reading_screen.dart` — replaced unresolvable dartdoc bracket links (`[ChapterArgs]`, `[ReadingArgs]`) with backtick references to avoid `comment_references` lint warnings.
- `lib/screens/home_screen.dart` + `book_selection_screen.dart` — updated imports from `routes.dart` to `app_routes.dart`.

**Tests (Step 1.8):**
- This is a UI-only step. No new pure Dart logic was added (all data access goes through the already-tested `BibleService`).
- **Deferred widget tests:** Widget tests for `BookSelectionScreen`, `HomeScreen` (loading/error/ready states), `ChapterSelectionScreen`, and `ReadingScreen` are deferred to the integration-test scaffold step. Will be added then.

`flutter analyze lib/ test/` → No issues. `flutter test` → 66 passed.

Step 1.7 implementation:
- Added `sqflite_common_ffi_web: ^1.0.2` (resolves to 1.1.1), `sqflite_common: ^2.5.6+1`, as direct `dependencies`.
- Moved `sqlite3` back to `dev_dependencies` (no longer directly imported at runtime — `sqflite_common_ffi_web` loads its own WASM build of sqlite3 separately).
- Removed `typed_data` from direct dependencies (was only needed for the now-replaced in-memory VFS approach).
- Ran `dart run sqflite_common_ffi_web:setup` to copy `web/sqlite3.wasm` (730 KB) and `web/sqflite_sw.js` (253 KB) into the `web/` folder. `sqlite3.wasm` is required; `sqflite_sw.js` is generated but not used by the no-worker factory variant.
- Created `lib/services/bible_service.dart` — platform-neutral static class with lazy singleton `Database` and the following public API:
  - `ensureOpen()` — opens the DB once, concurrent-safe via `_openFuture ??= _doOpen().whenComplete(...)` guard. If the open fails, `_openFuture` is reset to `null` so callers can retry. (native: reads on-disk path from `BibleSetupService.dbPath`; web: seeds IndexedDB on first load, opens from there on subsequent loads)
  - `getBibleInfo()` → `Future<BibleInfo?>` — metadata row from `bible_info` table
  - `getBooks()` → `Future<List<Book>>` — all books in canonical order
  - `getChapters(bookCode)` → `Future<List<int>>` — sorted list of chapter numbers for a book
  - `getChapter(bookCode, chapterNumber)` → `Future<Chapter?>` — full chapter record (includes raw USFX XML)
  - `getVerses(bookCode, chapterNumber)` → `Future<List<Verse>>` — verses in canonical order (`ORDER BY rowid ASC`)
- Created `lib/services/bible_service_web.dart` — web implementation: sets `databaseFactory = databaseFactoryFfiWebNoWebWorker` (IndexedDB-backed), checks `databaseExists`, writes asset bytes via `writeDatabaseBytes` on first load, then opens read-only. The IndexedDB key is `p.basename(assetPath)` (e.g. `'eng-web.db'`), derived at call time so different Bible assets are stored under distinct keys.
- Created `lib/services/bible_service_io.dart` — thin native stub (throws `UnsupportedError`; the main `bible_service.dart` handles native opening directly).
- Uses the same conditional-import pattern as `BibleSetupService` to keep platform-specific packages out of cross-platform builds.

**Web implementation (IndexedDB-backed):** On the first page load, `eng-web.db` bytes are written into browser IndexedDB (takes ~1-3 seconds). On subsequent page loads the write is skipped — only WASM loading + IndexedDB open (~0.5s). Data persists across page reloads. **Known limitation (Phase 1):** if a future app release ships an updated `eng-web.db`, the `databaseExists()` guard will prevent re-seeding — existing web users keep the stale copy. Phase 3.2 will replace this with a versioned strategy (compare a bundled version marker against the stored one, re-seed when the app DB is newer).

**Tests:**
- `test/services/bible_service_test.dart` — 5 unit tests: each query method throws `StateError` when called before `ensureOpen()`.
- **Deferred integration tests:** Methods like `getBooks()` and `getVerses()` require an open sqflite database, which in turn requires `BibleSetupService.ensureReady()` and platform plugins. Full integration coverage requires a device/emulator test via `flutter test integration_test/`. Will be added when the integration-test scaffold is set up.
- **Deferred concurrency tests:** The `_openFuture` retry-on-failure behavior (reset when `_doOpen()` throws) requires either a `@visibleForTesting` reset hook or platform-plugin mocking to simulate a failed open. Deferred to the same integration-test step.

`flutter analyze lib/ test/` → No issues. `flutter test` → 66 passed.

---

## Development Roadmap

Each step is a small, focused unit of work designed to be completed one at a time.  
Steps within a phase build on each other sequentially.

### Phase 1 — Minimum Viable Bible Reader

The goal: open the app, pick a book and chapter, and read formatted Bible text.

| Step | Task | Description |
|------|------|-------------|
| 1.1 | **Set up project structure** | Create the folder layout (`models/`, `services/`, `screens/`, `widgets/`, `l10n/`, `assets/`, `tools/`). Set up basic app shell with MaterialApp, theme, and a home screen placeholder. |
| 1.2 | **Acquire WEB Bible data** | Download the World English Bible USFX XML and metadata from eBible.org. Store raw files in `tools/data/` (not shipped with app — just for processing). Document where and how to download. |
| 1.3 | **Design Bible data models** | Create Dart data classes: `BibleInfo`, `Book`, `Chapter`, `Verse`. Define the SQLite schema for storing parsed Bible content with book/chapter/verse indexing. |
| 1.4 | **Build USFX parser** | Write a Dart script/tool that reads a USFX XML file and extracts books, chapters, verses, and basic formatting markup. Output structured data. |
| 1.5 | **Build SQLite Bible database** | Create a tool that takes parsed USFX data and writes it into a SQLite database file. This DB file becomes the Bible module that ships with the app. |
| 1.6 | **Bundle WEB Bible with app** | Add the generated SQLite database to `assets/bibles/`. Write a service to copy it to the app's local storage on first launch. |
| 1.7 | **Bible service layer** | Create `BibleService` — Dart class that reads from the SQLite DB. Methods: `getBooks()`, `getChapters(bookId)`, `getVerses(bookId, chapterId)`. |
| 1.8 | **Book selection screen** | Build a screen that lists all books of the Bible (OT and NT sections). Tapping a book navigates to chapter selection. |
| 1.9 ✅ | **Chapter selection screen** | Build a screen showing a grid of chapter numbers for the selected book. Tapping a chapter navigates to the reading screen. |
| 1.10 ✅ | **Scripture reading screen** | Build the main reading screen. Display a full chapter of Bible text (plain-text verse list for Step 1.10; full formatting in Step 1.11). Include the book name and chapter number as a collapsible header. Support scrolling. |
| 1.11 ✅ | **Basic text formatting** | Render Bible text with paragraph breaks, poetry indentation, section headers, and verse numbers. Use HTML rendering or rich text widgets. |
| 1.12 | **Verse navigation** | Add ability to jump to a specific verse within a chapter (scroll to verse). Add a quick-nav control (book > chapter > verse). |
| 1.13 | **Chapter-to-chapter navigation** | Add previous/next chapter buttons or swipe gestures to move between chapters seamlessly. |
| 1.14 | **Bookmarks — data layer** | Create a `Bookmark` model and SQLite table. Methods: `addBookmark(reference)`, `removeBookmark(id)`, `getBookmarks()`. |
| 1.15 | **Bookmarks — UI** | Add a way to bookmark the current location (long-press or button). Build a bookmarks list screen accessible from the home screen or menu. |
| 1.16 | **Settings screen (font & theme)** | Build a settings screen with: font size slider; light/dark/system theme toggle; accent color picker (let users choose from a curated palette of seed colors that drive the Material 3 `ColorScheme` — e.g. the default calm blue, forest green, crimson, gold, purple, etc.); words-of-Christ color toggle (red or black); section headings toggle (show/hide `<s>` and `<d>` noncanonical text, per design doc); verse numbers toggle (show/hide inline verse number superscripts). Persist all settings with `shared_preferences`. The home screen branded gradient is fixed and unaffected by theme changes; all inner screens (book selection, chapter selection, reading) respond to the chosen theme. |
| 1.17 | **Internationalization setup** | Set up Flutter l10n with ARB files. Extract all hard-coded UI strings into localizable constants. Start with English. Add structure for additional languages. |

### Phase 2 — Study Features

| Step | Task | Description |
|------|------|-------------|
| 2.1 | **Footnotes — data layer** | Extend the USFX parser and DB schema to capture footnotes. Store footnote markers with verse associations. |
| 2.2 | **Footnotes — UI** | Display footnote markers inline with text. Tapping a marker shows the footnote in a popup or bottom sheet. |
| 2.3 | **Search — indexing** | Build a full-text search index (SQLite FTS5) for the Bible text at DB creation time. |
| 2.4 | **Search — UI** | Build a search screen with a text input. Display results as a list of matching verses with context. Tapping a result navigates to that verse. |
| 2.5 | **Cross references — data layer** | Extract cross-reference data from USFX and store in the DB. |
| 2.6 | **Cross references — UI** | Display cross-reference markers inline. Tapping shows the referenced verse(s) with a link to navigate there. |
| 2.7 | **Navigation history** | Track visited locations in a stack. Add a back/forward navigation control. Build a history list screen. |

### Phase 3 — Parallel Bible Display

| Step | Task | Description |
|------|------|-------------|
| 3.1 | **Bible library — download list** | Fetch the list of available Bibles from eBible.org. Display them filterable by language, country, name. |
| 3.2 | **Bible library — download & install** | Download a selected Bible's USFX, parse it, and build a local SQLite DB. Show download progress. |
| 3.3 | **Bible picker** | Let users select which installed Bible(s) are active for reading. |
| 3.4 | **Versification mapping** | Implement the master versification map so different translations can be displayed side-by-side correctly. |
| 3.5 | **Parallel display UI** | Show two or more translations side-by-side (or stacked on narrow screens), synchronized by verse. |

### Phase 4 — Strong's Numbers
| Step | Task | Description |
|------|------|-------------|
| 4.1 | **Strong's data integration** | Obtain and integrate Strong's Concordance data. |
| 4.2 | **Strong's linking UI** | Display Strong's numbers inline with supporting translations. Tapping shows word definition and original language info. |

### Phase 5 — Audio Bible

| Step | Task | Description |
|------|------|-------------|
| 5.1 | **Audio file management** | Download and store audio Bible files (by chapter). |
| 5.2 | **Audio playback** | Play audio for the current chapter with play/pause/seek controls. |
| 5.3 | **Text-audio sync** | Highlight the current verse/phrase as audio plays (using timing marks). |

### Phases 6–8 — Sharing, Social, and Notes
_Detailed steps to be planned when earlier phases are complete._

- **Phase 6:** Copy/share scripture clips (text, audio, video)
- **Phase 7:** Scripture-on-a-picture creator
- **Phase 8:** Personal highlights and notes (stored locally or in user's cloud)

### Phases 9–12 — Future
- **Phase 9:** Peer-to-peer Bible sharing
- **Phase 10:** Dictionary lookup, parallel commentaries
- **Phase 11:** General book display
- **Phase 12:** Social media features (may be out of scope)

---

## Key Design Decisions

| Decision | Choice | Rationale |
|----------|--------|-----------|
| Bible source format | USFX (XML) | Hub format used by eBible.org; converts easily to/from USFM and USX |
| Internal storage | SQLite | Fast indexed access, single-file distribution, searchable (FTS5) |
| Text rendering | HTML + CSS | USFX converts naturally to HTML; supports complex formatting, bidirectional text, poetry |
| Versification sync | Hub-and-spoke via master versification (NRSV-based) | Each translation maps to one master, avoiding N-to-N mapping |
| Privacy | No server-side user data | Bookmarks/notes via user's own cloud; only anonymized app metrics |
| License | GPL 3.0 | Strong copyleft; compatible with project goals |

## Getting Started (Developer Setup)

### Prerequisites
- [Flutter SDK](https://flutter.dev/docs/get-started/install) (latest stable)
- [Android Studio](https://developer.android.com/studio) or VS Code with Flutter extension
- An Android device or emulator for initial testing

### Run the app
```bash
cd cyber_bible_app
flutter pub get
flutter run
```

### Run tests
```bash
flutter test
```

## Team

Small team (2-5 people). Volunteer-driven, donor-funded.

## Related Domains

- cyber.Bible
- cyberbible.net
- cyberbible.org

## License

GPL 3.0 — See [LICENSE](LICENSE) for details.
