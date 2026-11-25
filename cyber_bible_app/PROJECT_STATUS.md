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

**Phase 1 — Step 1.17 UI localization**

The localization foundation and the current local module catalog are implemented.
The app bundles 116 UI language modules; this is not yet one-to-one coverage of
all Android locale tags. For the decisions, problems, validation, and remaining
AOSP coverage work, see [the Phase 1.17 localization report](docs/phase-1.17-localization-report.md).

Step 1.16 ✅ COMPLETE. The session after Step 1.16 resolved four user-reported issues and completed the paragraph-mode rendering overhaul across multiple sessions.

### Issues resolved

1. **Gear icon on home screen was unreachable** — The `Positioned` gear icon was Stack child #4, but the full-screen `SingleChildScrollView` was child #5. In Flutter Stacks, later children paint (and receive events) on top, so the scroll view swallowed every tap. Fixed by moving the gear icon's `Positioned` widget to the *last* child in the Stack.

2. **Paragraph mode and verse-list mode looked identical (ROOT CAUSE fixed)** — Root cause: `flutter_widget_from_html_core`'s `customWidgetBuilder` unconditionally calls `tree.prepareFor(StyleType.block)`, making every returned widget a block-level element regardless of CSS. Any inline marker (`<span data-cbv>`) inside a `<p>` therefore forced an implicit paragraph close, putting every verse on its own line. **Fix**: The renderer now emits `<div data-cbv="N">` block markers as siblings *before* each `<p>` (never inside it). The `_proseBlock` helper orchestrates this: in paragraph mode it emits one marker + one `<p>` per USFX paragraph (multi-verse flow); in verse-list mode it calls `_splitByVerse` to emit one marker + one `<p>` per verse. `_renderInlineChildren` no longer has a `breakBeforeVerse` parameter. `customWidgetBuilder` and `customStylesBuilder` in `reading_screen.dart` now match `div` with `data-cbv`.

3. **Only light customizable themes existed** — Added three dark-base customizable themes: Night Sky (`0xFF1A2232`, sky-blue accent), Dark Forest (`0xFF0C1E10`, gold accent), and Charcoal (`0xFF1C1E24`, warm-gold accent). Added `isDarkBase` getter to `AppThemeDefinition`. Added `_customizableDark` builder in `AppThemeBuilder`.

4. **All set theme reading backgrounds looked near-identical** — Updated each of the 6 set-theme `scaffoldBackgroundColor` to be distinctively colored: Forest Cathedral → `0xFF092410`, Midnight Ocean → `0xFF060E28`, Desert Sunrise → `0xFF1C1004`, Royal Amethyst → `0xFF120038`, Crimson Covenant → `0xFF1A0408`, Aurora → `0xFF050F22`.

### Files changed in this combined session

- **`lib/screens/home_screen.dart`** — Gear icon `Positioned` moved to last Stack child.
- **`lib/utils/usfx_renderer.dart`** — Major rewrite: new helpers `_firstVerseId`, `_splitByVerse`, `_proseBlock`; `_renderParagraph` uses `_proseBlock` throughout; `_renderInlineChildren` has no `breakBeforeVerse` param; `_renderInline` case `'v'` emits only the `<sup>` number (no inline marker).
- **`lib/screens/reading_screen.dart`** — `customWidgetBuilder` now handles `<div data-cbv="N">`; `customStylesBuilder` zeroes out height/margin/padding on those divs; file comment updated.
- **`lib/models/app_theme_definition.dart`** — `isDarkBase` getter; 3 new dark customizable theme constants; `_customizableDark` builder; all 6 set-theme scaffold backgrounds made more distinctive.
- **`lib/services/settings_service.dart`** — `_defaultAccentColors` + `_customizableThemeIds` extended with `night_sky`, `dark_forest`, `charcoal`.
- **`test/utils/usfx_renderer_test.dart`** — Updated marker test to check `<div data-cbv>` before `<p>`; updated cross-paragraph highlight count test; updated `<p>` style tests to reflect styled output.

### Key architectural fact (for future agents)
`customWidgetBuilder` in `flutter_widget_from_html_core` ALWAYS creates `WidgetBit.block()` — no CSS override is possible. The only correct approach for verse-position markers is `<div data-cbv="N">` placed as a **block sibling before** each `<p>`, never inside one.

### Key numbers
- **273 tests passing**, `flutter analyze` → No issues.

Step 1.17 work includes Flutter localization plumbing, local AI-generated ARB
modules, the language catalog and picker, locale fallbacks, and translation of
the visible UI surfaces. Remaining scope is full Android locale/variant parity
and optional remote language-module delivery; 218 modules are currently
available, while eight questionable translations remain visible as pending.

---

**Step 1.17 ✅ FOUNDATION COMPLETE — Flutter localization, OS default, and override**

### What was built

- Added Flutter l10n generation with `l10n.yaml`, English and Spanish ARB files,
  generated `AppLocalizations`, `flutter_localizations`, and `intl`.
- Wired `MaterialApp` to generated delegates and supported locales.
- Added persisted language settings to `SettingsService`: use system language,
  manual language override, effective locale, and display-name helpers.
- Added the Settings language section with a system-language toggle, current
  language summary, and manual language picker.
- Localized the app shell, routes, home screen, book selection, and the main
  theme/bookmark/reading UI foundations with English fallback behavior.
- Added a localization fallback helper so isolated widgets and tests remain usable
  when no localization scope has been installed. The fallback implementation
  lives in the non-generated `lib/l10n/localization_helpers.dart` file so running
  `flutter gen-l10n` cannot overwrite it.
