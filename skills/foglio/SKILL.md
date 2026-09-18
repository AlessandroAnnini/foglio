---
name: foglio
description: >-
  Creates a single-file HTML documentation page with the Foglio kit.
  Use when the user mentions Foglio, asks to use the Foglio skill,
  or asks to write a Foglio page.
disable-model-invocation: true
metadata:
  version: "1.0.0"
---

# Foglio

Single-file HTML documentation. Copy the skeleton, fill slots, keep frozen chrome.

## When

Load this skill only when the user names Foglio or asks to use this skill.

## Protocol

1. Resolve the skill directory: the folder that contains this `SKILL.md`.
2. Read [RECIPE.md](RECIPE.md) in that folder.
3. Name the document type from the source (spec, procedure, notes, map, training, runbook, or other). Choose section ids and labels from that material. Do not copy the specimen outline unless you are writing a design-system page.
4. Copy `assets/skeleton.html` to the output path with a filesystem `cp`. Do not retype `<style>`, boot, theme menu, dialog, or runtime.
5. Set `html lang` if needed. Fill only `<!-- llm-slot:... -->` regions. Keep every `<!-- llm-frozen:... -->` region byte-identical.
6. Sync `#nav-links` and `#sec-select` with every `section[id]`, same order, same labels. Never id a section `mermaid`. Use `diagrams` if the page has Mermaid.
7. Apply the writing rules in the recipe to every title, label, heading, paragraph, table cell, caption, aria-label, and diagram note.
8. Stop. Do not restyle, minify, or rewrite frozen chrome.

Output budget: slots only. Chrome is already correct.

## Notes last

Put project notes, the date, and the transcript after the recipe and the skeleton. Do not feed the full specimen when the recipe plus the skeleton is enough.

Open a painted catalog only when you need to see a block. If `catalog.html` is not on disk, fetch `https://raw.githubusercontent.com/AlessandroAnnini/foglio/main/catalog.html`.

## Drift

If chrome drifted, restore frozen blocks from `assets/skeleton.html`. Do not patch CSS by hand.
