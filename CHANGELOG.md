# Changelog

All notable changes to this project are documented here.
The format is based on [Keep a Changelog](https://keepachangelog.com/).

## [1.1.0] - 2026-07-25
### Added
- Multi-tool support: install into OpenCode (`scripts/install-opencode.sh`) and
  Cursor (`scripts/install-cursor.sh`).
- Cursor converter (`scripts/build-cursor.py`) turning each skill into a
  self-contained `.mdc` Agent-Requested rule.
- Unified `install.sh` dispatcher (claude-code | opencode | cursor | claude-ai).
- CI now also builds Cursor rules and attaches `swebok-cursor-rules.zip` to releases.

## [1.0.0] - 2026-07-25
### Added
- Initial release: 13 SWEBOK v4 skills (KAs 1–10, 12, 13, 15), each with
  generate / review / advise modes and English + Portuguese triggering.
- Build tooling (`scripts/build.py`, `Makefile`) producing `.zip` and `.skill`
  archives with zero third-party dependencies.
- Claude Code installer (`scripts/install-claude-code.sh`).
- GitHub Actions release workflow.
