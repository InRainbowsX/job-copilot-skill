#!/usr/bin/env python3

from __future__ import annotations

import re
import sys
from pathlib import Path


def fail(message: str) -> None:
    print(f"ERROR: {message}")
    raise SystemExit(1)


def main() -> None:
    root = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else Path.cwd().resolve()
    skill_file = root / "SKILL.md"

    if not skill_file.is_file():
        fail("SKILL.md not found")

    content = skill_file.read_text(encoding="utf-8")
    if not content.startswith("---\n"):
        fail("SKILL.md must start with YAML frontmatter")

    try:
        _, frontmatter, body = content.split("---\n", 2)
    except ValueError:
        fail("SKILL.md frontmatter is malformed")

    fields: dict[str, str] = {}
    for raw_line in frontmatter.strip().splitlines():
        if ":" not in raw_line:
            fail(f"Invalid frontmatter line: {raw_line}")
        key, value = raw_line.split(":", 1)
        fields[key.strip()] = value.strip()

    if set(fields.keys()) != {"name", "description"}:
        fail("Frontmatter must contain only 'name' and 'description'")

    name = fields["name"]
    description = fields["description"]

    if not re.fullmatch(r"[a-z0-9-]+", name):
        fail("Frontmatter 'name' must use lowercase letters, numbers, and hyphens only")

    if not description:
        fail("Frontmatter 'description' must not be empty")

    if len(frontmatter.strip()) > 1024:
        fail("Frontmatter is too long")

    if not body.strip():
        fail("SKILL.md body must not be empty")

    print("Skill is valid!")


if __name__ == "__main__":
    main()
