# Issue #16 Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** 建立可被简历包装教练和审核官共同引用的高质量简历信号库 v1。

**Architecture:** 新增一份参考文档，沉淀高质量信号、高质量表达结构、结果表达策略、包装升级策略；同时在 `SKILL.md` 中明确两种角色如何使用它，并补规则用例与验证场景。

**Tech Stack:** Markdown, repo validation scripts, rule-based prompt tests

### Task 1: Add failing expectations

**Files:**
- Modify: `SKILL.md`
- Create: `references/high-quality-signal-library.md`
- Modify: `references/rule-test-cases.md`
- Modify: `references/validation-scenarios.md`

**Step 1: Define the failing checks**

Check for these markers after implementation:
- `## High-Quality Resume Signal Library`
- `references/high-quality-signal-library.md`
- `后端`
- `产品`
- `运营`
- `销售`
- `Scenario 15: Packaging Should Use The High-Quality Signal Library`

**Step 2: Run the failing verification**

Run:

```bash
python3 - <<'PY'
from pathlib import Path
base = Path('.')
skill = (base / 'SKILL.md').read_text()
lib = (base / 'references/high-quality-signal-library.md').read_text()
scenarios = (base / 'references/validation-scenarios.md').read_text()
assert '## High-Quality Resume Signal Library' in skill
assert '后端' in lib
assert '产品' in lib
assert '运营' in lib
assert '销售' in lib
assert 'Scenario 15: Packaging Should Use The High-Quality Signal Library' in scenarios
PY
```

Expected: fail before implementation because the library file and related rule do not exist yet.

### Task 2: Create the v1 signal library

**Files:**
- Create: `references/high-quality-signal-library.md`

**Step 1: Define the shared structure**

Each covered family should include:
- 高质量信号
- 高质量表达结构
- 结果表达策略
- 包装升级策略

**Step 2: Limit v1 scope**

Only cover:
- 后端
- 产品
- 运营
- 销售

### Task 3: Connect the library to the skill

**Files:**
- Modify: `SKILL.md`

**Step 1: Add a dedicated signal library section**

Explain what the library is and why it is not a raw resume sample dump.

**Step 2: Define role usage**

State how:
- 简历包装教练 uses it to choose angles and follow-up questions
- 审核官 uses it to judge current level and safer upgrade paths

### Task 4: Add behavior coverage

**Files:**
- Modify: `references/rule-test-cases.md`
- Modify: `references/validation-scenarios.md`

**Step 1: Add a rule case**

Cover the expectation that packaging should be grounded in role-specific high-quality signals, not generic beautification.

**Step 2: Add scenario 15**

Cover a realistic prompt where the system must choose stronger angles by referencing the signal library.

### Task 5: Verify and prepare PR

**Files:**
- Modify: `SKILL.md`
- Create: `references/high-quality-signal-library.md`
- Modify: `references/rule-test-cases.md`
- Modify: `references/validation-scenarios.md`
- Create: `docs/plans/2026-03-29-issue-16-signal-library.md`

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
git commit -m "feat: add high-quality signal library"
```

PR body must include `close #16`.
