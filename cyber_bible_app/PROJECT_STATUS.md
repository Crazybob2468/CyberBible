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

**Phase 1 — Step 1.6 Complete: Bundle WEB Bible with app**

Step 1.5 ✅ MERGED (PR #7). The SQLite build tool, 60 unit tests, and generated `eng-web.db` are on `main`.
Step 1.6 ✅ COMPLETE. The bundled WEB database setup service, startup wiring in `main.dart`, and unit-test coverage are now on `main`; deferred integration tests are intentionally tracked below.

Step 1.6 implementation:
- Added `sqflite: ^2.4.2` and `path_provider: ^2.1.5` to `dependencies` in pubspec.yaml (runtime packages — ship with the app)
- Moved `path: ^1.9.0` from `dev_dependencies` to `dependencies` (now used by `lib/` production code as well as the build tool)
- Created `lib/services/bible_setup_service.dart` — `BibleSetupService.ensureReady()` copies `assets/bibles/eng-web.db` from the read-only Flutter asset bundle to the app's writable documents directory on first launch; subsequent launches detect the file already exists and skip the copy. On web, `ensureReady()` is a no-op (web SQLite support is a future phase); `kIsWeb` guard added to both `ensureReady()` and `dbPath`
- Updated `lib/main.dart` to `await BibleSetupService.ensureReady()` before `runApp()`, so the database path is always ready before any screen renders

**Tests:**
- `test/services/bible_setup_service_test.dart` — 1 unit test: verifies `dbPath` throws `StateError` before `ensureReady()` is called (pure Dart logic).
- **Deferred integration tests:** `ensureReady()` depends on `path_provider` and `rootBundle`, which are platform plugins that cannot be exercised in plain unit tests without channel mocking. Full coverage of the copy-on-first-launch path requires an integration test (run on a real device/emulator via `flutter test integration_test/`). This will be added when the integration-test scaffold is set up.

`flutter analyze` → No issues. `flutter test` → 61 passed.

Next: Step 1.7 — Bible service layer (`BibleService` class with `getBooks()`, `getChapters()`, `getVerses()` methods reading from the SQLite DB via `sqflite`).

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
| 1.9 | **Chapter selection screen** | Build a screen showing a grid of chapter numbers for the selected book. Tapping a chapter navigates to the reading screen. |
| 1.10 | **Scripture reading screen** | Build the main reading screen. Display a full chapter of formatted Bible text. Include the book name and chapter number as a header. Support scrolling. |
| 1.11 | **Basic text formatting** | Render Bible text with paragraph breaks, poetry indentation, section headers, and verse numbers. Use HTML rendering or rich text widgets. |
| 1.12 | **Verse navigation** | Add ability to jump to a specific verse within a chapter (scroll to verse). Add a quick-nav control (book > chapter > verse). |
| 1.13 | **Chapter-to-chapter navigation** | Add previous/next chapter buttons or swipe gestures to move between chapters seamlessly. |
| 1.14 | **Bookmarks — data layer** | Create a `Bookmark` model and SQLite table. Methods: `addBookmark(reference)`, `removeBookmark(id)`, `getBookmarks()`. |
| 1.15 | **Bookmarks — UI** | Add a way to bookmark the current location (long-press or button). Build a bookmarks list screen accessible from the home screen or menu. |
| 1.16 | **Settings screen (font & theme)** | Build a settings screen with: font size slider, light/dark theme toggle. Persist settings with `shared_preferences`. |
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
