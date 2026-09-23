@AGENTS.md

# SG500 TABLES Host Companion: project guide

Keep this file current and short. After every change, remove anything stale and fold new facts into the sections below. It is the handover.

**Read these first. They are the contract; this file is the running commentary:**
`RULES.md` (content grounding, confidentiality, DRY-at-4, KISS) · `SCHEMA.md` (where state lives: no DB) · `SKILLS.md` (which skill wins which job) · `AGENTS.md` (roles, phase gating). `PRD.md`, `ARCHITECTURE.md` and `DESIGN.md` are stubs until BMAD runs. Anything below that contradicts the contracts is stale and should be fixed here, not there.

## 1. What this is

A time-poor host's companion for **SG500 TABLES** (25–27 Sep 2026, Singapore), the pre-forum discernment gathering before the SG500 Asia Cities Forum. It has three parts:
- `guide/HOST-GUIDE.md`: the public-safe process and logistics guide plus FAQ
- `private/KNOWLEDGE.md` and `private/briefs/`: the full distilled pack
- a private claude.ai page (run sheet, checklist, Open briefs, toolkit, FAQ, Ask) at https://claude.ai/artifact/DH844nLpD2BxKAAZiLdQrU

The owner hosts an **Open Highways** table. Which lane (Digital or Business) is unconfirmed, so both are covered.

## 2. How to work on it

- Edit content in markdown, then run `python3 private/companion/build.py`, then republish `private/companion/tables-host-companion.html` to the same URL.
- Refresh sources with the Google Drive connector. The file IDs are in the comment on the first line of each `private/sources/*.md`.
- Run `scripts/check-public.sh` before any commit.

## 3. Gotchas that cost real time

- **The repo is public.** Everything sensitive lives in gitignored `private/`. Moving a file out of `private/` publishes it.
- **The Fact Sheet disagrees with itself and with the papers** on several times and formats (see `[GAPS]` in KNOWLEDGE). Don't "fix" these by picking one; record both.
- **Some sources were only partly readable.** The e-book PDF text is truncated at about chapter 5. The Padlet is JS-rendered, so its entries didn't load. The 2024 report's feedback percentages contradict each other. The seven Open videos are untranscribed.

## 4. Working with Bennett

The owner is short on time before the gathering. Lead with the answer and keep outputs scannable. Ask before sharing or pushing anything.
