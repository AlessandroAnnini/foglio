# Contributing

Change the kit, not a generated page.

1. Edit frozen chrome in `skeleton.html`, `index.html`, `catalog.html`, and `mcp.html` so they stay aligned.
2. Keep slot markup in `catalog.html` as the design specimen. `index.html` is the project page and may use every block. `mcp.html` is a worked example. Keep `skeleton.html` slots short.
3. Update `RECIPE.md` when you add a class, a token, or a control.
4. When `RECIPE.md` or `skeleton.html` change at the root, run `scripts/sync-skill.sh` so `skills/foglio/RECIPE.md` and `skills/foglio/assets/skeleton.html` stay aligned.
5. Follow the writing rules in `RECIPE.md`. Source files stay on ASCII.
6. Check `index.html`, `catalog.html`, and `mcp.html` in light, dark, and system. Check 200% zoom. Check a Mermaid expand and close.

Do not minify the frozen blocks. Do not add a build step unless the recipe says so.
