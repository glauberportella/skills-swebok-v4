#!/usr/bin/env bash
# Install the SWEBOK skills into OpenCode.
#
#   ./scripts/install-opencode.sh            # global  (~/.config/opencode/skills)
#   ./scripts/install-opencode.sh --project  # project (./.opencode/skills)
#   ./scripts/install-opencode.sh --copy     # copy instead of symlink
#
# OpenCode natively reads the SKILL.md Agent Skills standard, so the skills work
# as-is. Symlinks by default so `git pull` keeps them current. Restart OpenCode
# after installing so it re-discovers skills.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="$REPO_DIR/skills"

TARGET="$HOME/.config/opencode/skills"
MODE="symlink"
for arg in "$@"; do
  case "$arg" in
    --project) TARGET="$(pwd)/.opencode/skills" ;;
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
  if [ "$MODE" = "copy" ]; then cp -r "$dir" "$dest"; else ln -s "$dir" "$dest"; fi
  echo "  + $name"
done

echo
echo "Done. Restart OpenCode, then run: skill_find query=\"swebok\""
