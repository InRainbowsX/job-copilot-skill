# Smoke Failure Issue Loop Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Add a lightweight but repeatable loop for turning smoke-test failures into structured GitHub issues and follow-up fixes.

**Architecture:** Keep the solution at the governance and tooling layer. Add one reference document describing the loop, one markdown template for smoke-derived issues, and one helper script that can print or create a four-section issue body. Then update repository guidance so new smoke failures must be captured as issues before more implementation work continues.

**Tech Stack:** Markdown documentation, shell script, GitHub CLI.

### Task 1: Add the smoke-failure loop reference

**Files:**
- Create: `references/smoke-failure-loop.md`

**Step 1: Describe the loop**

Document the required sequence:

- run smoke prompt
- observe failure
- capture prompt, observed behavior, expected behavior, impact
- create issue immediately
- only then continue with fix work

**Step 2: Define minimum captured fields**

List the minimum information that must be recorded for every newly discovered smoke failure.

### Task 2: Add a reusable issue template

**Files:**
- Create: `assets/smoke-failure-issue-template.md`

**Step 1: Create a four-section issue skeleton**

Use the repository's required issue shape:

- 背景
- 要做什么
- 别做什么
- 什么算完成

**Step 2: Tailor it to smoke failures**

Include placeholders for:

- failing smoke prompt
- observed behavior
- expected behavior
- impact or risk

### Task 3: Add a helper script

**Files:**
- Create: `scripts/create_smoke_issue.sh`

**Step 1: Write a failing usage expectation**

The script should support:

- `--title`
- `--prompt`
- `--observed`
- `--expected`
- `--impact`
- `--repo`
- `--dry-run`

**Step 2: Implement the script**

Behavior:

- validate required fields
- generate a four-section issue body
- in `--dry-run`, print the title and body
- otherwise call `gh issue create`

**Step 3: Verify the script**

Run:

```bash
bash scripts/create_smoke_issue.sh --title "示例问题" --prompt "示例 prompt" --observed "示例错误" --expected "示例预期" --impact "示例影响" --dry-run
```

Expected:

- prints a complete issue title and body
- does not call GitHub in dry-run mode

### Task 4: Update governance docs

**Files:**
- Modify: `AGENTS.md`
- Modify: `CONTRIBUTING.md`

**Step 1: Require issue creation after new smoke failures**

Clarify that when smoke testing finds a new issue:

- stop expanding fixes
- create the issue first
- use the smoke-failure template or helper script
- only continue implementation after the issue exists

### Task 5: Verify repository health

**Files:**
- No file changes expected

**Step 1: Run repository checks**

Run:

```bash
./scripts/run_checks.sh
```

Expected: repository checks pass.
