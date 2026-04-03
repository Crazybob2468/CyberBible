# Cyber Bible Design Document

> This is a Markdown conversion of the original PDF design document for AI/developer reference.
> Original author's working document for the Cyber Bible FLOSS Bible study app.

---

## Introduction

This is a working document to help clarify what we are doing in developing a new free/libre and open source software (FLOSS) Bible study app. This document will likely evolve with the project as we get into it more.

## Name

Code name: "Cyber Bible". May or may not be the finished product name. Three related domain names registered: cyber.Bible, cyberbible.net, and cyberbible.org. cyberbible.com is not owned but is parked undeveloped at GoDaddy. No known conflicting Bible study programs with this name.

## Why?

No existing quality Bible study app meets all perceived needs. Wish list:

- **Free of charge (gratis)** – developed with volunteer hours and donor funding
- **Free to use, maintain, branch, etc. (libre)** – licensed GPL 3.0
- **Can display and/or play every Bible text and audio on eBible.org** (for which copyright permission can be obtained)
- **Cross-platform support**: iOS, iPadOS, Android, Windows, MacOS, Linux, and preferably smart watches
- **Peer-to-peer sharing** of Bible files (when allowed by copyright holders) and, where practical, the software itself
- **Cryptographic signature checks** to verify Bible files haven't been damaged
- **Efficient but fast data compression**, especially for sound files
- **Easy language/translation discovery**: search by language name (English or vernacular), country, vernacular title, version name (if applicable), Ethnologue code, or scroll through custom sort order
- **Easy updates** for translations still in progress and minor typo corrections
- **Works well offline** once software and Bible translation(s) are downloaded
- **Supports any Bible versification scheme** found in real life (including out-of-order verses, letters in Isaiah 38, chapters and verses with letters in Deuterocanon/Apocrypha)
- **Full ecumenical set of Bible books** (at least the ones in the Ecumenical edition of the World English Bible, plus Odes and additions to Daniel, like Daniel & Susanna)
- **Parallel display of Bibles** (handling versification mismatch)
- **Supports any Unicode writing system**
- **UI can be in any major language** and any minority language with a phrase translation list
- **Bible modules packaged in one file** – preferably compressed (.zip? SQLite?) for easy download, transfer, and sharing
- **Default packaging is easily sharable**, but plan for encryption, point-of-sale controls, and copy barriers for proprietary translations
- **Respects privacy** – no precise user location data, allows anonymous use of all open access Bible modules. Personal data (bookmarks, notes) synced via user's own cloud service (Dropbox, Google Drive, iCloud, OneDrive, etc.), not our servers. Only anonymized/fuzzed bulk metrics collected.
- **Simple to read, navigate, and search** the Holy Bible
- **Attractive formatting** – preserving poetry, prose, special formatting (e.g. italics in KJV), etc.
- **User choice of theme colors, fonts** (within fonts supporting the writing system), day/night light/dark, etc. Font fall-back for unsupported characters.

## Competitor Analysis

### Bishop (The Sword Project)
Closest FLOSS option for Android and Apple. Doesn't support Windows, MacOS, or Linux. So-so formatting. Doesn't support all versifications. Forces all translations into a few versification schemes. Hard to find specific translations. Licensed GPL 2 only (incompatible with GPL 3). Current iOS release crashes on search.

### YouVersion
Very nice but not FLOSS. Doesn't support getting Bibles directly from eBible.org. Works poorly offline. Doesn't safeguard privacy well. Falls short on simplicity. Limited UI language options. Great choice for Americans but not ideal for this project's goals.

### SIL Scripture App Builder
Very nice apps, but limited to one or two predetermined Bible translations. Free (gratis) but not open source (not libre).

## Features (Phased)

| Feature | Phase | Why |
|---------|-------|-----|
| Displays Bible texts well, at least one at a time | 1 | Minimum to be useful |
| Navigation: go to any book, chapter, and verse quickly | 1 | Minimum to follow a sermon |
| Book marks | 1 | Keep track of reading; mark passages for study or sermon |
| UI language support | 1 | Easier to do initially than to retrofit hard coded constants |
| Pick a Bible to read or listen to | 1 | App should come preloaded with at least one Bible (WEB); 1,535 translations available on eBible.org |
| Display Bible footnotes | 2 | Good for serious study; self-defense for translators |
| Search Bible text | 2 | Very important to find a passage or for topical study |
| Display cross references with hot links | 2 | Display target verse with link to navigate; easy to get back |
| Navigation history | 2 | Work your way back through a sermon or study trail |
| Parallel Bible display | 3 | Side-by-side comparison of translations (or with original language texts) |
| Strong's number linking and word lookup | 4 | Nice for deep study |
| Listen to Bible audio | 5 | Essential for visually impaired, nice for everyone |
| Move Bible text highlight with text (like SAB) | 5 | Valuable for language learners |
| Copy scripture clip (text, audio, or video) | 6 | Social sharing, writing, Bible studies, slides for sermons |
| Create and share Scripture on a picture | 7 | Peripheral but useful for social media posts |
| Record personal highlights and notes | 8 | Kept in separate user file, keyed to Scripture, not in Bible file. May be in user's cloud storage, not our servers. |
| Dictionary lookup | 10 | Not likely feasible for all languages |
| Parallel display of commentaries | 10 | Maybe for a few languages |
| General book display | 11 | Not necessary |
| Social media features | 12 | Currently beyond the scope |

