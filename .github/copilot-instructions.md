# Cyber Bible — Copilot / Agent Instructions

> These instructions apply to every AI agent and Copilot conversation in this workspace.
> Read them fully before taking any action.

## About This Project

Cyber Bible is a free/libre and open source (GPL 3.0) Bible study app built with Flutter & Dart.
It targets Android, iOS, Windows, macOS, Linux, and Web from a single codebase.
Bible data comes from eBible.org (USFX XML format) and is stored in per-translation SQLite databases.

**Start here for full context:**
- `cyber_bible_app/PROJECT_STATUS.md` — current step, architecture decisions, and full roadmap
- `cyber_bible_app/docs/design-document.md` — complete design vision and feature plan

## Roadmap Preservation — Required

`cyber_bible_app/PROJECT_STATUS.md` is the canonical, persistent project roadmap.
Keeping the complete plan visible is required so the team can make decisions
against the agreed sequence of work.

- Never delete, truncate, replace, or summarize away the `Development Roadmap`
  section, its phase descriptions, or its step-by-step task tables when updating
  project status or preparing a handoff.
- Update the existing roadmap in place: mark completed work, revise an outdated
  task, or add newly agreed work while retaining the other phases and steps.
- Keep `Current Status` and the roadmap consistent. State the active/completed
  step, key progress, and the next planned roadmap task; do not leave a stale
  “Next” instruction that conflicts with the roadmap.
- Before editing `PROJECT_STATUS.md`, inspect its roadmap and the diff from the
  starting revision. After editing, verify that `## Development Roadmap` and all
  existing phase headings and step rows are still present.
- If roadmap content appears obsolete, contradictory, or too large to preserve,
  discuss the proposed change with the developer first. Do not remove it on an
  agent's own initiative. Restore accidentally removed roadmap content from Git
  history before continuing.
- Best-effort AI translations may be selectable without human review; do not
  make paid or volunteer translation review a prerequisite. Do not mark a
  module installed merely because an ARB file exists or has complete keys:
  replace broad English fallthrough with target-language AI text, do not copy
  a whole catalog from another language, and keep only clearly untranslated or
  mislabeled bundles pending. Preserve AI provenance and validate keys and
  ICU placeholders.
- Treat active ARB files as the source of truth and regenerate Dart localization
  classes with `flutter gen-l10n`. Do not add temporary per-language or
  per-batch translation scripts to the repository; retain a generator only when
  it is a documented, reusable project tool with explicit inputs and validation.

---

## Team Context

- Small volunteer team (2–5 people), donor-funded. Keep explanations beginner-friendly.
- Primary developer is new to Flutter/Dart — always explain non-obvious decisions.
- Primary test platform is Android, but all platforms are equal targets.

---

## Code Standards

- **All code and all changes must have thorough comments for full human readability.**
  Every function, class, constant, and non-obvious block must be commented.
  This is a hard requirement — never skip or reduce comments.
- Follow existing file and naming conventions observed in `lib/` and `tools/`.
- Use `dart analyze` to confirm no issues before considering code complete.

---

## Step Completion Checklist

**After completing every development step (1.1, 1.2, 1.3, etc.), work through this
checklist in order. Do not move on to the next step until all items are resolved.**

The AI agent is responsible for items marked **[AGENT]**.
Items marked **[HUMAN]** require the developer to act — prompt them explicitly and
wait for confirmation before proceeding.

### Group 1 — Development Quality

1. **[AGENT] Comments** — Does every new or changed function, class, and non-obvious
   block have a thorough comment? The code must be fully human-readable without
   needing to inspect surrounding context.

2. **[AGENT] New tests written** — If this step added any pure Dart logic (parsers,
   services, utilities, model methods), write unit tests for that logic now, as part
   of this step. UI-only steps (building a screen widget) may defer widget tests, but
   must leave an explicit note in `PROJECT_STATUS.md` identifying the deferred tests.
   Tests that can be written must be written before the PR is opened.

3. **[AGENT] All tests pass** — Run `flutter test` from `cyber_bible_app/` for
   the unit/widget suite. Then run each browser integration test separately
   from that directory, with a matching ChromeDriver running on port 4444. For
   the current IndexedDB migration test, use:

   ```sh
   flutter drive \
     --driver=test_driver/integration_test.dart \
     --target=integration_test/bible_database_migrator_web_test.dart \
     -d web-server
   ```

   `flutter test` does not discover or execute the `integration_test/` suite.
   Run the `flutter drive` command for every integration test file added in
   the future. Do not report the test suite as fully passing if ChromeDriver is
   unavailable or a browser test was skipped. Resolve the setup issue or
   explicitly mark validation blocked and get developer guidance before
   handoff.

4. **[AGENT] App runs** — Confirm the app still builds and launches without errors.
   For most steps, run `flutter analyze` as a minimum; for UI steps, do a full
   `flutter run`.

5. **[AGENT] Design alignment** — Do all changes follow the design goals in
   `docs/design-document.md` and the architecture decisions in `PROJECT_STATUS.md`?
   Call out any deviation and discuss before continuing.

