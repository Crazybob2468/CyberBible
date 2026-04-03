# Cyber Bible

> A free, open-source Bible study app for everyone — on every platform.

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![Flutter](https://img.shields.io/badge/Built%20with-Flutter-02569B?logo=flutter)](https://flutter.dev)
[![Platforms](https://img.shields.io/badge/Platforms-Android%20%7C%20iOS%20%7C%20Windows%20%7C%20macOS%20%7C%20Linux%20%7C%20Web-green)](#)

Cyber Bible is a **FLOSS** (Free/Libre and Open Source Software) Bible study app built with Flutter. It is designed to display and play any of the **1,535+ Bible translations** available on [eBible.org](https://ebible.org) — completely free, offline-capable, and privacy-respecting.

---

## Why Cyber Bible?

Most Bible apps are either closed-source, require constant internet access, track users, or fail to support the full range of the world's Bible translations and writing systems. Cyber Bible is built to do better:

| Goal | How |
|------|-----|
| **Truly free** | GPL 3.0 licensed — free to use, study, modify, and share |
| **All translations** | Supports 1,535+ Bibles from eBible.org, including minority languages |
| **Works offline** | Download once, read anywhere — no internet required |
| **Privacy-first** | No user tracking; personal data stays on your device or your own cloud |
| **Every writing system** | Full Unicode support, including right-to-left and complex scripts |
| **Any versification** | Not forced into a few schemes — supports all real-world versification variants |
| **Cross-platform** | One Flutter codebase: Android, iOS, Windows, macOS, Linux, and Web |

---

## Features (by Phase)

### ✅ Phase 1 — Core Bible Reader *(in progress)*
- Read any book, chapter, and verse
- Formatted text: paragraphs, poetry, section headers, verse numbers
- Fast chapter-to-chapter navigation
- Bookmarks
- Font size and light/dark theme settings
- Internationalized UI

### 🔜 Phase 2 — Study Tools
- Footnotes with inline markers
- Full-text search (SQLite FTS5)
- Cross-references with navigation links
- Navigation history

### 🔜 Phase 3 — Parallel Bibles
- Browse and download from 1,535+ eBible.org translations
- Side-by-side parallel Bible display with versification mapping

### 🔜 Phase 4 — Strong's Numbers
- Inline Strong's number links with original language definitions

### 🔜 Phase 5 — Audio Bible
- Audio playback per chapter
- Text-audio synchronization (verse highlighting)

### 🔜 Phases 6–8 — Sharing & Notes
- Copy/share scripture as text, audio, or video clips
- Scripture-on-a-picture creator
- Personal highlights and notes (stored locally or in your cloud)

### 🔮 Future (Phases 9–12)
- Peer-to-peer Bible sharing
- Dictionary and commentary display
- Social media features

---

## Tech Stack

| Layer | Technology |
|-------|-----------|
| Framework | Flutter (Dart) |
| Bible source format | USFX (XML) from eBible.org |
| Local database | SQLite (`drift` / `sqflite`) |
| Text rendering | HTML + CSS (via `flutter_widget_from_html`) |
| State management | Provider / Riverpod (TBD) |
| Internationalization | Flutter l10n (ARB files) |
| Audio | TBD (Phase 5) |

### Bible Data Pipeline

```
eBible.org
  └── usfx.xml + metadata.xml (per translation)
        └── Parsed & indexed → SQLite database (one file per Bible)
              └── App reads SQLite → renders as HTML → displays in Flutter
```

The **World English Bible (WEB)** is the default bundled translation.

---

## Getting Started

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install) (latest stable)
- Android Studio or VS Code with the Flutter extension
- An Android/iOS device or emulator

### Run the App

```bash
cd cyber_bible_app
flutter pub get
flutter run
```

### Run Tests

```bash
cd cyber_bible_app
flutter test
```

---

## Project Structure

```
CyberBible/
├── README.md                     ← You are here
└── cyber_bible_app/
    ├── docs/
    │   └── design-document.md    # Full design specification
    ├── lib/
    │   ├── main.dart             # App entry point
    │   ├── app.dart              # MaterialApp setup, routing, theme
    │   ├── models/               # Data classes (Bible, Book, Chapter, Verse, etc.)
    │   ├── services/             # Business logic (parsing, DB access, search)
    │   ├── screens/              # Full-page UI screens
    │   ├── widgets/              # Reusable UI components
    │   └── l10n/                 # Localization (ARB files)
    ├── assets/
    │   └── bibles/               # Bundled Bible data (WEB SQLite DB)
    ├── tools/                    # Offline scripts (USFX parser, DB builder)
    └── test/                     # Unit and widget tests
```

---

## Current Status

**Phase 1 — Step 1.1 complete.** App shell is running with MaterialApp, light/dark theme, and a home screen placeholder. Next up: acquiring and bundling the WEB Bible data.

See the [detailed roadmap in the developer README](cyber_bible_app/README.md) for a full step-by-step breakdown.

---

## Contributing

This is a small volunteer team. All contributions are welcome — code, translations, testing, and documentation.

- Small team (2–5 people), volunteer-driven, donor-funded
- Please open an issue or discussion before starting large changes

---

## Domains

- [cyber.Bible](https://cyber.bible)
- [cyberbible.net](https://cyberbible.net)
- [cyberbible.org](https://cyberbible.org)

---

## License

Licensed under the **GNU General Public License v3.0**.  
See [cyber_bible_app/LICENSE](cyber_bible_app/LICENSE) for full details.