## Architecture

Main parts and sub-parts:

### User Interface
- Menu
- Information/error message pop-ups
- Translation function for menus, help, and error/information messages
- Scripture display pane(s) (HTML-based)
- If Bible translations for multiple panes are selected, and one has no content for that section, act as if that pane is not active
- Parallel structure for side-by-side Scripture panes
- Navigation controls (Book, chapter, verse, page, scroll, etc.)
- Footnotes display in a sub-pane or pop-up
- Cross references have links to the actual referenced starting verse
- History function for quick return to previous locations
- Book marks for storing a list of references for quick access
- Ribbons for marking current reading position (current OT and NT reading places)
- Font face & size selection for reading text and menus
- Color scheme selection
- Display options (words of Jesus in red or not, show verse numbers or not, show illustrations or not, etc.)
- Play Scripture audio in parallel with primary pane text
- Search options
- Translation picker for currently displayed Bibles
- Notes pane for personal notes
- (future) Commentary pane

### Search Engine and Results Display

### Bible Library
- Download current list of all available Bibles
- Select Bible translation by language, country, vernacular title, translation name, Ethnologue code, etc.
- Download selected Bible(s) and add to local available Bible list
- Display Bibles that are downloaded and have updates on server; optionally update individually or all
- Option to remove unused Bible translations to reclaim space
- Facilitate peer-to-peer sharing of Bible translations
- Allow for alternate repositories if the main repository is down or blocked

### Parallel Bible Display Synchronizer
- Each translation declares how its verse content maps to a master versification (probably NRSV ecumenical or superset)
- Primary pane drives navigation; secondary panes translate master BCV to their own versification
- Avoids N-to-N mapping by using a "hub" translation (NRSV)
- Mappings may use verse bridges (verse 1-2 as one unit) or segments (1a, 1b)

### Bible Module Format
- Well thought out and preferably very stable format with version indicator
- Must include markup for formatting (added text/italics, poetry stanzas, prose paragraphs, section headers, footnotes, cross references, etc.) – see USFM standard
- Must be quick to access
- Must be searchable (preferably with index)
- Distributable as a single file (like .zip and/or SQLite)
- Must support cryptographic integrity checks

### Bible Module Creator & Server Support

### Note-Taking and Commentary Options
- Not included in Bible module, but indexed to Scripture

### Scripture on a Picture Creator (future)

### Installers
- By platform; separate for Windows, Mac, and Linux
- Portable drive zero-install option
- Submission to app stores
- Side loading option for Android
- Fresh install should have at least one Bible (WEB), possibly a few

## Bible Module Design Requirements

A Bible module is a package downloaded from our web site containing text and/or audio Bible content, metadata, verse mapping, and a digital signature for content integrity. Can be shared peer-to-peer by default, but may be encrypted and locked for proprietary translations.

Key requirements:
- Contains Bible canonical text (unless audio-only module)
- Contains supplemental text (footnotes, section titles, etc.)
- Contains formatting markup (Words of Jesus/red, Supplied/italics, Deity/Small caps, etc.) for all USFM/USFX/USX markup
- Contains style information for the current writing system(s)
- May contain fonts, especially for uncommon writing systems
- Contains Bible audio if available, stored by chapter with timing marks at natural pauses (comma, period, etc.)
- Contains publication metadata (language, dialect, writing system, title, vernacular title, copyright, rights and permissions)
- Contains versification information for parallel display mapping (BCV to master versification, e.g. MAL 4:1-6 to MAL 3:19-24)
- Supports optional Deuterocanon/Apocrypha books
- Supports hot links from Bible references
- Supports embedding of Strong's numbers and source language text
- Supports indexing for rapid navigation and search
- Contains a digital signature to detect damage or tampering
- Must be stable – lots of code will rely on this format
- Extensions must be backwards-compatible
- Must be copyable by end users (except proprietary modules)
- Must support a variety of outputs (screen sizes, print, clipboard, etc.)
- Must be as simple as is reasonable given constraints

## Bible Module Data Structures

Semantic markup approach (USFX) rather than presentational. USFX can be merged with custom styles for different presentations. Useful for:
- Selecting word-of-Christ color (red or black)
- Showing/hiding verse numbers
- Toggling noncanonical text (section titles)

**USFX** is the chosen format (see https://ebible.org/usfx/). Easily converted to/from USFM and USX (the two most common Bible markup formats). Used as the hub format for all Bible conversions on eBible.org.

Each translation's usfx.xml file and metadata.xml file provide most of what's needed. What's lacking: a rapid index to convert native and standard BCV triples to offsets into the usfx.xml file (two offsets per verse: start and end). The native BCV offset is derived from the markup; the standard BCV offset is usually the same but varies when versification differs or translation lacks a verse.

Some translations are very sparse (e.g. only Luke 2). Others are full Bibles plus Deuterocanon/Apocrypha. Most are New Testaments.

## Implementation Ideas

Minimal external dependencies preferred:
- **Zip compression library** – for compressed Bible module archives
- **Web browser display component** – for displaying formatted Bible text as HTML
- **SQLite** – for Bible translation selection and synchronizing parallel display
- **Audio playback** – for listening to Bible audio

Filter process: USFX → HTML + CSS (standard tag handling, custom styles for module, bidirectional scripts, user preferences).
