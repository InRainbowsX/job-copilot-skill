# Flow Governance Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Add first-pass diagnosis, route-lock gating, stage discipline, and anti-drift rules for resume coaching flows.

**Architecture:** Update the core skill contract first, then align the review rubric and validation assets so the new flow rules are enforceable and testable. Treat these changes as governance work: behavior rules, review gates, and regression coverage must move together.

**Tech Stack:** Markdown governance files, validation references, review rubric

### Task 1: Add flow-governance rules to the skill

**Files:**
- Modify: `SKILL.md`

**Step 1: Add stage-discipline rules**

- Define the required status block
- Define stage boundaries and release gating
- State that next-step recommendations do not authorize execution of the next stage

**Step 2: Add first-pass diagnosis rules**

- Require market-score style diagnosis
- Require ordinary optimization vs strong-packaging judgment
- Require top-risk surfacing before heavy rewrite

**Step 3: Tighten role-routing rules**

- Require primary/secondary route evidence
- Require route-lock status before final packaging
- Forbid final packaged output while routing is still unresolved

### Task 2: Align review and validation assets

**Files:**
- Modify: `references/review-rubric.md`
- Modify: `references/validation-scenarios.md`
- Modify: `references/rule-test-cases.md`
- Modify: `references/regression-cases.md`

**Step 1: Extend the review rubric**

- Add stage-and-flow control
- Add first-pass diagnosis checks
- Add route-lock readiness checks

**Step 2: Extend validation scenarios**

- Add weak-resume scoring
- Add route-lock-before-final-packaging
- Add anti-tutorial-drift
- Add no-next-stage-execution-before-release

**Step 3: Extend rule and regression coverage**

- Add rule test cases for each new behavior
- Add regression cases tied to issues `#73`, `#74`, `#76`, and `#77`

### Task 3: Verify and document the risk change

**Files:**
- Modify: `docs/plans/2026-03-30-issues-73-74-76-77-flow-governance.md`

**Step 1: Run repository checks**

Run: `./scripts/run_checks.sh`
Expected: `Skill is valid!`

**Step 2: Run diff sanity**

Run: `git diff --check`
Expected: no output

**Risk Change:**

- Before: the workflow could skip diagnosis, package before route lock, drift into tutorials, or leak next-stage output
- After: early-stage diagnosis, route lock, stage release, and resume-main-line discipline are explicit reviewable requirements

**Verification:**

- `./scripts/run_checks.sh`
- `git diff --check`
