# AGENTS: who does what

## Roles

| Role | Who | Does | Never does |
|---|---|---|---|
| Owner / TABLE host | Bennett | Sets scope, approves plans, decides what gets shared and with whom, pushes to GitHub | — |
| Planner / author | Claude (main session) | Reads sources, writes plans, authors KNOWLEDGE, briefs and the guide, builds and publishes the page | Pushes, shares the artifact, or commits `private/` |
| Researcher | Claude subagent (background) | Pulls Drive docs, summarises large PDFs, writes only to the file named in its brief | Edits content files other than its target, touches git |
| Upstream authors | SG500 team (Drive doc owners) | Own the Fact Sheet and Open papers | — |

## Brief format for a subagent

Every brief is self-contained. It gives the exact file IDs or URLs to read, the one output path to write, the format and length limit, "facts in the document only; quote numbers exactly; say if truncated", and what it must not touch (git, other files). A brief that assumes the subagent shares this conversation's context is the usual failure, because the subagent starts cold every time.

## Phase gating

1. **Plan.** Proceed only after the owner approves it. The plan is the scope contract while `PRD.md` is a stub.
2. **Ingest.** Refresh `private/sources/` from Drive.
3. **Distil.** Edit `KNOWLEDGE.md`, the briefs and `HOST-GUIDE.md`, following the content rules in `RULES.md`.
4. **Build and publish.** Run `python3 private/companion/build.py`, then republish the same file path.
5. **Commit.** `scripts/check-public.sh` must pass first. Commit on a branch. Push only on the owner's word.

## Handover

Open `CLAUDE.md` first. It says what's current and what went wrong last time. For "what changed in the docs," re-pull the Fact Sheet from Drive: hosts are filling in its tabs during the gathering, so the cache goes stale fast.

<!-- bmad:context -->
<!-- bmad-project-context manages this block. Run it once the repo has real code to scan;
     it path-checks every claim it writes, so running it against an empty repo produces
     guesses or nothing. Everything above these markers is preserved across its runs. -->
<!-- /bmad:context -->
