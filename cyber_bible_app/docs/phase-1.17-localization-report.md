# Phase 1.17 — UI Localization Status Report

## Executive Summary

Phase 1.17 established Flutter localization, system-language selection, a persisted manual override, a searchable local language catalog, and a versioned module boundary. The app exposes **185 selectable UI language modules** from a searchable catalog of 226 language codes. Forty-one bundles remain pending because they are incomplete, substantially English, duplicated from another locale, or otherwise unverified.

All **225 AOSP base language codes** remain represented in the catalog after resolving the legacy Android tags `in` and `iw` to Indonesian (`id`) and Hebrew (`he`), but the 41 pending modules are not selectable. The catalog contains one extra entry, Nyanja (`ny`). Regional/script variants such as `pt-BR`, `pt-PT`, `zh-Hans-CN`, and `zh-Hant-TW` remain future exact-tag work rather than missing base languages.

## Phase Goal

The intended end state is that users can choose any UI language offered by Android, the app can select the best matching locale from the OS preference list on first launch, and users can search for and choose languages directly in Settings. Language modules should remain local/offline-capable. English is the permanent fallback.

The phase also adopts the user-approved quality policy: UI translations may be machine-generated, can contain imperfect wording, and do not require human review before inclusion. Every module must preserve the full message and ICU-placeholder contract. If a translation service alters a placeholder, that individual message remains in English rather than shipping a broken interpolation; the fallback count is recorded below.

## Decisions Made

- **Local-first modules:** No remote language hosting is available. Current modules are bundled in the app and work offline.
- **OS language by default:** In system mode, Flutter receives the platform locale list and chooses the first supported module. A manual language selection persists until system mode is re-enabled.
- **Fallback behavior:** If no installed locale matches, the app uses English. Unsupported isolated locale lookups also fall back to English.
- **Searchable catalog:** The Settings picker searches language code, English name, native name, and aliases. Best-effort AI translations may be selectable without fluent-speaker review. Keep a bundle pending when it is still substantially English, copied wholesale from another language, or otherwise clearly mislabeled.
- **Translation approach:** AI-generated UI strings are acceptable despite possible imperfections and do not require paid or volunteer human review before activation. Preserve the AI-generated provenance label, keep each locale distinct, and use automated checks for message keys, placeholders, and obvious untranslated content. The Bible text itself is runtime content from Bible modules and is not included in UI localization files.
- **Framework control strings:** Flutter does not provide Material/Cupertino translations for every app locale. For those locales, app-specific strings are localized while framework controls use the English fallback delegates.
- **macOS support:** macOS 12 is the accepted minimum because the current Flutter toolchain upgrades the macOS deployment target to 12.0.

## Delivered

- Flutter `gen-l10n` configuration, English template ARB, generated localization classes, and app localization delegates.
- Persisted system-language preference and manual language override.
- Searchable local language catalog with native names, aliases, installed status, and module provenance/schema metadata.
- 185 installed local modules. Each active ARB has 147 non-locale keys matching English and exact ICU placeholder parity.
- Haryanvi (`bgc`) retains 8 English fallbacks; Asu (`asa`) 5. Ligurian 2, Lombard 8, Chiga 3, Silesian 8, and Tamazight 7 also retain documented fallbacks.
- Aghem (`agq`), Anii (`blo`), Masai (`mas`), Meru (`mer`), Makhuwa-Meetto (`mgh`), North Ndebele (`nd`), Ngiemboon (`nnh`), N’Ko (`nqo`), Cherokee (`chr`), Swampy Cree (`csw`), Lakota (`lkt`), and Sichuan Yi (`ii`) remain visible in the catalog as pending, not installed. Their drafts are incomplete or not yet verified in the target language.
- AI first-draft work has started on the original 12 pending drafts. Current coverage is 103 of 147 messages for North Ndebele, two for Cherokee, and one each for Swampy Cree and Lakota; the other eight bundles remain English fallbacks. They remain pending until best-effort target-language drafts are available; paid or volunteer human review is not an activation requirement.
- Dutch (`nl`), Vietnamese (`vi`), Ukrainian (`uk`), Turkish (`tr`), and Polish (`pl`) received best-effort AI first drafts for all 147 messages and are now selectable. These drafts have not been reviewed by fluent speakers; wording quality can be improved later as time and community feedback allow.
- In those five drafts, the only values exactly matching English are the shared language name “Español” and the standard `px` size unit; all other UI messages have target-language text.
- Nigerian Pidgin (`pcm`) received a distinct best-effort AI first draft for all 147 messages and is now selectable. The draft keeps recognizable Pidgin phrasing, although many shared English-derived UI terms remain; it has not been reviewed by a fluent speaker.
- Pending ARB drafts are kept in `docs/localization/pending/`, outside Flutter's `lib/l10n/` input directory. They remain covered by the ARB key/placeholder contract test but are not generated into runtime localization classes or shipped as selectable locales.
- Localization of the app shell, Settings, home, book and chapter selection, reading, bookmarks, themes, navigation, error messages, accessibility labels, and testament section labels.
- Runtime OS locale matching, unsupported-locale fallback, and regression tests for locale ordering and overrides.
- Fixes for chapter and reading screens that called inherited localization lookup during `initState`, causing uncaught exceptions and permanent loading spinners.
- A dedicated ARB contract test that checks every locale file for complete key and placeholder parity.

