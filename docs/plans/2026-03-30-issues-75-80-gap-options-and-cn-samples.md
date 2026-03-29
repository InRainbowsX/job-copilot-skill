# Gap Options And Chinese Resume Samples Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Add a truthful gap-option library and a domestic real-resume sample index so resume packaging can rely on reusable Chinese-market references instead of drifting into fake work-history advice or foreign-only templates.

**Architecture:** Add two reference assets first, then wire them into `SKILL.md` as explicit lookup points. Extend validation and regression coverage so the skill must use these assets when users ask for gap options or Chinese real-resume examples.

**Tech Stack:** Markdown governance files, reference libraries, validation assets

### Task 1: Add the reusable reference assets

**Files:**
- Create: `references/gap-option-library.md`
- Create: `references/cn-real-resume-sample-index.md`

**Step 1: Build the gap-option library**

- group truthful gap options by scenario and risk
- explain resume placement, minimum support, and unsafe over-packaging patterns
- keep examples role-aware rather than generic life advice

**Step 2: Build the Chinese sample index**

- collect domestic, public, non-template-first sources
- label source type and reliability
- note whether each item is a real candidate self-report, a before/after case, an interview deep-dive, or a recruiter commentary supplement

### Task 2: Wire the assets into skill behavior

**Files:**
- Modify: `SKILL.md`
- Modify: `references/validation-scenarios.md`
- Modify: `references/rule-test-cases.md`
- Modify: `references/regression-cases.md`

**Step 1: Update the skill**

- tell the skill to use the gap-option library for truthful gap suggestions
- tell the skill to prefer the Chinese sample index when users ask for domestic or real resume examples
- require source-type disclosure when sample quality varies

**Step 2: Add validation and regression coverage**

- add one scenario for gap-option selection
- add one scenario for Chinese real-resume sample requests
- add matching rule cases and regressions for both

### Task 3: Verify the repository state

**Files:**
- Modify: `docs/plans/2026-03-30-issues-75-80-gap-options-and-cn-samples.md`

**Step 1: Run repository checks**

Run: `./scripts/run_checks.sh`
Expected: `Skill is valid!`

**Step 2: Run diff sanity**

Run: `git diff --check`
Expected: no output

**Risk Change:**

- Before: gap suggestions could stay too abstract, and "real resume" requests could fall back to foreign templates or unlabeled weak sources
- After: the skill has explicit Chinese-market references and a truthful menu of gap-period options with resume-safe boundaries

**Verification:**

- `./scripts/run_checks.sh`
- `git diff --check`
