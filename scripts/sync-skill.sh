#!/bin/sh
# Copy canonical kit files into the installable skill.
# Run after editing RECIPE.md or skeleton.html at the repo root.
set -eu
root=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
mkdir -p "$root/skills/foglio/assets"
cp "$root/RECIPE.md" "$root/skills/foglio/RECIPE.md"
cp "$root/skeleton.html" "$root/skills/foglio/assets/skeleton.html"
echo "Synced RECIPE.md and skeleton.html into skills/foglio/"