6. **[AGENT] Accessibility (a11y) compliance** — Does every new or changed UI element
   meet full accessibility requirements? Check all of the following before marking
   this item complete:
   - **Semantic labels** — Every interactive widget (buttons, icons, images) has a
     meaningful label that a screen reader will announce. Icon-only or chevron-only
     buttons must have an explicit `Semantics(label: ...)` or `tooltip`; labels must
     include directional/contextual context, not just a destination reference.
   - **Tap targets** — Every tappable element is at least 48 × 48 dp (Material
     minimum). Use `VisualDensity` or `minimumSize` on buttons if needed.
   - **Contrast** — Foreground text and icons use the correct `on*` color token for
     their background (e.g. `onPrimaryContainer` on `primaryContainer`). Never leave
     the default `colorScheme.primary` foreground on a `primaryContainer` background.
   - **Focus order** — On desktop/web, tab-focus order matches the visual reading
     order. Use `FocusTraversalOrder` or `FocusScope` only when the default is wrong.
   - **Keyboard operability** — Every action reachable by touch/mouse is also
     reachable by keyboard. Do not consume key events (return `handled`) unless
     the action will actually execute — never swallow keys at boundaries or when
     modifier keys are held.
   - **Dynamic text** — All text scales with `textScaleFactor`; no layout breaks at
     200 % scale. Avoid hard-coded pixel font sizes for body text.
   - **No information conveyed by color alone** — Icons, borders, or labels must
     supplement any color-only distinction.
   - **ExcludeSemantics / MergeSemantics used correctly** — `excludeSemantics: true`
     on a `Semantics` inside a button child suppresses redundant child labels while
     keeping the button's own tap-action node intact. Never wrap an entire interactive
     widget in `ExcludeSemantics` — that strips the tap action from the a11y tree.
   If any item above is not met, fix it before proceeding. Note any items that are
   intentionally deferred (with justification) in `PROJECT_STATUS.md`.

7. **[AGENT] Core documents current** — Do `PROJECT_STATUS.md` and
   `docs/design-document.md` still accurately reflect the project? Update them
   if anything has changed or been clarified during this step.

### Group 2 — Wrap-up and Handoff

8. **[AGENT] PROJECT_STATUS.md updated** — Update the "Current Status" section to
   reflect the completed step, what was built, key numbers/facts, and what comes next.

9. **[AGENT] Agent memory updated** — Update `/memories/repo/cyber-bible.md` if
   your agent environment provides that path (this is an external VS Code Copilot
   memory path, not a tracked file in this repository). If that path is unavailable,
   record the same handoff context in `cyber_bible_app/PROJECT_STATUS.md` so future
   agents can recover the necessary context without re-reading all files.

10. **[HUMAN] Commit and push** — Prompt the developer to commit all changes with a
    clear commit message and push to the remote. Do not do this yourself.
    Wait for the developer to confirm before continuing.

11. **[HUMAN] Open a PR** — Prompt the developer to open a Pull Request for this step.
    Offer to draft the PR title and description. Wait for confirmation.

12. **[HUMAN] PR reviewed** — Remind the developer to request a Copilot code review
    on the PR. Do not start the next step until the developer confirms the review
    is complete.

13. **[HUMAN] PR comments addressed** — Ask the developer whether any review comments
    need to be addressed before merging. Do not start the next step until the
    developer confirms all comments are resolved or intentionally deferred.

14. **[HUMAN] PR merged** — Ask the developer to merge the PR into the main branch
    once all review comments are resolved. Do not start the next step until the
    developer confirms the merge is complete.

15. **[HUMAN] New branch created** — Before starting the next step, prompt the
    developer to create and check out a new branch named for that step
    (e.g. `step/1.6-bundle-bible`). Do not begin any code changes until the
    developer confirms they are on the new branch.

---

## Architecture Decisions (Quick Reference)

| Decision | Choice | Notes |
|----------|--------|-------|
| Bible source format | USFX XML from eBible.org | Converts easily to/from USFM and USX |
| Internal storage | SQLite (one `.db` per translation) | Located in `assets/bibles/` |
| Chapter storage | Raw USFX XML fragments | Rendered to HTML at runtime |
| Verse storage | Plain text | FTS5 full-text search |
| Build tool | `dart tools/build_bible_db.dart` | CLI only, uses `sqlite3` package (dev dependency) |
| App DB reader | `sqflite` or `drift` (Step 1.7) | Separate from the build tool |
| Text rendering | HTML + CSS via widget | Allows dynamic user preferences |
| Versification sync | Hub-and-spoke (NRSV-based) | Phase 3 |
| Privacy | No server-side user data | Bookmarks/notes via user's own cloud |
| License | GPL 3.0 | All contributions must be GPL 3.0 compatible |

## Key Files

| File | Purpose |
|------|---------|
| `cyber_bible_app/PROJECT_STATUS.md` | Current step, roadmap, architecture log |
| `cyber_bible_app/docs/design-document.md` | Full design vision |
| `cyber_bible_app/lib/models/bible_schema.dart` | SQLite schema definitions |
| `cyber_bible_app/lib/models/` | Dart data models (BibleInfo, Book, Chapter, Verse) |
| `cyber_bible_app/tools/build_bible_db.dart` | USFX parser + SQLite DB writer (build tool) |
| `cyber_bible_app/assets/bibles/eng-web.db` | Generated WEB Bible database (committed to git) |
| `cyber_bible_app/tools/data/` | Raw USFX source files (gitignored, 18 MB) |
| `/memories/repo/cyber-bible.md` | AI agent memory for this repo |
