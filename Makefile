.PHONY: build validate clean install install-project list

## Package every skill into dist/*.zip and dist/*.skill
build:
	python3 scripts/build.py

## Validate frontmatter without packaging
validate:
	@python3 -c "import scripts.build as b, sys; \
	errs=[e for p in sorted((b.SKILLS_DIR).iterdir()) if p.is_dir() for e in b.validate(p)]; \
	print('\n'.join('  - '+e for e in errs) or 'All skills valid.'); sys.exit(1 if errs else 0)"

## Remove build artifacts
clean:
	rm -rf dist

## Symlink skills into ~/.claude/skills (Claude Code, user-level)
install:
	bash scripts/install-claude-code.sh

## Symlink skills into ./.claude/skills (Claude Code, project-level)
install-project:
	bash scripts/install-claude-code.sh --project

## List available skills
list:
	@ls -1 skills
