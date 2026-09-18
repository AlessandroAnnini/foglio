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

## Write a page

1. Copy `skeleton.html` to a new file.
2. Fill only the `<!-- llm-slot:... -->` regions (title, logo, nav, hero, sections, footer).
3. Leave every `<!-- llm-frozen:... -->` region untouched.
4. Follow the writing rules in `RECIPE.md`.
5. Match `#nav-links` and `#sec-select` to your `section[id]` list. Do not id a section `mermaid`.

An LLM should load `RECIPE.md` and `skeleton.html`, then your notes. Do not ask it to regenerate the CSS.

## GitHub

Repository: [github.com/AlessandroAnnini/foglio](https://github.com/AlessandroAnnini/foglio)

Project page: [alessandroannini.github.io/foglio](https://alessandroannini.github.io/foglio/)

## License

MIT. See [LICENSE](LICENSE).
