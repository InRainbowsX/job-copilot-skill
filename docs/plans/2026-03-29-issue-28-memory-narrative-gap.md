# Issue #28 Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** 让 memory 能记录主叙事选择、Gap 解释口径和旧经历降权结论，避免后续重复判断。

**Architecture:** 只修改 memory 模板、主 skill 的 memory 说明、规则用例和验证场景。不改项目卡片。

**Tech Stack:** Markdown, repo validation scripts, rule-based prompt tests

### Task 1: Add failing expectations

**Files:**
- Modify: `assets/memory-template.md`
- Modify: `SKILL.md`
- Modify: `references/rule-test-cases.md`
- Modify: `references/validation-scenarios.md`

**Step 1: Define the failing checks**

Check for these markers after implementation:
- `Current main narrative`
- `Downgraded older experiences`
- `Gap explanation`
- `Case 12: Memory Must Persist Narrative And Gap Conclusions`
- `Scenario 17: Memory Should Persist Main Narrative And Gap Decisions`

**Step 2: Run the failing verification**

Run:

```bash
python3 - <<'PY'
from pathlib import Path
base = Path('.')
memory = (base / 'assets/memory-template.md').read_text()
rules = (base / 'references/rule-test-cases.md').read_text()
scenarios = (base / 'references/validation-scenarios.md').read_text()
assert 'Current main narrative' in memory
assert 'Downgraded older experiences' in memory
assert 'Gap explanation' in memory
assert 'Case 12: Memory Must Persist Narrative And Gap Conclusions' in rules
assert 'Scenario 17: Memory Should Persist Main Narrative And Gap Decisions' in scenarios
PY
```

Expected: fail before implementation.

### Task 2: Expand the memory template

**Files:**
- Modify: `assets/memory-template.md`
- Modify: `SKILL.md`

**Step 1: Add narrative and gap memory fields**

Include fields for:
- current main narrative
- downgraded older experiences
- gap explanation
- non-standard experience conclusion
- confirmed vs pending status

**Step 2: Update the skill memory contract**

Reflect these durable state requirements in `SKILL.md`.

### Task 3: Add behavior coverage

**Files:**
- Modify: `references/rule-test-cases.md`
- Modify: `references/validation-scenarios.md`

**Step 1: Add rule case**

Require memory to persist timeline and gap conclusions rather than dropping them after one session.

**Step 2: Add scenario 17**

Cover a realistic follow-up session where the assistant should reuse the stored main narrative and gap explanation.

### Task 4: Verify and prepare PR

**Files:**
- Modify: `assets/memory-template.md`
- Modify: `SKILL.md`
- Modify: `references/rule-test-cases.md`
- Modify: `references/validation-scenarios.md`
- Create: `docs/plans/2026-03-29-issue-28-memory-narrative-gap.md`

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
git commit -m "feat: persist narrative and gap conclusions in memory"
```

PR body must include `close #28`.
