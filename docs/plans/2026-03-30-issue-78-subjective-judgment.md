# Issue #78 Subjective Judgment Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Require the system to add a concrete subjective judgment after completing a user's explicit request.

**Architecture:** Add an explicit post-delivery judgment rule to the main skill and extend validation scenarios to cover "done but no judgment" failures.

**Tech Stack:** Markdown skill docs, validation scenarios, repository check script.

### Task 1: Add judgment-after-delivery rule

**Files:**
- Modify: `SKILL.md`

**Step 1:** Define what must be included after a core deliverable is returned.

**Step 2:** Make the judgment concrete: quality, stage readiness, shortfalls, and whether to continue.

### Task 2: Add validation coverage

**Files:**
- Modify: `references/validation-scenarios.md`

**Step 1:** Add a scenario where the system completes the requested draft but fails to give its own judgment.

**Step 2:** Add expectations for specific, non-generic evaluation.

### Task 3: Verify and prepare PR

**Files:**
- Test: `./scripts/run_checks.sh`

**Step 1:** Run `./scripts/run_checks.sh`.

**Step 2:** Commit with an issue-linked message and open a PR that closes `#78`.
