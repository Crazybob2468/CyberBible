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

## Features

- **Read the Bible** — beautifully formatted text with paragraphs, poetry, section headers, and verse numbers
- **Navigate quickly** — jump to any book, chapter, and verse; swipe between chapters
- **Bookmarks** — save and return to passages
- **Search** — full-text search across the entire Bible
- **Footnotes & cross references** — inline markers with tap-to-view
- **Parallel display** — compare translations side-by-side with versification mapping
- **Audio Bible** — listen to chapters with text-audio synchronization
- **Strong's numbers** — tap words for original language definitions
- **Customizable** — font size, light/dark theme, display options
- **Multilingual UI** — interface available in multiple languages
- **Share scripture** — copy text, create scripture-on-a-picture, and more

---

## Tech Stack

| Layer | Technology |
|-------|-----------|
| Framework | Flutter (Dart) |
| Bible source format | USFX (XML) from eBible.org |
| Local database | SQLite |
| Text rendering | HTML + CSS |
| Internationalization | Flutter l10n (ARB files) |

The **World English Bible (WEB)** is bundled as the default translation.

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
    ├── PROJECT_STATUS.md         # Development roadmap and progress
    ├── docs/
    │   └── design-document.md    # Full design specification
    ├── lib/
    │   ├── main.dart             # App entry point
    │   ├── app.dart              # MaterialApp setup, routing, theme
    │   ├── models/               # Data classes
    │   ├── services/             # Business logic
    │   ├── screens/              # Full-page UI screens
    │   ├── widgets/              # Reusable UI components
    │   └── l10n/                 # Localization files
    ├── assets/
    │   └── bibles/               # Bundled Bible data
    ├── tools/                    # Offline build scripts
    └── test/                     # Unit and widget tests
```

---

## License

Licensed under the **GNU General Public License v3.0**.  
See [LICENSE](cyber_bible_app/LICENSE) for full details.
