# RULES: content and implementation

## Principles

1. **SOLID.** One responsibility per file and per function. `build.py` assembles; the template renders; the markdown files hold content. Keep them that way.
2. **DRY at 4.** Extract a shared helper only when the same logic appears 4 or more times. Below that, repetition is acceptable and clearer. The wrong abstraction couples callers that had no reason to be coupled, and it costs more to unwind than the duplication cost to tolerate. (The page's schedule array repeats the run-sheet table on purpose. That's two copies, not four.)
3. **KISS.** Ship the simplest thing that serves a host on a phone at the venue. No framework, no bundler, no server.

## Stack rules (Markdown + one static HTML page)

- **Single source.** Content lives in markdown: `private/KNOWLEDGE.md`, `private/briefs/*.md` and `guide/HOST-GUIDE.md`. The page embeds them verbatim at build time. Edit the markdown, then run `python3 private/companion/build.py`. Never hand-edit `tables-host-companion.html`.
- **Stable section IDs.** `KNOWLEDGE.md` sections are `## [ID] Title`. The page and the Ask tab cite these IDs, so renaming one is a breaking change.
- **Page constraints.** External scripts are allowed from cdnjs only (pinned versions). No `alert` or `print`. `localStorage` is only for per-viewer conveniences, wrapped in try/catch. It must work at 375px width.
- **Ask prompt budget.** The KNOWLEDGE pack, both Highways briefs and the rules must stay under the `sample` input cap (64 KiB). The other briefs go through the `read_section` tool. Check sizes after growing any file: `wc -c private/KNOWLEDGE.md private/briefs/*.md`.

## Content rules

- **Never invent.** No time, name, venue, number or cost that isn't in a source doc. Unknowns go in `[GAPS]` with who to ask (Joshua: logistics; Tim Wong: speakers and programme).
- **Cite.** Every FAQ answer ends with a source tag (`[FS]`, `[Papers]`, `[TDA]`, `[2024 report]`). KNOWLEDGE facts name their source key.
- **Keep confidence markers.** The papers' bracketed confidence labels (Likely / Guessing / Certain) travel with the claim, verbatim.
- **Flag conflicts, don't resolve them.** When two docs disagree, record both and add a `[GAPS]` entry.

## Security and confidentiality rules

- The GitHub repo is **public**. The concept papers are marked as not for circulation without permission.
- `private/` is gitignored and never committed. It holds raw sources, the knowledge pack, the briefs and the page build.
- Committed files hold **process and logistics only**. They carry no partner or organisation names from the papers, no speaker or panelist names, no closed-access or politically sensitive city specifics, and no email addresses.
- Partners are approached privately, through relationship, never publicly or with SG500 branding. The page says so wherever partners appear.
- The published page stays private. Sharing it with other hosts is the owner's decision, made in claude.ai's Share menu.

## Data rules

There is no database. See `SCHEMA.md` for where state lives. The Drive docs are the upstream truth: re-pull before trusting the cache in `private/sources/`.

## Process rules

- `PRD.md` is still a stub. Until it's filled, the approved plan (`~/.claude/plans/before-scaffolding-understand-the-distributed-garden.md`) is the scope contract. Work outside it stops and asks.
- **Check before every commit:** `scripts/check-public.sh`. It fails if anything under `private/` is tracked, or if a committed file matches a sensitive pattern.
- Commit on a branch. Push only when the owner says so.

## Prefer enforcement over prose

A rule a script or CI check can enforce belongs there. `scripts/check-public.sh` enforces the confidentiality rule above. Extend its denylist rather than adding prose here.