- Preserved icon-first controls and their tooltip/semantics metadata while making
  selected segmented-control icons render consistently across Flutter versions.
- Addressed review feedback by delegating system-locale selection to Flutter at
  runtime, making unsupported isolated locales fall back to English safely, and
  resolving the language summary from the full platform locale preference list.
- Completed the visible app-string extraction sweep across bookmarks, reading,
  settings, theme selection, home, and book-selection surfaces. Bible text and
  user-created bookmark text remain runtime content and are intentionally not
  placed in UI ARB files.
- Added a local Android/CLDR language catalog with native names, searchable
  aliases, installed-module status, and machine-translation-pending status.
- Replaced the two-item language dialog with a searchable language picker. The
  picker lists the broader local language roadmap while allowing selection only
  for bundled modules currently available offline.
- Added a versioned local language-module contract with provenance metadata,
  installed-module discovery, first-supported-platform-locale selection, and
  English fallback.
- Added complete AI-generated ARB modules for German, Italian, Portuguese, Hindi,
  Simplified Chinese, Arabic, Bengali, Japanese, Korean, Russian, Turkish,
  Ukrainian, Vietnamese, Polish, Dutch, Afrikaans, Amharic, Catalan, Czech, and
  Danish, Azerbaijani, Belarusian, Bulgarian, Bosnian, Estonian, Basque,
  Persian, Finnish, Filipino, Galician, Gujarati, Hebrew, Croatian, Hungarian,
  Armenian, Indonesian, Icelandic, Georgian, Kazakh, Lao, Lithuanian, Latvian,
  Macedonian, Malayalam, Assamese, Greek, Khmer, Kannada, and Kyrgyz, with the
  complete current English UI key set and matching ICU placeholders. Added
  complete AI-generated modules for Mongolian, Marathi, Malay, Burmese,
  Norwegian Bokmål, Nepali, Odia, Punjabi, Romanian, and Sinhala with the same
  validated contract.
- Added complete AI-generated Slovak, Slovenian, Albanian, Serbian, and Swedish
  ARB modules. Each catalog contains all 147 current non-locale English UI keys
  and its exact ICU placeholder sets.
- Added complete AI-generated Swahili, Tamil, Telugu, Thai, and Urdu ARB
  modules. Each catalog contains all 147 current non-locale English UI keys and
  its exact ICU placeholder sets.
- Added complete AI-generated Uzbek and Zulu ARB modules. Each catalog contains
  all 147 current non-locale English UI keys and its exact ICU placeholder sets.
- Added complete AI-generated Akan and Asturian ARB modules. Each catalog
  contains all 147 current non-locale English UI keys and its exact ICU
  placeholder sets.
- Added complete AI-generated Bemba, Bhojpuri, Bambara, Tibetan, and Breton ARB
  modules. Each catalog contains all 147 current non-locale English UI keys and
  its exact ICU placeholder sets. Bemba, Bhojpuri, Bambara, and Breton use an
  English Material/Cupertino framework-localization fallback because Flutter
  does not bundle framework control strings for those locale codes.
- Added complete AI-generated Dzongkha, Ewe, Esperanto, Fulah/Pulaar, and
  Faroese ARB modules. Each catalog contains all 147 current non-locale English
  UI keys and its exact ICU placeholder sets. These locales use the existing
  English Material/Cupertino framework-localization fallback because Flutter
  does not bundle framework control strings for their locale codes.
- Added complete AI-generated Friulian, Western Frisian, Irish, Scottish
  Gaelic, and Manx ARB modules. Each catalog contains all 147 current
  non-locale English UI keys and its exact ICU placeholder sets. Friulian,
  Western Frisian, Scottish Gaelic, and Manx use the English
  Material/Cupertino framework-localization fallback because Flutter does not
  bundle framework control strings for those locale codes.
- Added complete AI-generated Hausa, Hawaiian, Igbo, Javanese, and Nyanja /
  Chichewa ARB modules. Each catalog contains all 147 current non-locale
  English UI keys and its exact ICU placeholder sets. Nyanja/Chichewa uses the
  Android/BCP-47 `ny` code, confirmed by the translation locale source as
  `ny-MW`; no unsupported substitute locale was added.
- Added complete AI-generated Welsh, Somali, Yoruba, Norwegian Nynorsk, and
  Northern Sami ARB modules. Each includes all 147 current English UI keys and
  matching ICU placeholders; Flutter framework controls use English fallbacks
  where native Material/Cupertino translations are unavailable.
- Added complete AI-generated Kabyle, Kalenjin, Ganda/Luganda, Kinyarwanda,
  and Oromo ARB modules. Each includes all 147 current English UI keys and
  matching ICU placeholders. Flutter does not bundle Material/Cupertino
  framework strings for these locale codes, so app-specific UI is localized
  while framework controls use the existing English fallback delegates.
- Added complete AI-generated Luba-Katanga, Luo, Luyia, Lingala, and
  Kabuverdianu ARB modules. Each includes all 147 current English UI keys and
  matching ICU placeholder sets.

## Direct-AI Localization Status — 218 Installed Modules

- Current language catalog: **226 entries**; **218 modules are installed** and
  8 questionable translations are pending.
- All **225 AOSP base language codes** remain represented in the catalog after
  legacy `in`/`iw` aliases; pending modules are not selectable.
- Nyanja (`ny`) is one extra catalog entry relative to the AOSP base-code set.
- Regional/script variants remain future work under exact locale-tag matching; the 631 AOSP locale tags are not all separate catalog entries.
- Locale ARBs contain 147 non-locale keys and pass exact ICU-placeholder parity.
