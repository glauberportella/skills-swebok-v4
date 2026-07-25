#!/usr/bin/env python3
"""Convert each skill under ./skills/<name>/ into a self-contained Cursor rule
(.mdc) in ./dist/cursor/rules/<name>.mdc.

Cursor doesn't use the Agent Skills SKILL.md format; its project rules are `.mdc`
files in `.cursor/rules/` with YAML frontmatter (description, globs, alwaysApply).
We emit "Agent Requested" rules (description set, alwaysApply: false, no globs) so
Cursor pulls each rule into context by relevance -- mirroring how skills trigger.

Because a user may copy a single .mdc into their project, each rule is made
SELF-CONTAINED: the SKILL.md body plus both reference files are inlined, so no
external references/ folder is needed.

No third-party dependencies -- standard library only.

Usage:
  python scripts/build-cursor.py [skill-name ...]
"""
from __future__ import annotations
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SKILLS_DIR = ROOT / "skills"
OUT_DIR = ROOT / "dist" / "cursor" / "rules"


def parse_frontmatter(text: str) -> tuple[dict, str]:
    """Return (frontmatter_dict, body). Minimal YAML: handles `key: value` and
    folded `key: >-` blocks (as used in our SKILL.md files)."""
    assert text.startswith("---"), "SKILL.md must start with ---"
    _, fm, body = text.split("---", 2)
    data, lines, i = {}, fm.splitlines(), 0
    while i < len(lines):
        line = lines[i]
        if not line.strip():
            i += 1
            continue
        key, _, rest = line.partition(":")
        key = key.strip()
        rest = rest.strip()
        if rest in (">-", ">", "|", "|-"):  # folded/literal block scalar
            block, i = [], i + 1
            while i < len(lines) and (lines[i].startswith(("  ", "\t")) or not lines[i].strip()):
                block.append(lines[i].strip())
                i += 1
            data[key] = " ".join(b for b in block if b).strip()
        else:
            data[key] = rest
            i += 1
    return data, body.strip()


def read_ref(skill_path: Path, name: str) -> str:
    p = skill_path / "references" / name
    return p.read_text(encoding="utf-8").strip() if p.exists() else ""


def yaml_escape(s: str) -> str:
    # single-line double-quoted scalar
    return '"' + s.replace("\\", "\\\\").replace('"', '\\"') + '"'


def convert(skill_path: Path) -> Path:
    fm, body = parse_frontmatter((skill_path / "SKILL.md").read_text(encoding="utf-8"))
    desc = fm.get("description", "").strip()
    artifacts = read_ref(skill_path, "artifacts.md")
    checklist = read_ref(skill_path, "review-checklist.md")

    parts = [body]
    if artifacts:
        parts += ["\n---\n", "# Appendix A — Generate mode: artifact templates\n", artifacts]
    if checklist:
        parts += ["\n---\n", "# Appendix B — Review mode: checklist\n", checklist]
    # In the inlined form, the "read references/…" pointers are satisfied by the appendices.
    merged = "\n\n".join(parts)
    merged = merged.replace("read `references/artifacts.md`", "use Appendix A below")
    merged = merged.replace("`references/artifacts.md`", "Appendix A below")
    merged = merged.replace("read `references/review-checklist.md`", "use Appendix B below")
    merged = merged.replace("`references/review-checklist.md`", "Appendix B below")

    OUT_DIR.mkdir(parents=True, exist_ok=True)
    out = OUT_DIR / f"{skill_path.name}.mdc"
    front = (
        "---\n"
        f"description: {yaml_escape(desc)}\n"
        "globs:\n"
        "alwaysApply: false\n"
        "---\n\n"
    )
    out.write_text(front + merged + "\n", encoding="utf-8")
    return out


def main(argv: list[str]) -> int:
    names = argv or [p.name for p in sorted(SKILLS_DIR.iterdir()) if p.is_dir()]
    n = 0
    for name in names:
        sp = SKILLS_DIR / name
        if not (sp / "SKILL.md").exists():
            print(f"  skip {name} (no SKILL.md)")
            continue
        out = convert(sp)
        n += 1
        print(f"  built {out.relative_to(ROOT)}")
    print(f"\nOK: {n} Cursor rule(s) in {OUT_DIR.relative_to(ROOT)}/")
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv[1:]))
