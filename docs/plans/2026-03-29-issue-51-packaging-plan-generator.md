# Issue #51 Packaging Plan Generator Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Add a stable `包装方案` layer so the skill can decide the packaging path before writing final resume bullets. The plan should be reusable by both the resume packaging coach and the review officer.

**Architecture:** Keep the change at the skill-and-reference layer. Add a dedicated packaging-plan template, wire the behavior into `SKILL.md`, and expand rule tests, smoke tests, and validation scenarios so the repository can check for plan-first behavior.

**Tech Stack:** Markdown skill spec, reference docs, rule-test docs, validation docs, repository validation script.

### Task 1: Add the packaging-plan template

**Files:**
- Add: `references/packaging-plan-template.md`

**Step 1: Define the plan purpose**

Document that the packaging plan:

- sits between resume diagnosis and final wording
- is not the final resume copy
- gives the user a clear packaging path before the skill rewrites bullets
- can be reviewed by the review officer

**Step 2: Define the minimum plan sections**

Require at least:

- target role and main packaging direction
- main narrative and supporting narrative order
- per-experience packaging goal
- facts that must be supplemented
- claims that must be downgraded
- recommended version A / version B

### Task 2: Wire the packaging plan into the workflow

**Files:**
- Modify: `SKILL.md`
- Modify: `assets/project-packaging-card-template.md`

**Step 1: Add plan-before-final-copy behavior**

Require the skill to:

- produce a packaging plan before treating final wording as stable
- let the review officer evaluate the plan itself, not only the wording
- keep the plan separate from the final bullets

**Step 2: Link plan and project cards**

Ensure the project packaging card can express how an individual project fits the larger packaging plan.

### Task 3: Add behavior-level test coverage

**Files:**
- Modify: `references/rule-test-cases.md`
- Modify: `references/smoke-test-checklist.md`
- Modify: `references/validation-scenarios.md`

**Step 1: Add rule-test coverage**

Add a case that fails if the skill jumps from diagnosis to final rewriting without a clear packaging plan.

**Step 2: Add smoke coverage**

Add at least one smoke item checking:

- whether the skill tells the user the main packaging direction
- whether it distinguishes version A / version B or an aggressive vs safe route
- whether it lists facts that still need support

**Step 3: Add validation scenario**

Add a scenario that expects the packaging plan to appear before final wording.

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

- a packaging-plan template
- workflow rules for plan-first packaging
- rule tests, smoke tests, and validation coverage

It should explicitly not claim to implement:

- all fine-grained template expansion from `#53`
- all background-knowledge expansion from `#52/#54`
