# Issue #15 Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** 将审核官从纯风险审计角色升级为带层级判断、升级建议和可守更优表达的高水平校准角色。

**Architecture:** 这次只修改审核官相关规则和测试文档，不扩散到模板族。通过 `SKILL.md`、`review-rubric.md`、规则用例和验证场景同时收紧，确保输出结构稳定。

**Tech Stack:** Markdown, repo validation scripts, rule-based prompt tests

### Task 1: Add failing expectations

**Files:**
- Modify: `SKILL.md`
- Modify: `references/review-rubric.md`
- Modify: `references/rule-test-cases.md`
- Modify: `references/validation-scenarios.md`

**Step 1: Define the failing checks**

Check for these markers after implementation:
- `### 审核官`
- `当前层级`
- `升级建议`
- `可守的更优表达`
- `Scenario 13: Review Officer Must Provide Upgrade Guidance`

**Step 2: Run the failing verification**

Run:

```bash
python3 - <<'PY'
from pathlib import Path
base = Path('.')
skill = (base / 'SKILL.md').read_text()
rubric = (base / 'references/review-rubric.md').read_text()
scenarios = (base / 'references/validation-scenarios.md').read_text()
assert '### 审核官' in skill
assert '当前层级' in skill
assert '升级建议' in skill
assert '可守的更优表达' in skill
assert '当前层级' in rubric
assert 'Scenario 13: Review Officer Must Provide Upgrade Guidance' in scenarios
PY
```

Expected: fail before implementation.

### Task 2: Tighten the review role definition

**Files:**
- Modify: `SKILL.md`
- Modify: `references/review-rubric.md`

**Step 1: Rename and redefine the reviewer**

Rename Agent 2 references to `审核官` in the core rule sections touched by this issue.

**Step 2: Expand the mandatory review output**

Require each review to include:
- 风险等级
- 当前层级
- 不足点
- 升级建议
- 可守的更优表达

### Task 3: Add behavior coverage

**Files:**
- Modify: `references/rule-test-cases.md`
- Modify: `references/validation-scenarios.md`

**Step 1: Strengthen case 4**

Make the reviewer test case assert explicit upgrade guidance, not just generic advice.

**Step 2: Add scenario 13**

Add a realistic scenario where the review pass must both control risk and explain how to move the wording up one level safely.

### Task 4: Verify and prepare PR

**Files:**
- Modify: `SKILL.md`
- Modify: `references/review-rubric.md`
- Modify: `references/rule-test-cases.md`
- Modify: `references/validation-scenarios.md`
- Create: `docs/plans/2026-03-29-issue-15-review-officer-upgrade.md`

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
git commit -m "feat: upgrade review officer guidance"
```

PR body must include `close #15`.
