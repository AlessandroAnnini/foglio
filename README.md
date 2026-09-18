# Foglio

A foglio is the sheet. This kit is that sheet: one HTML file, complete, ready to open or send.

Live page: [alessandroannini.github.io/foglio](https://alessandroannini.github.io/foglio/)

Copy [skeleton.html](skeleton.html) to write a page. The rules sit in [RECIPE.md](RECIPE.md). [catalog.html](catalog.html) is a catalog of allowed blocks, not a required table of contents. [index.html](index.html) is this project's own page, built from the skeleton. The outline comes from your source.

Works for specifications, procedures, meeting notes, use-case maps, training, runbooks, API notes, and research summaries.

## Features

- One self-contained HTML file. No build step, no package manager.
- Any document type. Sections come from the source, not from the specimen.
- Locked chrome. Copy the skeleton and fill `llm-slot` regions only. CSS, theme menu, dialog, and runtime stay byte-identical.
- A closed block catalog: hero, section, cards, badges, callouts, tables, prose, buttons, Mermaid, SVG flow.
- A recipe written for any LLM. Static prefix first, project notes last, so prompt cache can hit.
- [llms.txt](llms.txt) so a model loads only the files it needs.
- Writing rules in the recipe: ASCII source, no AI filler, body text first.
- Fluid type from Utopia (360/18/1.2 to 1240/20/1.25). Inter for reading, JetBrains Mono for labels and code.
- Prose wraps at 65ch. The page shell can go to 72rem for cards and diagrams.
- Three themes: light, dark, and system (the default). Choice persists in `html-docs-theme`.
- Icon-only theme control, 2.5rem hit area. The menu still names Light, Dark, and System.
- Sticky section jump. When the names overflow, it becomes a native select.
- Mermaid 11 from source text. Theme tokens pass as hex. Every graph has an expand dialog (X, Escape, or backdrop to close).
- Interactive SVG flow for static HTML. Edit `#flow-data` JSON only. React Flow only if the host already runs React.
- Motion on transform and opacity, 160 to 400ms. `prefers-reduced-motion` is honored.
- WCAG 2.2 AA: body 4.5:1, UI 3:1, 200% zoom, visible focus, native `dialog` for the graph lightbox.
- `html lang` matches the document. Italian, English, or other.
- GitHub Pages ready: `index.html` is the project page at the repo root. Live at [alessandroannini.github.io/foglio](https://alessandroannini.github.io/foglio/).

## Contents

| File | Role |
|---|---|
| [index.html](index.html) | Project page (GitHub Pages) |
| [catalog.html](catalog.html) | Specimen and visual catalog |
| [skeleton.html](skeleton.html) | Start file: frozen chrome, empty slots |
| [RECIPE.md](RECIPE.md) | Protocol, writing rules, tokens, catalog |
| [llms.txt](llms.txt) | Index for language models |
| [LICENSE](LICENSE) | MIT |
| [CONTRIBUTING.md](CONTRIBUTING.md) | How to change the kit |

Inter and JetBrains Mono load from Google Fonts. Mermaid 11 loads from jsDelivr.

## Getting started

Clone this repository, or copy `RECIPE.md` and `skeleton.html` into the folder you want to document. Add `catalog.html` only when the model needs to see a painted block.

Name the document type from the source: spec, procedure, notes, map, training, runbook, API notes, or other. Gather the notes, transcript, or file list that belong on the page. Those notes go last in the prompt.

Ask the model to copy `skeleton.html` to an output path and fill only the `llm-slot` regions. Do not ask it to write CSS or to start from a blank HTML file.

```
Read RECIPE.md first, then skeleton.html.
Document type: runbook (or spec, notes, ...).
Copy skeleton.html to docs/overview.html.
Fill llm-slot regions only. Keep llm-frozen regions byte-identical.
Source notes:
<paste notes here>
```

### Cursor

Open the Foglio folder, or add the two kit files to the project. In chat, attach `@RECIPE.md` and `@skeleton.html`, then `@` or paste your notes. Ask the agent to copy the skeleton to the output path and stop after the slots.

### Visual Studio Code

Same files, same order. In GitHub Copilot Chat, attach them with `#file:RECIPE.md` and `#file:skeleton.html` (or `@` if your build uses that). In the Claude Code extension, type `@RECIPE.md` and `@skeleton.html`. Then add the source and the output path.

### Claude Code

From a terminal in the project (or with the kit on disk), ask Claude to read `RECIPE.md` and `skeleton.html` first, then the source notes. Give it an output path. It can copy the skeleton on disk. Do not let it regenerate the stylesheet.

### ChatGPT, Claude, and other chat UIs

Upload or paste `RECIPE.md` and `skeleton.html` first. Put the project notes in the last message. Ask for one complete HTML file. Download it and open it in a browser.

Windsurf, Cline, Continue, and similar hosts follow the same order: recipe and skeleton in the prefix, notes last, one output path, slots only.

### After it stops

1. Check that `#nav-links` and `#sec-select` match every `section[id]`, same order, same labels. Do not id a section `mermaid`.
2. Leave every `<!-- llm-frozen:... -->` region untouched. If CSS changed, restore those blocks from `skeleton.html`.
3. Open the HTML file. Switch Light, Dark, and System. Expand a diagram if you asked for one.

The writing rules and the full prompt shape sit in [RECIPE.md](RECIPE.md). The live page walks the same steps under [Getting started](https://alessandroannini.github.io/foglio/#start).

## GitHub

Repository: [github.com/AlessandroAnnini/foglio](https://github.com/AlessandroAnnini/foglio)

Project page: [alessandroannini.github.io/foglio](https://alessandroannini.github.io/foglio/)

## License

MIT. See [LICENSE](LICENSE).
