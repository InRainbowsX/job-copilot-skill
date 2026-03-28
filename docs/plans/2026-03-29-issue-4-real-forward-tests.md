# Issue #4 Real Resume Forward Tests Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Add realistic forward-test scenarios based on two real resumes, then convert shortcomings exposed by those cases into follow-up issues.

**Architecture:** Extend the existing validation docs instead of introducing a new framework. Use one non-technical resume and one technical resume to verify routing, timeline weighting, gap handling, packaging depth, review-officer calibration, and interview survivability. Record discovered shortcomings as GitHub issues so future work stays issue-driven.

**Tech Stack:** Markdown documentation, GitHub issues, repository validation scripts

### Task 1: Confirm the gap in current coverage

**Files:**
- Read: `references/validation-scenarios.md`
- Read: `references/rule-test-cases.md`
- Read: `references/smoke-test-checklist.md`

**Step 1: Write the failing test**

Check that no real-resume forward-test material exists yet.

```bash
rg -n '张雪琴|王旭|真实简历前向验证' references docs
```

**Step 2: Run test to verify it fails**

Run:

```bash
rg -n '张雪琴|王旭|真实简历前向验证' references docs
```

Expected: no matches.

**Step 3: Record the intended additions**

Plan to add:

- one forward-test findings document
- two real-resume scenarios in `references/validation-scenarios.md`
- matching rule-test cases
- matching smoke-test checklist entries

### Task 2: Add the real-resume forward-test findings document

**Files:**
- Create: `references/real-resume-forward-tests.md`

**Step 1: Write the failing test**

```bash
test -f references/real-resume-forward-tests.md
```

**Step 2: Run test to verify it fails**

Run:

```bash
test -f references/real-resume-forward-tests.md
```

Expected: exit code 1.

**Step 3: Write minimal implementation**

Create a document that records:

- candidate snapshot
- expected routing
- expected deep-dive focus
- expected review focus
- acceptance points
- shortcomings exposed by the case

**Step 4: Run test to verify it passes**

Run:

```bash
test -f references/real-resume-forward-tests.md
```

Expected: exit code 0.

### Task 3: Extend validation and rule-test docs with the two real cases

**Files:**
- Modify: `references/validation-scenarios.md`
- Modify: `references/rule-test-cases.md`
- Modify: `references/smoke-test-checklist.md`

**Step 1: Write the failing test**

```bash
rg -n '张雪琴|王旭' references/validation-scenarios.md references/rule-test-cases.md references/smoke-test-checklist.md
```

**Step 2: Run test to verify it fails**

Run:

```bash
rg -n '张雪琴|王旭' references/validation-scenarios.md references/rule-test-cases.md references/smoke-test-checklist.md
```

Expected: no matches.

**Step 3: Write minimal implementation**

Add:

- one non-technical forward-test scenario for 张雪琴
- one technical forward-test scenario for 王旭
- rule-test cases that express the key expected behaviors
- smoke-test checklist entries for real-resume runs

**Step 4: Run test to verify it passes**

Run:

```bash
rg -n '张雪琴|王旭' references/validation-scenarios.md references/rule-test-cases.md references/smoke-test-checklist.md
```

Expected: matches in all three files.

### Task 4: Convert discovered shortcomings into follow-up issues

**Files:**
- Read: `references/real-resume-forward-tests.md`

**Step 1: Write the failing test**

Identify shortcomings that are not already covered well by existing open issues.

**Step 2: Run test to verify it fails**

Use the GitHub issue list plus the findings doc to confirm missing follow-up coverage.

**Step 3: Write minimal implementation**

Create focused GitHub issues for shortcomings exposed by the two real resumes.

### Task 5: Verify and prepare PR

**Files:**
- Verify: repository-wide relevant docs

**Step 1: Run verification**

```bash
./scripts/run_checks.sh
```

Expected: success.

**Step 2: Prepare commit and PR**

Commit the doc changes and open a PR that closes `#4`.
