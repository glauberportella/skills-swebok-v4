#!/usr/bin/env python3
"""Package each skill under ./skills/<name>/ into distributable archives in ./dist/.

For every skill it produces:
  dist/<name>.zip    -> upload this in claude.ai (Customize > Skills > + > Upload a skill)
  dist/<name>.skill  -> identical archive with the .skill extension

The archive contains the skill folder at its root (e.g. swebok-testing/SKILL.md),
which is what claude.ai and the Agent Skills standard expect.

No third-party dependencies -- standard library only.

Usage:
  python scripts/build.py            # build every skill
  python scripts/build.py swebok-testing swebok-design   # build a subset
"""
from __future__ import annotations
import sys, zipfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SKILLS_DIR = ROOT / "skills"
DIST_DIR = ROOT / "dist"

EXCLUDE_NAMES = {".DS_Store", "Thumbs.db", ".gitkeep"}
EXCLUDE_DIRS = {"__pycache__", ".git", ".ipynb_checkpoints"}
EXCLUDE_SUFFIXES = {".pyc", ".pyo", ".swp"}


def iter_files(skill_path: Path):
    for p in sorted(skill_path.rglob("*")):
        if p.is_dir():
            continue
        if p.name in EXCLUDE_NAMES or p.suffix in EXCLUDE_SUFFIXES:
            continue
        if any(part in EXCLUDE_DIRS for part in p.relative_to(skill_path).parts):
            continue
        yield p


def validate(skill_path: Path) -> list[str]:
    errors = []
    skill_md = skill_path / "SKILL.md"
    if not skill_md.exists():
        errors.append(f"missing SKILL.md in {skill_path.name}")
        return errors
    text = skill_md.read_text(encoding="utf-8")
    if not text.startswith("---"):
        errors.append(f"{skill_path.name}: SKILL.md must start with YAML frontmatter (---)")
    else:
        fm = text.split("---", 2)[1]
        if "name:" not in fm:
            errors.append(f"{skill_path.name}: frontmatter missing 'name:'")
        if "description:" not in fm:
            errors.append(f"{skill_path.name}: frontmatter missing 'description:'")
    return errors


def package(skill_path: Path) -> Path:
    DIST_DIR.mkdir(exist_ok=True)
    zip_path = DIST_DIR / f"{skill_path.name}.zip"
    with zipfile.ZipFile(zip_path, "w", zipfile.ZIP_DEFLATED) as zf:
        for f in iter_files(skill_path):
            arcname = Path(skill_path.name) / f.relative_to(skill_path)
            zf.write(f, arcname.as_posix())
    # a .skill archive is the same zip with a different extension
    skill_path_out = DIST_DIR / f"{skill_path.name}.skill"
    skill_path_out.write_bytes(zip_path.read_bytes())
    return zip_path


def main(argv: list[str]) -> int:
    names = argv or [p.name for p in sorted(SKILLS_DIR.iterdir()) if p.is_dir()]
    all_errors, built = [], 0
    for name in names:
        skill_path = SKILLS_DIR / name
        if not skill_path.is_dir():
            all_errors.append(f"skill not found: {name}")
            continue
        errs = validate(skill_path)
        if errs:
            all_errors.extend(errs)
            continue
        zip_path = package(skill_path)
        built += 1
        print(f"  built {zip_path.relative_to(ROOT)}  (+ .skill)")
    if all_errors:
        print("\nERRORS:")
        for e in all_errors:
            print("  -", e)
        return 1
    print(f"\nOK: {built} skill(s) packaged into {DIST_DIR.relative_to(ROOT)}/")
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv[1:]))
