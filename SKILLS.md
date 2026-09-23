# Skills and agents for SG500 TABLES

One winner per job. When several installed skills could plausibly handle a task, this table decides. It also names the ones not to pick, since those are what get chosen by mistake.

**This project has no BMAD-backed planning path yet.** BMAD isn't installed, so `bmad-prd`, `bmad-architecture`, `bmad-ux` and `bmad-project-context` can't win any row. Install with `npx bmad-method@latest install` after the gathering if the project continues.

## Routing

| Job | Winner | Not these |
|---|---|---|
| Scaffold or gap-fill the planning docs | `scaffold-project` | `init`, `document-generate` |
| Build or restyle the hosted page | `artifact-design` guidance, via the Artifact tool's quickstart | `design-html`, `design-consultation`, `design-shotgun`, `figma:*` |
| Add runtime behaviour to the page (Ask, storage) | `artifact-capabilities` | hand-rolled `localStorage` for shared state |
| Pull or refresh source docs | Google Drive connector (`read_file_content`) | WebFetch on docs.google.com (auth-walled) |
| Summarise a large PDF source | a background subagent with the Drive connector | reading the PDF inline in the main session |
| A printable one-pager of the guide | `make-pdf` | `anthropic-skills:docx`, `anthropic-skills:pdf` |
| Review a change | `/code-review` | `review`, `plan-eng-review`, `plan-design-review` |
| Simplify the page script | `/simplify` | `health`, `review` |
| Debug the page | `investigate` | `qa` |
| Product requirements (later) | `bmad-prd` once installed | `spec`, `office-hours` |

## Delegating to a subagent

Suggest a subagent; don't auto-delegate. A subagent earns its cost for broad fan-out, such as re-pulling all nine Drive docs, or for independent parallel work such as summarising two large PDFs. For a single known file, go direct.

## Not in scope here

The social-media and content suite (caption-writer, carousel-writer, linkedin-*, reels-script, canva, capcut and the rest), the iOS suite (`ios-*`), the gstack deploy and QA suite (`ship`, `land-and-deploy`, `canary`, `benchmark`), and Figma. They're installed globally but don't compete for any job in this project.

## Maintaining this file

Re-check it when the installed skill set changes. A row naming a skill that's no longer installed sends the agent after something that isn't there, which is worse than having no table. When BMAD is installed, move its four skills into the winner column.
