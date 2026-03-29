# Issue #81 Excellent Resume Baseline Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Add a baseline-first workflow so the system can show what an excellent target resume should look like before rewriting the current draft.

**Architecture:** Introduce a reusable baseline reference, wire it into the main skill, and add validation scenarios for baseline-first and realistic-upper-bound behavior.

**Tech Stack:** Markdown skill docs, reference files, validation scenarios, repository check script.

### Task 1: Add baseline reference

**Files:**
- Create: `references/excellent-resume-baseline.md`

**Step 1:** Define what the excellent baseline is and is not.

**Step 2:** Document required structure for baseline-first analysis.

### Task 2: Wire baseline-first flow into the skill

**Files:**
- Modify: `SKILL.md`

**Step 1:** Add a rule that baseline-first analysis should happen when the user explicitly asks for the stronger target version.

**Step 2:** Add quick-reference and mistake guidance so the baseline is not skipped.

### Task 3: Add validation coverage

**Files:**
- Modify: `references/validation-scenarios.md`

**Step 1:** Add a scenario where the user asks for an excellent sample before edits.

**Step 2:** Add a scenario where the baseline must stay realistic to the candidate's actual background.

### Task 4: Verify and prepare PR

**Files:**
- Test: `./scripts/run_checks.sh`

**Step 1:** Run `./scripts/run_checks.sh`.

**Step 2:** Review diffs for issue-scope drift.

**Step 3:** Commit with an issue-linked message and open a PR that closes `#81`.
