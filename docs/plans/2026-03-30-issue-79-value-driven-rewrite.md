# Issue #79 Value-Driven Rewrite Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Prevent JD-focused resume rewrites from collapsing into duty lists by requiring value-driven experience bullets.

**Architecture:** Tighten the main skill with explicit rewrite structure rules, extend the review rubric to judge value-density and bullet quality, and add validation scenarios that fail when a rewrite still reads like a task list.

**Tech Stack:** Markdown skill docs, review rubric, validation scenarios, repository check script.

### Task 1: Add rewrite structure rules

**Files:**
- Modify: `SKILL.md`

**Step 1:** Add explicit rules for experience bullets to prioritize value over task inventory.

**Step 2:** Require 3-5 strongest bullets per experience instead of equal-weight module dumping.

**Step 3:** Require the first bullet to capture the strongest role value.

### Task 2: Extend review rubric

**Files:**
- Modify: `references/review-rubric.md`
- Modify: `assets/project-packaging-card-template.md`

**Step 1:** Add a check for value-driven rather than duty-driven experience writing.

**Step 2:** Ensure project cards capture the strongest value proof and candidate-facing scene/action/value logic.

### Task 3: Add validation coverage

**Files:**
- Modify: `references/validation-scenarios.md`

**Step 1:** Add scenarios where the rewrite matches the JD but still reads like a task list.

**Step 2:** Add expectations for bullet pruning, strongest-first ordering, and value framing.

### Task 4: Verify and prepare PR

**Files:**
- Test: `./scripts/run_checks.sh`

**Step 1:** Run `./scripts/run_checks.sh`.

**Step 2:** Review diffs for issue-scope drift.

**Step 3:** Commit with an issue-linked message and open a PR that closes `#79`.
