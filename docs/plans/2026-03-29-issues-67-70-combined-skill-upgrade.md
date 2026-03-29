# Issues #67-#70 Combined Skill Upgrade Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Upgrade the skill so it can better explain packaging choices, stay legible in very long conversations, use segmented role pattern libraries for content-operations and risk-control backend, and run stronger pressure interview chains for those two tracks.

**Architecture:** Keep the shared dual-agent workflow as the backbone. Add a new segmented-role reference layer for excellent resume patterns and role-specific interview chains, extend the main skill with stronger explanation and stage-refresh rules, and update shared templates and validation scenarios so the new behavior is testable instead of implied.

**Tech Stack:** Markdown skill docs, governance references, validation scenarios, repository check script, GitHub issue/PR workflow.

### Task 1: Prepare branch and baseline

**Files:**
- Create: none
- Modify: none
- Test: `./scripts/run_checks.sh`

**Step 1:** Work on branch `codex/67-70-combined-skill-upgrade` from `main`.

**Step 2:** Run `./scripts/run_checks.sh` before editing to confirm baseline state.

**Step 3:** Record any pre-existing failures or unrelated untracked files.

### Task 2: Add segmented role pattern references

**Files:**
- Create: `references/content-operations-patterns.md`
- Create: `references/risk-control-backend-patterns.md`

**Step 1:** Write a content-operations pattern library that captures strong signals, project storytelling shapes, risky expressions, and reviewer usage guidance.

**Step 2:** Write a risk-control-backend pattern library covering attack-defense chains, platform value expression, risky metrics, and reviewer usage guidance.

**Step 3:** Keep both files as abstracted pattern references, not raw example resumes.

### Task 3: Add role-specific pressure interview chains

**Files:**
- Create: `references/content-operations-interview-chain.md`
- Create: `references/risk-control-backend-interview-chain.md`

**Step 1:** Define multi-turn pressure chains for content-operations and self-media operations.

**Step 2:** Define multi-turn pressure chains for risk-control and anti-crawler backend.

**Step 3:** Include trigger points, likely weak answers, and correction directions so the chains are reusable by both reviewer and interviewer roles.

### Task 4: Upgrade the shared skill rules

**Files:**
- Modify: `SKILL.md`
- Modify: `references/job-families.md`
- Modify: `references/review-rubric.md`

**Step 1:** Add packaging explanation and ranking-justification requirements to the main workflow and project output expectations.

**Step 2:** Add long-conversation stage refresh requirements with entry conditions, exit conditions, and current blockers.

**Step 3:** Link content-operations and risk-control backend to the new role-specific pattern libraries and interview chains.

**Step 4:** Extend family routing notes for self-media operations and risk-control / anti-crawler backend sub-signals.

**Step 5:** Extend the review rubric so role-specific calibration and explanation quality become explicit review checks.

### Task 5: Upgrade shared templates

**Files:**
- Modify: `assets/project-packaging-card-template.md`
- Modify: `assets/memory-template.md`
- Modify: `assets/interview-error-log-template.md`

**Step 1:** Add explicit fields for packaging rationale, narrative ranking, and role-fit explanation to the project card.

**Step 2:** Add durable memory slots for approved ranking logic, current stage blockers, and segmented-role focus.

**Step 3:** Extend the interview error log so pressure-chain failures and follow-up breakpoints can be tracked.

### Task 6: Add validation coverage

**Files:**
- Modify: `references/validation-scenarios.md`

**Step 1:** Add scenarios for long-dialog stage refresh, packaging explanation, content-operations specialization, and risk-control backend specialization.

**Step 2:** Make each scenario define expected routing, required explanation behavior, and at least one over-packaging or interview-pressure risk.

### Task 7: Verify and prepare PR

**Files:**
- Test: `./scripts/run_checks.sh`

**Step 1:** Run `./scripts/run_checks.sh`.

**Step 2:** Review diffs for issue-scope drift and README-first violations.

**Step 3:** Summarize how the PR addresses `#67`, `#68`, `#69`, and `#70`, including risk changes and validation evidence.
