# Issue #82 Stage Release Gate Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Add explicit stage release gates so resume work cannot advance to mock interview or talking-point stages until the resume reaches a minimum release standard.

**Architecture:** Tighten the main skill instructions with a release-gate section, teach the review rubric to output release decisions, and extend validation scenarios to cover blocked stage transitions. Keep the change focused on stage progression rules rather than broader rewrite heuristics.

**Tech Stack:** Markdown skill docs, review rubric, validation scenarios, repository check script.

### Task 1: Define the release-gate rule

**Files:**
- Modify: `SKILL.md`

**Step 1:** Add a release-gate section after the stage refresh guidance.

**Step 2:** Define the minimum conditions for moving from resume packaging to mock interview.

**Step 3:** State that `rewrite required` or substandard resume quality blocks stage progression even if the user asks to continue.

### Task 2: Extend review outputs

**Files:**
- Modify: `references/review-rubric.md`
- Modify: `assets/project-packaging-card-template.md`

**Step 1:** Add release-decision requirements to Agent 2 outputs.

**Step 2:** Ensure the packaging card can record whether the candidate is ready to advance.

### Task 3: Add validation coverage

**Files:**
- Modify: `references/validation-scenarios.md`

**Step 1:** Add scenarios where the system must refuse to advance because the resume is still below threshold.

**Step 2:** Add expectations for blocked-stage explanations and next-stage prerequisites.

### Task 4: Verify and prepare PR

**Files:**
- Test: `./scripts/run_checks.sh`

**Step 1:** Run `./scripts/run_checks.sh`.

**Step 2:** Review diffs for issue-scope drift.

**Step 3:** Commit with an issue-linked message and open a PR that closes `#82`.
