# Issue #26 Force Status Block Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Make the workflow status block a mandatory opening structure for the first turn and for key transition turns so users can reliably see the current stage, current task, and next recommended step.

**Architecture:** Keep the change at the rule layer and validation layer. Update `SKILL.md` so the status block is no longer a soft suggestion but a required opening contract, then extend `references/validation-scenarios.md` to check for missing status blocks in realistic resume-packaging prompts.

**Tech Stack:** Markdown skill spec, validation reference docs, repository validation script.

### Task 1: Tighten the status-block rule in `SKILL.md`

**Files:**
- Modify: `SKILL.md`

**Step 1: Add fixed workflow visibility rules**

Document that the skill must surface a concise status block:

- on the first response after resume intake
- when the workflow moves into a new stage
- when the user explicitly asks for rewriting but the skill still needs diagnosis or follow-up

**Step 2: Define the minimum format**

Require the first lines of the response to show:

- `当前阶段`
- `当前任务`
- `下一步推荐`

Clarify that the block should remain short and conversational.

### Task 2: Add validation coverage

**Files:**
- Modify: `references/validation-scenarios.md`

**Step 1: Add scenario coverage for missing status blocks**

Add or update scenarios so the validation explicitly fails if:

- the response starts rewriting without a status block
- the response jumps to a later stage without saying so
- the response omits `当前阶段 / 当前任务 / 下一步推荐`

**Step 2: Keep scope narrow**

Do not fold in packaging-strategy, timeline, or gap-handling behavior here.

### Task 3: Verify repository health

**Files:**
- No file changes expected

**Step 1: Run repository checks**

Run:

```bash
./scripts/run_checks.sh
```

Expected: repository checks pass.

### Task 4: Prepare PR scope

**Files:**
- No file changes expected

**Step 1: Keep PR scope explicit**

The PR should clearly state that it only does:

- mandatory status-block opening rules
- stage-transition visibility rules
- validation updates

It should explicitly not claim to implement:

- packaging redesign
- timeline weighting
- gap packaging
