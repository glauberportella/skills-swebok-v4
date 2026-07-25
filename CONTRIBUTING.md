# Contributing

Thanks for helping improve the SWEBOK skills for Claude.

## Ground rules

- **No verbatim IEEE text.** Distill and paraphrase. Contributions must be your
  own original wording of the concepts. Reference the guide's structure and
  terminology, don't copy its prose. (See [NOTICE](NOTICE).)
- Keep each skill's shape consistent (see below).
- One logical change per pull request.

## Skill anatomy

```
skills/<skill-name>/
├── SKILL.md
└── references/
    ├── artifacts.md          # templates for the "generate" mode
    └── review-checklist.md   # checklist for the "review" mode
```

`SKILL.md` must start with YAML frontmatter:

```yaml
---
name: swebok-<area>
description: >-
  What the skill does + when to trigger it. Be specific and a little "pushy":
  list concrete tasks and trigger phrases (English AND Portuguese), and add
  "not only when SWEBOK is named." This description is the primary triggering
  signal, so put all the "when to use" information here.
---
```

Body sections, in order:

1. One-paragraph intro tying it to the SWEBOK KA.
2. **Pick a mode** — Generate / Review / Advise.
3. **Core vocabulary** — the KA's key distinctions, in your own words.
4. **Topic map** — the KA's subtopic outline (short factual headings).
5. **Mode: Advise** — decision heuristics.
6. **Mode: Generate** — pointer to `references/artifacts.md`.
7. **Mode: Review** — pointer to `references/review-checklist.md`.
8. **Cross-KA links** — neighboring skills.

Keep `SKILL.md` lightweight; push heavier templates/checklists into
`references/` so they load only when needed.

## Adding a new Knowledge Area

The set currently omits KAs 11, 14, and 16–18. To add one, mirror the structure
above and add a row to the table in [README.md](README.md).

## Before opening a PR

```bash
make validate   # frontmatter sanity check
make build      # ensure it packages cleanly
```

Then, ideally, sanity-check the skill in Claude with 2–3 realistic prompts
(one per mode) and note the results in the PR description.

## Style

- Imperative voice ("State each NFR as…", "Check that…").
- Explain *why* a rule matters, not just the rule.
- Prefer checklists and small templates over prose walls.
