# Issue #27 Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** 让项目包装卡片能够承载时间轴权重、Gap 属性和主叙事定位，而不只是项目内容摘要。

**Architecture:** 只修改项目包装卡片模板、主 skill 中的卡片字段说明，以及对应的规则用例和验证场景。不改 memory。

**Tech Stack:** Markdown, repo validation scripts, rule-based prompt tests

### Task 1: Add failing expectations

**Files:**
- Modify: `assets/project-packaging-card-template.md`
- Modify: `SKILL.md`
- Modify: `references/rule-test-cases.md`
- Modify: `references/validation-scenarios.md`

**Step 1: Define the failing checks**

Check for these markers after implementation:
- `Narrative Position`
- `Is recent core experience`
- `Gap or non-standard period`
- `Case 11: Project Card Must Carry Timeline And Gap Signals`
- `Scenario 16: Project Card Must Support Timeline And Narrative Sorting`

**Step 2: Run the failing verification**

Run:

```bash
python3 - <<'PY'
from pathlib import Path
base = Path('.')
card = (base / 'assets/project-packaging-card-template.md').read_text()
rules = (base / 'references/rule-test-cases.md').read_text()
scenarios = (base / 'references/validation-scenarios.md').read_text()
assert 'Narrative Position' in card
assert 'Is recent core experience' in card
assert 'Gap or non-standard period' in card
assert 'Case 11: Project Card Must Carry Timeline And Gap Signals' in rules
assert 'Scenario 16: Project Card Must Support Timeline And Narrative Sorting' in scenarios
PY
```

Expected: fail before implementation.

### Task 2: Expand the card template

**Files:**
- Modify: `assets/project-packaging-card-template.md`
- Modify: `SKILL.md`

**Step 1: Add timeline and narrative fields**

Include fields for:
- time weighting
- whether it is recent core experience
- whether it belongs to a gap or non-standard period
- whether it is main narrative, supporting narrative, or only a supplemental highlight

**Step 2: Update the skill-level card contract**

Reflect the new required fields in `SKILL.md`.

### Task 3: Add behavior coverage

**Files:**
- Modify: `references/rule-test-cases.md`
- Modify: `references/validation-scenarios.md`

**Step 1: Add rule case**

Require the card to capture timeline, gap, and narrative position explicitly.

**Step 2: Add scenario 16**

Use a realistic prompt where older campus work, recent work, and a gap period all compete for placement.

### Task 4: Verify and prepare PR

**Files:**
- Modify: `assets/project-packaging-card-template.md`
- Modify: `SKILL.md`
- Modify: `references/rule-test-cases.md`
- Modify: `references/validation-scenarios.md`
- Create: `docs/plans/2026-03-29-issue-27-card-timeline-gap.md`

**Step 1: Re-run targeted verification**

Use the same `python3` block from Task 1 and confirm it passes.

**Step 2: Run repository validation**

Run:

```bash
./scripts/run_checks.sh
```

Expected: pass.

**Step 3: Commit and open PR**

Commit with:

```bash
git commit -m "feat: extend project card with timeline and gap fields"
```

PR body must include `close #27`.