The five low-resource modules `lu`, `luo`, `luy`, `ln`, and `kea` were revised after an earlier helper generated repeated category words. They now contain 124–129 distinct UI values each and satisfy the full key/placeholder contract. Kurdish (`ku`) was completed as module 117, followed by Maltese (`mt`), Māori (`mi`), Malagasy (`mg`), Luxembourgish (`lb`), Interlingua (`ia`), Tongan (`to`), Turkmen (`tk`), Tatar (`tt`), Occitan (`oc`), Romansh (`rm`), Low German (`nds`), Mauritian Creole (`mfe`), Pashto (`ps`), Uyghur (`ug`), Cantonese (`yue`), Venetian (`vec`), Sanskrit (`sa`), Wolof (`wo`), Interlingue (`ie`), Swiss German (`gsw`), Tajik (`tg`), Tigrinya (`ti`), Ewondo (`ewo`), Nyankole (`nyn`), Shona (`sn`), Ossetian (`os`), Sardinian (`sc`), Sango (`sg`), Nuer (`nus`), Sena (`seh`), Chuvash (`cv`), Inari Sami (`smn`), Zhuang (`za`), Nheengatu (`yrl`), Yakut (`sah`), Santali (`sat`), Kamba (`kam`), Gikuyu (`ki`), Dogri (`doi`), Bodo (`brx`), Cornish (`kw`), Colognian (`ksh`), Basaa (`bas`), Bena (`bez`), Samburu (`saq`), Sangu (`sbp`), Kirundi (`rn`), Sindhi (`sd`), Silesian (`szl`), Tamazight (`tzm`), Chechen (`ce`), Chiga (`cgg`), Ligurian (`lij`), and Lombard (`lmo`). Their wording is machine-generated and has not been human-reviewed.

## Coverage and Remaining Scope

- Current app catalog: **226 language codes**, with 185 installed and 41 pending.
- AOSP base-language catalog coverage: **225 of 225**; pending languages are not selectable.
- Extra catalog entry: Nyanja (`ny`) is not a separate base code in the current AOSP locale config snapshot.
- Regional/script variants remain future exact-tag work.

## Pending Draft Inventory

These 12 bundles do not yet have usable target-language drafts. Human review
is welcome but is not required: create best-effort AI drafts and activate them
after key, placeholder, and target-language checks pass. “English-valued keys”
counts ARB messages whose current value is exactly the English source value.

| Language | Code | English-valued keys | Non-English draft keys |
|----------|------|---------------------|------------------------|
| Aghem | `agq` | 147/147 | 0 |
| Anii | `blo` | 147/147 | 0 |
| Maasai | `mas` | 147/147 | 0 |
| Meru | `mer` | 147/147 | 0 |
| Makhuwa-Meetto | `mgh` | 147/147 | 0 |
| North Ndebele | `nd` | 44/147 | 103 |
| Ngiemboon | `nnh` | 147/147 | 0 |
| N’Ko | `nqo` | 147/147 | 0 |
| Cherokee | `chr` | 145/147 | 2 |
| Swampy Cree | `csw` | 146/147 | 1 |
| Lakota | `lkt` | 146/147 | 1 |
| Sichuan Yi (Nuosu) | `ii` | 147/147 | 0 |

### Additional catalog-quality holds

Pending status is a temporary safeguard against shipping an obviously
mislabeled or mostly untranslated catalog, not a requirement to obtain human
review. Best-effort AI drafts can be activated after the automated checks
below; wording quality can improve later as time and community feedback allow.

