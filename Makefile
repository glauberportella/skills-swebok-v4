.PHONY: build build-cursor validate clean list \
        install-claude-code install-claude-code-project \
        install-opencode install-opencode-project install-cursor

## Package every skill into dist/*.zip and dist/*.skill (for claude.ai / Desktop)
build:
	python3 scripts/build.py

## Convert skills into Cursor rules -> dist/cursor/rules/*.mdc
build-cursor:
	python3 scripts/build-cursor.py

## Validate frontmatter without packaging
validate:
	@python3 -c "import scripts.build as b, sys; \
	errs=[e for p in sorted((b.SKILLS_DIR).iterdir()) if p.is_dir() for e in b.validate(p)]; \
	print('\n'.join('  - '+e for e in errs) or 'All skills valid.'); sys.exit(1 if errs else 0)"

## Remove build artifacts
clean:
	rm -rf dist

## List available skills
list:
	@ls -1 skills

## --- Claude Code ---
install-claude-code:
	bash scripts/install-claude-code.sh
install-claude-code-project:
	bash scripts/install-claude-code.sh --project

## --- OpenCode ---
install-opencode:
	bash scripts/install-opencode.sh
install-opencode-project:
	bash scripts/install-opencode.sh --project

## --- Cursor (into current project's .cursor/rules) ---
install-cursor:
	bash scripts/install-cursor.sh
