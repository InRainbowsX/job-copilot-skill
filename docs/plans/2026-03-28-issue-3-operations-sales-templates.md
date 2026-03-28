# Issue #3 Operations And Sales Templates Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Add dedicated operations and sales job-family templates, connect them into the skill workflow, and add validation coverage for both families.

**Architecture:** Keep the existing shared dual-agent workflow unchanged. Add two role-specific reference templates, update routing and role-application instructions in the main skill, and extend validation scenarios so future changes can be checked against realistic operations and sales prompts.

**Tech Stack:** Markdown skill docs, GitHub issue/PR workflow, repository check script.

### Task 1: Prepare the isolated branch

**Files:**
- Create: none
- Modify: none
- Test: `./scripts/run_checks.sh`

**Step 1:** Work in branch `codex/3-operations-sales-templates` from `main`.

**Step 2:** Run `./scripts/run_checks.sh` in the worktree to confirm a clean baseline.

**Step 3:** Record any existing failures before editing files.

### Task 2: Add operations and sales templates

**Files:**
- Create: `references/operations-template.md`
- Create: `references/sales-template.md`
- Test: read templates for coverage against issue #3 requirements

**Step 1:** Write the operations template with role definition, routing signals, Agent 1 deep-dive prompts, packaging rules, Agent 2 review checks, and mock interview themes.

**Step 2:** Include explicit support for self-media operations within the operations template.

**Step 3:** Write the sales template with role definition, routing signals, Agent 1 deep-dive prompts, packaging rules, Agent 2 review checks, and mock interview themes.

**Step 4:** Keep both templates focused on issue #3 only; do not expand other families.

### Task 3: Connect templates into the shared skill

**Files:**
- Modify: `SKILL.md`
- Modify: `references/job-families.md`

**Step 1:** Update `SKILL.md` current coverage so operations and sales point to their dedicated templates.

**Step 2:** Add family-specific application notes so Agent 2 uses those templates when routed to operations or sales.

**Step 3:** Update `references/job-families.md` so those families explicitly link to the new templates.

### Task 4: Add validation scenarios

**Files:**
- Modify: `references/validation-scenarios.md`

**Step 1:** Add one operations scenario and one sales scenario.

**Step 2:** Make each scenario specify input, expected routing, and at least one over-packaging or ownership risk to catch.

### Task 5: Verify and publish

**Files:**
- Test: `./scripts/run_checks.sh`

**Step 1:** Run `./scripts/run_checks.sh`.

**Step 2:** Review diffs for issue scope drift.

**Step 3:** Commit with an issue-linked message.

**Step 4:** Push branch and open a PR that closes `#3`.