The following 28 catalogs have message-for-message identical values to
another language's complete catalog (ignoring the locale metadata), so they
cannot be offered as translations for their listed languages. Each group
below currently shares one catalog:

- French-valued catalog: `yav`, `kkj`, `khq`, `ses`, `twq`, `jgo`, `ksf`.
- Swahili-valued catalog: `kde`, `mgo`, `vun`, `guz`, `vmw`, `xog`, `ebu`,
  `ksb`, `lag`, `jmc`, `naq`, `teo`.
- French-valued catalog: `dua`, `dyo`.
- Swahili-valued catalog: `rof`, `rwk`.
- Hindi-valued catalog: `raj`, `kxv`, `xnr`.
- German-valued catalog: `prg`, `wae`.

The remaining additional catalog has substantial exact-English overlap, so it
remains pending until an AI first draft replaces the bulk of those English
messages. Individual product names and legitimate loanwords may remain
unchanged.

| Language | Code | English-valued keys |
|----------|------|---------------------|
| Standard Moroccan Tamazight | `zgh` | 120/147 |

The English-valued-key count is a warning signal rather than a translation
quality score: product names and loanwords may legitimately match English.
The duplication findings above are exact catalog comparisons; `zgh` is held
only until the bulk English text receives a best-effort AI
draft, not until a fluent reviewer is available.

### AI draft and activation steps

1. Generate a best-effort AI first draft in the target language; do not copy a
   complete catalog from a different language. Preserve product names such as
   “Cyber Bible” unless there is a known localized brand form.
2. Preserve every ARB key and ICU placeholder exactly. If a translation
   damages a placeholder, keep that individual message in English and record
   the fallback.
3. Check for broad English fallthrough and obviously incorrect script or
   target-language mismatches. Human review is welcome but is not a prerequisite
   for activation.
4. Run `flutter gen-l10n`, the ARB contract test, the full `flutter test`
   suite, and `flutter analyze`.
5. After those automated checks pass, mark the language installed in the
   catalog and module registry, add it to the app's selectable locale and
   fallback configuration, and update the installed/pending counts here and
   in `PROJECT_STATUS.md` and the design document.

## Issues Encountered and Resolutions

- **Generated localization output was edited manually at first.** `flutter gen-l10n` overwrote such changes. The fallback helper was moved to a non-generated file, `lib/l10n/localization_helpers.dart`.
- **Flutter selected the wrong language summary for a preference list such as `[fr, es]`.** Resolution now scans all platform locale preferences for the first installed module.
- **Unsupported locales could throw in isolated widgets.** The helper validates supported language codes and uses English fallback.
- **Segmented controls replaced selected icons with a checkmark.** The selected icon was configured to retain the mode icon.
- **Web language picker disposed its text controller before the dialog exit transition completed.** Controller ownership moved into the dialog state.
- **Chapter and reading views remained on a spinner in Web.** Both called `appLocalizations(context)` from async loaders started by `initState`. The lookup now occurs only in mounted error handling after the asynchronous work.
- **A bulk command timed out while writing files.** Output was reconciled from disk; files were parsed, placeholder-checked, and registration consistency was checked before proceeding.
- **The local Xcode/CoreSimulator frameworks are mismatched.** Flutter builds the macOS app, but Xcode emits simulator/plugin warnings; this is an environment issue. The Web build succeeded.

## Verification

Latest validation after moving incomplete and duplicate catalogs to pending,
and activating the six best-effort drafts noted above:

- All locale ARB files pass key and placeholder parity.
- The searchable catalog contains 226 entries; the installed-module registry contains 185.
- AOSP base-language catalog audit: 225 of 225 represented, including pending entries.
- No active locale reuses another active locale's complete message catalog.
- `flutter test`: 275 tests passed.
- `flutter analyze`: no issues.
- `flutter build web`: succeeded.
- `git diff --check`: clean.

Accessibility automation covers icon semantics/tooltips, tap target expectations, and 200% dynamic text for key Settings/theme controls. A physical screen-reader audit remains unverified.

## Next Work

1. Import regional/script variants from a versioned AOSP snapshot, preserving exact subtags.
2. Build canonical mapping and fallback resolution from exact regional/script tags to base-language modules.
3. Review machine-generated wording and English fallback strings as volunteer review capacity permits.
4. Decide whether to include remote regional variants or keep the offline catalog local-only.
