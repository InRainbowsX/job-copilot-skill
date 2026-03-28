# Issue #17 Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** 将包装结果固定为“问题、方向、结果、建议/风险”可见结构，并明确它与审核官输出的边界。

**Architecture:** 在 `SKILL.md` 增加独立的包装结果结构说明，同时补规则用例和验证场景。不改 memory，不扩散到模板族。

**Tech Stack:** Markdown, repo validation scripts, rule-based prompt tests

### Task 1: Add failing expectations

**Files:**
- Modify: `SKILL.md`
- Modify: `references/rule-test-cases.md`
- Modify: `references/validation-scenarios.md`

**Step 1: Define the failing checks**

Check for these markers after implementation:
- `### Packaging Result Structure`
- `改写结果`
- `风险提醒`
- `Scenario 14: Packaging Output Must Show Problem Direction Result And Risk`

**Step 2: Run the failing verification**

Run:

```bash
python3 - <<'PY'
from pathlib import Path
base = Path('.')
skill = (base / 'SKILL.md').read_text()
scenarios = (base / 'references/validation-scenarios.md').read_text()
assert '### Packaging Result Structure' in skill
assert '改写结果' in skill
assert '风险提醒' in skill
assert 'Scenario 14: Packaging Output Must Show Problem Direction Result And Risk' in scenarios
PY
```

Expected: fail before implementation.

### Task 2: Fix the packaging output contract

**Files:**
- Modify: `SKILL.md`

**Step 1: Define the standard packaging output**

Require packaging output to clearly separate:
- 当前问题
- 推荐方向
- 改写结果
- 补充建议
- 风险提醒

**Step 2: Clarify the boundary with the review officer**

State that packaging output explains the coach's current draft, while the review officer still owns risk grading, level judgment, and safer upgrade calibration.

### Task 3: Add behavior coverage

**Files:**
- Modify: `references/rule-test-cases.md`
- Modify: `references/validation-scenarios.md`

**Step 1: Add a packaging output test case**

Cover the expectation that packaging cannot collapse into one final rewritten paragraph.

**Step 2: Add scenario 14**

Cover a user asking for a stronger packaged version and verify that the output stays structured and conversational.

### Task 4: Verify and prepare PR

**Files:**
- Modify: `SKILL.md`
- Modify: `references/rule-test-cases.md`
- Modify: `references/validation-scenarios.md`
- Create: `docs/plans/2026-03-29-issue-17-packaging-structure.md`

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
git commit -m "feat: structure packaging output"
```

PR body must include `close #17`.
