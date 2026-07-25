#!/usr/bin/env bash
# Install the SWEBOK skills into Claude Code.
#
#   ./scripts/install-claude-code.sh            # user-level  (~/.claude/skills)
#   ./scripts/install-claude-code.sh --project  # project-level (./.claude/skills)
#   ./scripts/install-claude-code.sh --copy     # copy instead of symlink
#
# Symlinks by default so `git pull` in this repo keeps the installed skills current.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="$REPO_DIR/skills"

TARGET="$HOME/.claude/skills"
MODE="symlink"
for arg in "$@"; do
  case "$arg" in
    --project) TARGET="$(pwd)/.claude/skills" ;;
    --copy)    MODE="copy" ;;
    *) echo "unknown option: $arg" >&2; exit 2 ;;
  esac
done

mkdir -p "$TARGET"
echo "Installing SWEBOK skills -> $TARGET  ($MODE)"

for dir in "$SRC"/swebok-*/; do
  name="$(basename "$dir")"
  dest="$TARGET/$name"
  rm -rf "$dest"
  if [ "$MODE" = "copy" ]; then
    cp -r "$dir" "$dest"
  else
    ln -s "$dir" "$dest"
  fi
  echo "  + $name"
done

echo
echo "Done. In Claude Code, run /skills (or just describe your task) to use them."
echo "Tip: enable them per-project by committing .claude/skills or re-running with --project."
