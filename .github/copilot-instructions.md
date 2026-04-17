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

2. **[AGENT] Tests pass** — Run `flutter test` from `cyber_bible_app/`. All existing
   tests must still pass. If the step added new testable logic, note what tests
   should be written (test authoring is its own step).

3. **[AGENT] App runs** — Confirm the app still builds and launches without errors.
   For most steps, run `flutter analyze` as a minimum; for UI steps, do a full
   `flutter run`.

4. **[AGENT] Design alignment** — Do all changes follow the design goals in
   `docs/design-document.md` and the architecture decisions in `PROJECT_STATUS.md`?
   Call out any deviation and discuss before continuing.

5. **[AGENT] Core documents current** — Do `PROJECT_STATUS.md` and
   `docs/design-document.md` still accurately reflect the project? Update them
   if anything has changed or been clarified during this step.

### Group 2 — Wrap-up and Handoff

6. **[AGENT] PROJECT_STATUS.md updated** — Update the "Current Status" section to
   reflect the completed step, what was built, key numbers/facts, and what comes next.

7. **[AGENT] Agent memory updated** — Update `/memories/repo/cyber-bible.md` so
   future AI agents have accurate context without re-reading all files.

8. **[HUMAN] Commit and push** — Prompt the developer to commit all changes with a
   clear commit message and push to the remote. Do not do this yourself.
   Wait for the developer to confirm before continuing.

9. **[HUMAN] Open a PR** — Prompt the developer to open a Pull Request for this step.
   Offer to draft the PR title and description. Wait for confirmation.

10. **[HUMAN] PR reviewed** — Remind the developer to request a Copilot code review
    on the PR. Do not start the next step until the developer confirms the review
    is complete.

11. **[HUMAN] PR comments addressed** — Ask the developer whether any review comments
    need to be addressed before merging. Do not start the next step until the
    developer confirms all comments are resolved or intentionally deferred.

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
