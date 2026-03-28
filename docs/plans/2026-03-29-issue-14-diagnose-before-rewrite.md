# Issue #14 Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** 让简历包装教练默认遵循“先诊断、再追问、后改写”的流程，而不是直接给最终润色稿。

**Architecture:** 只修改 skill 规则与测试文档，不触碰其他岗位模板。先补规则用例和验证场景，再收紧 `SKILL.md` 中的主流程与包装教练职责。

**Tech Stack:** Markdown, repo validation scripts, rule-based prompt tests

### Task 1: Add failing expectations

**Files:**
- Modify: `references/rule-test-cases.md`
- Modify: `references/validation-scenarios.md`

**Step 1: Define the failing checks**

Check for these markers after implementation:
- `Resume Packaging Coach Flow`
- `Case 8: Packaging Coach Must Diagnose Before Rewriting`
- `Scenario 12: Packaging Must Diagnose Before Final Rewriting`

**Step 2: Run the failing verification**

Run:

```bash
python3 - <<'PY'
from pathlib import Path
base = Path('.')
skill = (base / 'SKILL.md').read_text()
rules = (base / 'references/rule-test-cases.md').read_text()
scenarios = (base / 'references/validation-scenarios.md').read_text()
assert 'Resume Packaging Coach Flow' in skill
assert 'Case 8: Packaging Coach Must Diagnose Before Rewriting' in rules
assert 'Scenario 12: Packaging Must Diagnose Before Final Rewriting' in scenarios
PY
```

Expected: fail before implementation because the new flow, case, and scenario do not exist yet.

### Task 2: Tighten the core workflow

**Files:**
- Modify: `SKILL.md`

**Step 1: Add resume packaging coach flow**

Insert a dedicated subsection under `## Core Workflow` that requires:
- identify strongest 1 to 3 experiences first
- explain current weakness
- recommend packaging direction
- ask for missing support
- only then produce stronger wording

**Step 2: Tighten Agent 1 behavior**

Update Agent 1 responsibilities and restrictions so the first pass cannot be treated as pure rewriting.

### Task 3: Add rule and scenario coverage

**Files:**
- Modify: `references/rule-test-cases.md`
- Modify: `references/validation-scenarios.md`

**Step 1: Add case 8**

Cover the rule that packaging must diagnose and follow up before final rewriting.

**Step 2: Add scenario 12**

Cover the realistic user behavior of asking for a direct rewrite while the material is still under-supported.

### Task 4: Verify and prepare PR

**Files:**
- Modify: `SKILL.md`
- Modify: `references/rule-test-cases.md`
- Modify: `references/validation-scenarios.md`
- Create: `docs/plans/2026-03-29-issue-14-diagnose-before-rewrite.md`

**Step 1: Re-run the targeted verification**

Run the same `python3` block from Task 1 and confirm it passes.

**Step 2: Run repo validation**

Run:

```bash
./scripts/run_checks.sh
```

Expected: pass.

**Step 3: Commit and open PR**

Commit with:

```bash
git commit -m "feat: require diagnose-before-rewrite packaging flow"
```

PR body must include `close #14`.
