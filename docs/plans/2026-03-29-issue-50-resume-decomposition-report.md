# Issue #50 Real Resume Decomposition Report Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Build a stable `真实简历系统拆解报告` mechanism so the skill understands a real resume before packaging it, and so both the resume packaging coach and the review officer can reuse the same decomposition result.

**Architecture:** Keep the change at the skill-and-reference layer. Add a dedicated decomposition-report reference, require the flow in `SKILL.md`, and expand rule tests, smoke tests, and validation scenarios so the behavior can be checked before any PR is opened.

**Tech Stack:** Markdown skill spec, reference docs, repository validation script.

### Task 1: Add the decomposition-report reference

**Files:**
- Add: `references/resume-decomposition-report.md`

**Step 1: Define the purpose and usage boundary**

Document that the decomposition report:

- is produced before packaging becomes stable
- is not the final resume copy
- is the common input for the resume packaging coach and the review officer
- should summarize what the skill already understands from the real resume

**Step 2: Define the minimum report sections**

Require at least:

- current analysis date and target role routing
- timeline breakdown
- main narrative, supporting narrative, and supplemental highlights
- metric-caliber and ownership-risk notes
- gap / non-standard experience conclusion
- transferable capabilities
- interview pressure points
- next deep-dive priorities

### Task 2: Wire the decomposition report into the workflow

**Files:**
- Modify: `SKILL.md`

**Step 1: Add decomposition before packaging**

Require the skill to:

- produce or summarize a decomposition report before treating packaging as stable
- explain what it has understood from the resume
- use the decomposition result to decide main narrative and deep-dive order

**Step 2: Keep the scope narrow**

Do not use this issue to redesign all job-family templates. The point is to add a common decomposition mechanism that works across job families.

### Task 3: Add behavior-level test coverage

**Files:**
- Modify: `references/rule-test-cases.md`
- Modify: `references/smoke-test-checklist.md`
- Modify: `references/validation-scenarios.md`

**Step 1: Add a rule-test case**

Create a case where the skill must first produce a structured decomposition view before final packaging.

**Step 2: Add smoke coverage**

Add at least one smoke item that checks whether the skill first explains:

- what it understood from the resume
- which experience is the main narrative
- what still needs deep-dive

**Step 3: Add validation scenario**

Add a scenario that fails if the skill jumps straight from resume intake to rewritten bullets without a decomposition layer.

### Task 4: Verify repository health

**Files:**
- No file changes expected

**Step 1: Run repository checks**

Run:

```bash
./scripts/run_checks.sh
```

Expected: repository checks pass.

### Task 5: Prepare PR scope

**Files:**
- No file changes expected

**Step 1: Keep PR scope explicit**

The PR should clearly state that it adds:

- a real-resume decomposition report mechanism
- a reusable decomposition reference
- rule tests, smoke tests, and validation coverage for the new behavior

It should explicitly not claim to implement:

- fine-grained content-operations knowledge expansion
- fine-grained risk-control backend knowledge expansion
- the final packaging-plan generator from `#51`

