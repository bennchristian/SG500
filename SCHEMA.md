# SCHEMA: SG500 TABLES Host Companion

**No database.** This project is markdown content plus one static page. There are no tables, no migrations and no access policies to describe. This file exists to record where state lives, since none of it shows up in a schema dump.

## Content files (source of truth in this repo)

| File | Tracked | Holds |
|---|---|---|
| `guide/HOST-GUIDE.md` | yes (public) | Process and logistics guide and FAQ. Embedded in the page (run sheet and FAQ tabs) |
| `private/KNOWLEDGE.md` | **no** | Full distilled pack with `## [ID]` sections. Embedded in the page and the Ask prompt |
| `private/briefs/<ID>.md` | **no** | One brief per Open: `DIG`, `BIZ`, `HEAV`, `HEART`, `HOMES`, `HALL`, `NEXTGEN`. The file stem is the ID |
| `private/sources/*.md` | **no** | Verbatim Drive exports and PDF/Padlet summaries. A cache, not the truth |
| `private/companion/tables-host-companion.html` | **no** | Build output. Regenerate, never edit |

## Off-store state

- **Google Drive (upstream truth).** The TABLES Fact Sheet, the Ten Days of Awe note, and seven Open concept papers (owned by the SG500 team). Two PDFs: the 2024 Forum report and the *Why Asian Cities* e-book. They can change without notice: the Fact Sheet's working tabs are being filled in by hosts.
- **Padlet prayer guide** (bit.ly/SG500PrayerGuide). JS-rendered, so its entries aren't cached here.
- **Seven Open videos** (Drive). Not transcribed and not in the pack.
- **Published artifact:** https://claude.ai/artifact/DH844nLpD2BxKAAZiLdQrU. Private. Declares only the `sample` capability. Republish from `private/companion/tables-host-companion.html`.
- **Viewer's browser `localStorage`:** checklist ticks, last tab, last brief. Per viewer and per device. Never reaches other viewers or Claude.
- **Viewer's Claude account:** Ask questions run on, and are billed to, whoever is viewing.

## Keeping this true

When a new content file, ID or published page is added, add its row here in the same change.
