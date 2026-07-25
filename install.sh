#!/usr/bin/env bash
# Unified installer dispatcher for the SWEBOK skills.
#
#   ./install.sh claude-code [--project|--copy]
#   ./install.sh opencode    [--project|--copy]
#   ./install.sh cursor      [target-project-dir]
#   ./install.sh claude-ai                        # just builds the .zip archives
#
# For claude.ai/Desktop there is no CLI install: run `claude-ai` to produce the
# ZIPs under dist/, then upload them in Customize > Skills > + > Upload a skill.
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
target="${1:-}"; shift || true

case "$target" in
  claude-code) exec bash "$DIR/scripts/install-claude-code.sh" "$@" ;;
  opencode)    exec bash "$DIR/scripts/install-opencode.sh" "$@" ;;
  cursor)      exec bash "$DIR/scripts/install-cursor.sh" "$@" ;;
  claude-ai)   exec python3 "$DIR/scripts/build.py" "$@" ;;
  *)
    echo "Usage: ./install.sh {claude-code|opencode|cursor|claude-ai} [options]" >&2
    echo "  claude-code [--project|--copy]   symlink into ~/.claude/skills (or ./.claude/skills)"
    echo "  opencode    [--project|--copy]   symlink into ~/.config/opencode/skills (or ./.opencode/skills)"
    echo "  cursor      [target-dir]         build + copy .mdc into <dir>/.cursor/rules"
    echo "  claude-ai                        build dist/*.zip to upload in the app"
    exit 2 ;;
esac
