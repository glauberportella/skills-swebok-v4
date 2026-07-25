# SWEBOK Skills for Claude

A collection of [Claude Skills](https://support.claude.com/en/articles/12512180-use-skills-in-claude)
that ground software-engineering work in the
[**IEEE SWEBOK Guide v4.0**](https://www.computer.org/education/bodies-of-knowledge/software-engineering/v4)
(Software Engineering Body of Knowledge). One skill per Knowledge Area, each able to
**generate** artifacts, **review** existing ones, and **advise** on day-to-day
technical decisions — using the vocabulary, topic structure, and best practices
of the guide.

> These skills **distill** SWEBOK into actionable checklists and templates. They
> do not reproduce the IEEE text. This is an independent, unofficial project (see
> [NOTICE](NOTICE)).

## The skills

| Skill | SWEBOK KA | What it helps with |
|---|---|---|
| `swebok-requirements` | 1 · Requirements | Elicitation, analysis, SRS/PRD, user stories + acceptance criteria (ATDD), validation, traceability |
| `swebok-architecture` | 2 · Architecture | Views/viewpoints, ADRs, quality-attribute scenarios, architecture evaluation |
| `swebok-design` | 3 · Design | Coupling/cohesion, information hiding, design methods (OO/DDD/event-driven), rationale |
| `swebok-construction` | 4 · Construction | Complexity control, contracts, TDD, API design, integration/CI |
| `swebok-testing` | 5 · Testing | Test techniques, levels, adequacy criteria, test plans, the oracle problem |
| `swebok-operations` | 6 · Operations | SLO/SLI, release/rollback, DR/failover, incident vs. problem, observability |
| `swebok-maintenance` | 7 · Maintenance | Change categories, impact analysis, technical debt, reengineering |
| `swebok-config-management` | 8 · Config Mgmt | CIs, baselines, change control/CCB, status accounting, auditing, releases |
| `swebok-management` | 9 · Management | Scope, estimation (with ranges), risk, GQM metrics, closure |
| `swebok-process` | 10 · Process | Life-cycle selection, tailoring, GQM, evidence-based improvement |
| `swebok-quality` | 12 · Quality | QA vs. QC, V&V, static/dynamic/formal analysis, defect characterization |
| `swebok-security` | 13 · Security | Threat modeling, security requirements, secure design/build, SAST/DAST, vuln mgmt |
| `swebok-economics` | 15 · Economics | Cash flow, NPV, MARR, build-vs-buy, structured decision-making |

Each skill triggers on natural phrasing in **English and Portuguese** (e.g.
"requisitos", "plano de testes", "threat model") — not only when you name SWEBOK.
Skills generate output in the language you write in.

## Compatibility

The skills are authored in the open **Agent Skills** standard (`SKILL.md` + YAML
frontmatter), so most agentic tools use them directly. Cursor uses its own rule
format, so we ship a converter.

| Tool | Format | How | One-liner |
|---|---|---|---|
| Claude.ai / Desktop | `SKILL.md` (ZIP upload) | build ZIPs, upload in-app | `./install.sh claude-ai` |
| Claude Code | `SKILL.md` in `.claude/skills/` | symlink | `./install.sh claude-code` |
| OpenCode | `SKILL.md` (native) | symlink | `./install.sh opencode` |
| Cursor | `.mdc` rules in `.cursor/rules/` | convert + copy | `./install.sh cursor` |
| Other Agent-Skills tools | `SKILL.md` in `.agents/skills/` | copy the folder | — |

Clone first:

```bash
git clone https://github.com/<you>/swebok-claude-skills.git
cd swebok-claude-skills
```

### Claude.ai / Claude Desktop

1. Enable **Code execution and file creation** in *Settings → Capabilities*.
2. Get the per-skill `.zip` files: `./install.sh claude-ai` (writes to `dist/`),
   or download them from the [latest release](../../releases/latest).
3. In the app: **Customize → Skills → `+` → Upload a skill**, select a `.zip`,
   toggle it on.

> The ZIP must contain the skill **folder** with `SKILL.md` inside it
> (e.g. `swebok-testing/SKILL.md`). Both the built and released archives are
> already shaped this way.

### Claude Code

```bash
./install.sh claude-code            # user-level  (~/.claude/skills)
./install.sh claude-code --project  # project-level (./.claude/skills)
```

### OpenCode

OpenCode reads the `SKILL.md` standard natively (it even discovers `.claude/skills`
and `.agents/skills`). Install into its skills dir and restart OpenCode:

```bash
./install.sh opencode            # global  (~/.config/opencode/skills)
./install.sh opencode --project  # project (./.opencode/skills)
# then, in OpenCode:  skill_find query="swebok"
```

### Cursor

Cursor project rules are `.mdc` files under `.cursor/rules/`. This converts each
skill into a self-contained **Agent Requested** rule (fires by relevance) and
copies them into your project:

```bash
./install.sh cursor                 # into ./.cursor/rules
./install.sh cursor /path/to/project
```

Commit `.cursor/rules/` so your team gets them too. (Cursor also supports a plain
`AGENTS.md` at the project root, but it always-applies; the per-skill `.mdc`
rules are more precise.)

### Other Agent-Skills tools

Anything that reads the standard (e.g. via `.agents/skills/`) can use the skills
directly — copy or symlink `skills/<name>/` into that tool's skills directory.

All symlink-based installers accept `--copy` to copy instead, and a `git pull`
keeps symlinked installs current.

## Build from source

No dependencies beyond Python 3.

```bash
make build          # -> dist/<name>.zip and .skill (claude.ai / Desktop)
make build-cursor   # -> dist/cursor/rules/<name>.mdc (Cursor)
make validate       # check frontmatter only
make clean          # remove dist/
python3 scripts/build.py swebok-testing          # a single skill (ZIP)
python3 scripts/build-cursor.py swebok-testing   # a single skill (.mdc)
```

## How a skill works

Every skill shares the same shape:

```
skills/<name>/
├── SKILL.md                       # triggering description, vocabulary, topic map, 3 modes
└── references/
    ├── artifacts.md               # templates for the "generate" mode
    └── review-checklist.md        # checklist for the "review" mode
```

`SKILL.md` stays lightweight; the reference files load only when the relevant
mode is used ([progressive disclosure](https://code.claude.com/docs/en/skills)).
Claude picks a mode from your request:

- **Generate** — "write an SRS for…", "draft a test plan for…"
- **Review** — "critique these requirements", "audit this architecture doc"
- **Advise** — "functional or nonfunctional?", "which test technique here?"

Skills trigger on task relevance. Simple one-step questions may be answered
directly; substantial tasks (writing an SRS, reviewing an architecture) reliably
pull the skill in.

## Repository layout

```
.
├── skills/                 # the 13 skills (source of truth, Agent Skills standard)
├── install.sh              # unified installer: claude-code | opencode | cursor | claude-ai
├── scripts/
│   ├── build.py            # skills -> dist/*.zip + *.skill (claude.ai / Desktop)
│   ├── build-cursor.py     # skills -> dist/cursor/rules/*.mdc (Cursor)
│   ├── install-claude-code.sh
│   ├── install-opencode.sh
│   └── install-cursor.sh
├── .github/workflows/
│   └── release.yml         # validate + attach archives to GitHub Releases on tag
├── Makefile
├── LICENSE                 # MIT (this project's original text)
├── NOTICE                  # SWEBOK / IEEE attribution & disclaimer
└── CONTRIBUTING.md
```

## Not included

By design this set omits SWEBOK KAs 11 (Models & Methods), 14 (Professional
Practice), and 16–18 (Computing / Mathematical / Engineering Foundations). PRs
adding them in the same format are welcome — see [CONTRIBUTING](CONTRIBUTING.md).

## Reference

- [SWEBOK Guide v4.0 — IEEE Computer Society](https://www.computer.org/education/bodies-of-knowledge/software-engineering/v4)
  — the official guide these skills are distilled from (free PDF download after
  registration). Use it as the authoritative source; the skills are a practical
  companion, not a replacement.

## License & attribution

This project's original content is released under the [MIT License](LICENSE).
"SWEBOK" is a registered trademark of the IEEE; the *Guide to the Software
Engineering Body of Knowledge* is © IEEE. This repository is **not** affiliated
with or endorsed by the IEEE and contains no verbatim IEEE text — only original,
distilled guidance that references the guide's structure. See [NOTICE](NOTICE).
