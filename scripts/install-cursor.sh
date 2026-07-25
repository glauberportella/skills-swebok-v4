#!/usr/bin/env bash
# Install the SWEBOK skills into Cursor as project rules (.cursor/rules/*.mdc).
#
#   ./scripts/install-cursor.sh [target-project-dir]
#
# Cursor uses .mdc rules, not the SKILL.md standard, so this first builds the
# self-contained .mdc files (scripts/build-cursor.py) and then copies them into
# <target>/.cursor/rules/. Defaults to the current directory.
#
# The rules are "Agent Requested" (description-driven), so Cursor's agent pulls a
# rule in when your task matches it -- no globs, not always-on.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET_PROJECT="${1:-$(pwd)}"
DEST="$TARGET_PROJECT/.cursor/rules"

echo "Building Cursor rules..."
python3 "$REPO_DIR/scripts/build-cursor.py" >/dev/null

mkdir -p "$DEST"
echo "Installing SWEBOK Cursor rules -> $DEST"
for f in "$REPO_DIR"/dist/cursor/rules/swebok-*.mdc; do
  cp "$f" "$DEST/"
  echo "  + $(basename "$f")"
done

echo
echo "Done. Open the project in Cursor; rules load automatically by relevance."
echo "See them in Cursor: Settings > Rules."
