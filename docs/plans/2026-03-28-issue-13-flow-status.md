# Issue #13 Flow Status Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Add explicit workflow visibility to the skill so each turn makes the current stage, current task, and next recommended step visible to the user.

**Architecture:** Keep the change at the rule layer. Update the main skill contract in `SKILL.md` to require a lightweight status block and fixed four-stage workflow, then add validation coverage in `references/validation-scenarios.md` so the behavior is testable and reviewable.

**Tech Stack:** Markdown skill spec, reference docs, repository validation script.

### Task 1: Add flow-visibility rules to the skill

**Files:**
- Modify: `SKILL.md`

**Step 1: Update the core workflow section**

Add a fixed four-stage workflow model:

- 阶段 1：简历诊断与初步包装
- 阶段 2：项目深挖与补强
- 阶段 3：包装定稿与讲述稿生成
- 阶段 4：模拟面试与错题复盘

Clarify that the assistant must surface the stage instead of silently jumping between steps.

**Step 2: Add a status-block contract**

Document a lightweight turn-level structure that always includes:

- 当前阶段
- 当前任务
- 下一步推荐

Require it to be concise and conversational rather than report-heavy.

### Task 2: Add validation coverage

**Files:**
- Modify: `references/validation-scenarios.md`

**Step 1: Add a stage-visibility scenario**

Create at least one scenario that checks:

- the skill names the current stage
- the skill names the current task
- the skill gives a next recommended step
- the skill does not skip directly to final rewriting

**Step 2: Align wording with issue scope**

Keep validation focused on process visibility and state output only. Do not mix in packaging-strategy changes from other issues.

### Task 3: Verify repository state

**Files:**
- No file changes expected

**Step 1: Run repository checks**

Run:

```bash
./scripts/run_checks.sh
```

Expected: repository checks pass and skill structure remains valid.

### Task 4: Prepare reviewable branch output

**Files:**
- Modify: PR description later, no file change in this plan

**Step 1: Summarize scope for PR**

Capture that this change only introduces:

- four-stage workflow naming
- turn-level status block contract
- validation coverage

Explicitly call out that it does not implement:

- packaging strategy upgrade
- Agent 2 upgrade logic
- memory linkage changes
