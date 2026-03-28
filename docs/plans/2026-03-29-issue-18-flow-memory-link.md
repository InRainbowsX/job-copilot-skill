# Issue #18 Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** 明确流程状态、项目卡片与 memory 的联动边界，让后续会话可以基于上次进度恢复，而不是从头开始。

**Architecture:** 只修改 `SKILL.md`、memory 模板、项目卡片模板以及规则用例/验证场景，定义哪些阶段信息要持久化、哪些只属于当前会话。

**Tech Stack:** Markdown, repo validation scripts, rule-based prompt tests

### Task 1: Add failing expectations

**Files:**
- Modify: `SKILL.md`
- Modify: `assets/memory-template.md`
- Modify: `assets/project-packaging-card-template.md`
- Modify: `references/rule-test-cases.md`
- Modify: `references/validation-scenarios.md`

**Step 1: Define the failing checks**

Check for these markers after implementation:
- `## Flow-State And Memory Link`
- `Current workflow stage`
- `Resume from stage`
- `Case 13: Memory And Project Cards Must Support Session Resume`
- `Scenario 18: Follow-Up Session Should Resume From Stored Progress`

**Step 2: Run the failing verification**

Run:

```bash
python3 - <<'PY'
from pathlib import Path
base = Path('.')
skill = (base / 'SKILL.md').read_text()
memory = (base / 'assets/memory-template.md').read_text()
card = (base / 'assets/project-packaging-card-template.md').read_text()
rules = (base / 'references/rule-test-cases.md').read_text()
scenarios = (base / 'references/validation-scenarios.md').read_text()
assert '## Flow-State And Memory Link' in skill
assert 'Current workflow stage' in memory
assert 'Resume from stage' in card
assert 'Case 13: Memory And Project Cards Must Support Session Resume' in rules
assert 'Scenario 18: Follow-Up Session Should Resume From Stored Progress' in scenarios
PY
```

Expected: fail before implementation.

### Task 2: Define the flow-memory boundary

**Files:**
- Modify: `SKILL.md`
- Modify: `assets/memory-template.md`
- Modify: `assets/project-packaging-card-template.md`

**Step 1: Add a dedicated flow-memory section**

Document:
- which stage state is transient
- which milestone decisions should be persisted
- how project cards and memory split responsibility

**Step 2: Add resume-oriented fields**

Add fields that help later sessions resume from the right stage without replaying the whole workflow.

### Task 3: Add behavior coverage

**Files:**
- Modify: `references/rule-test-cases.md`
- Modify: `references/validation-scenarios.md`

**Step 1: Add rule case**

Require memory and project cards to support stage-aware resume behavior.

**Step 2: Add scenario 18**

Use a realistic second-session prompt that should continue from stored progress rather than restarting.

### Task 4: Verify and prepare PR

**Files:**
- Modify: `SKILL.md`
- Modify: `assets/memory-template.md`
- Modify: `assets/project-packaging-card-template.md`
- Modify: `references/rule-test-cases.md`
- Modify: `references/validation-scenarios.md`
- Create: `docs/plans/2026-03-29-issue-18-flow-memory-link.md`

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
git commit -m "feat: link flow state with memory and project cards"
```

PR body must include `close #18`.
