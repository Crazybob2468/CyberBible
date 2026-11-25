# Phase 1.17 — UI Localization Status Report

## Executive Summary

Phase 1.17 established Flutter localization, system-language selection, a persisted manual override, a searchable local language catalog, and a versioned module boundary. The app exposes **218 installed UI language modules** from a searchable catalog of 226 language codes. Eight bundles remain pending because their current strings are unrelated-language or untranslated placeholders.

All **225 AOSP base language codes** remain represented in the catalog after resolving the legacy Android tags `in` and `iw` to Indonesian (`id`) and Hebrew (`he`), but the eight pending modules are not selectable. The catalog contains one extra entry, Nyanja (`ny`). Regional/script variants such as `pt-BR`, `pt-PT`, `zh-Hans-CN`, and `zh-Hant-TW` remain future exact-tag work rather than missing base languages.

## Phase Goal

The intended end state is that users can choose any UI language offered by Android, the app can select the best matching locale from the OS preference list on first launch, and users can search for and choose languages directly in Settings. Language modules should remain local/offline-capable. English is the permanent fallback.

The phase also adopts the user-approved quality policy: UI translations may be machine-generated, can contain imperfect wording, and do not require human review before inclusion. Every module must preserve the full message and ICU-placeholder contract. If a translation service alters a placeholder, that individual message remains in English rather than shipping a broken interpolation; the fallback count is recorded below.

## Decisions Made

- **Local-first modules:** No remote language hosting is available. Current modules are bundled in the app and work offline.
- **OS language by default:** In system mode, Flutter receives the platform locale list and chooses the first supported module. A manual language selection persists until system mode is re-enabled.
- **Fallback behavior:** If no installed locale matches, the app uses English. Unsupported isolated locale lookups also fall back to English.
- **Searchable catalog:** The Settings picker searches language code, English name, native name, and aliases. Installed modules are selectable; entries without a bundle are shown as pending rather than falsely enabled.
- **Translation approach:** AI-generated UI strings are acceptable despite possible imperfections. The Bible text itself is runtime content from Bible modules and is not included in UI localization files.
- **Framework control strings:** Flutter does not provide Material/Cupertino translations for every app locale. For those locales, app-specific strings are localized while framework controls use the English fallback delegates.
- **macOS support:** macOS 12 is the accepted minimum because the current Flutter toolchain upgrades the macOS deployment target to 12.0.

## Delivered

- Flutter `gen-l10n` configuration, English template ARB, generated localization classes, and app localization delegates.
- Persisted system-language preference and manual language override.
- Searchable local language catalog with native names, aliases, installed status, and module provenance/schema metadata.
- 218 installed local modules. Each active ARB has 147 non-locale keys matching English and exact ICU placeholder parity.
- Haryanvi (`bgc`) retains 8 English fallbacks; Asu (`asa`) 5. Ligurian 2, Lombard 8, Chiga 3, Silesian 8, and Tamazight 7 also retain documented fallbacks.
- Aghem (`agq`), Anii (`blo`), Masai (`mas`), Meru (`mer`), Makhuwa-Meetto (`mgh`), North Ndebele (`nd`), Ngiemboon (`nnh`), and N’Ko (`nqo`) remain visible in the catalog as pending, not installed.
- Localization of the app shell, Settings, home, book and chapter selection, reading, bookmarks, themes, navigation, error messages, accessibility labels, and testament section labels.
- Runtime OS locale matching, unsupported-locale fallback, and regression tests for locale ordering and overrides.
- Fixes for chapter and reading screens that called inherited localization lookup during `initState`, causing uncaught exceptions and permanent loading spinners.
- A dedicated ARB contract test that checks every locale file for complete key and placeholder parity.

The five low-resource modules `lu`, `luo`, `luy`, `ln`, and `kea` were revised after an earlier helper generated repeated category words. They now contain 124–129 distinct UI values each and satisfy the full key/placeholder contract. Kurdish (`ku`) was completed as module 117, followed by Maltese (`mt`), Māori (`mi`), Malagasy (`mg`), Luxembourgish (`lb`), Interlingua (`ia`), Tongan (`to`), Turkmen (`tk`), Tatar (`tt`), Occitan (`oc`), Romansh (`rm`), Low German (`nds`), Mauritian Creole (`mfe`), Pashto (`ps`), Uyghur (`ug`), Cantonese (`yue`), Venetian (`vec`), Sanskrit (`sa`), Wolof (`wo`), Interlingue (`ie`), Swiss German (`gsw`), Tajik (`tg`), Tigrinya (`ti`), Ewondo (`ewo`), Nyankole (`nyn`), Shona (`sn`), Ossetian (`os`), Sardinian (`sc`), Sango (`sg`), Nuer (`nus`), Sena (`seh`), Chuvash (`cv`), Inari Sami (`smn`), Zhuang (`za`), Nheengatu (`yrl`), Yakut (`sah`), Santali (`sat`), Kamba (`kam`), Gikuyu (`ki`), Dogri (`doi`), Bodo (`brx`), Cornish (`kw`), Colognian (`ksh`), Basaa (`bas`), Bena (`bez`), Samburu (`saq`), Sangu (`sbp`), Kirundi (`rn`), Sindhi (`sd`), Silesian (`szl`), Tamazight (`tzm`), Chechen (`ce`), Chiga (`cgg`), Ligurian (`lij`), and Lombard (`lmo`). Their wording is machine-generated and has not been human-reviewed.

## Coverage and Remaining Scope

- Current app catalog: **226 language codes**, with 218 installed and 8 pending.
- AOSP base-language catalog coverage: **225 of 225**; pending languages are not selectable.
- Extra catalog entry: Nyanja (`ny`) is not a separate base code in the current AOSP locale config snapshot.
- Regional/script variants remain future exact-tag work.

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

Latest recorded validation for the current 218-installed-module state:

- All locale ARB files pass key and placeholder parity.
- The searchable catalog contains 226 entries; the installed-module registry contains 218.
- AOSP base-language catalog audit: 225 of 225 represented, including pending entries.
- `flutter test`: 273 tests passed.
- `flutter analyze`: no issues.
- `git diff --check`: clean.

Accessibility automation covers icon semantics/tooltips, tap target expectations, and 200% dynamic text for key Settings/theme controls. A physical screen-reader audit remains unverified.

## Next Work

1. Import regional/script variants from a versioned AOSP snapshot, preserving exact subtags.
2. Build canonical mapping and fallback resolution from exact regional/script tags to base-language modules.
3. Review machine-generated wording and English fallback strings as volunteer review capacity permits.
4. Decide whether to include remote regional variants or keep the offline catalog local-only.
