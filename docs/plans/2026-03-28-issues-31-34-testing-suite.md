# Issues #31-#34 Testing Suite Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Add a practical testing and validation framework for the skill repository so behavior changes can be checked through rule cases, smoke prompts, and regression cases instead of relying only on structure validation.

**Architecture:** Keep the implementation at the documentation and governance layer. Add a testing strategy document plus three concrete test artifacts: rule test cases, smoke-test checklist, and regression cases. Then update repository guidance so future behavior changes are expected to touch the relevant test layers.

**Tech Stack:** Markdown reference docs, repository governance docs, validation script.

### Task 1: Add the testing framework overview

**Files:**
- Create: `references/testing-framework.md`

**Step 1: Define the testing layers**

Document the four layers:

- static checks
- rule test cases
- conversational smoke tests
- regression cases

**Step 2: Define when to use each layer**

Explain which changes require which validation layer and how the layers work together.

### Task 2: Add rule test cases and smoke prompts

**Files:**
- Create: `references/rule-test-cases.md`
- Create: `references/smoke-test-checklist.md`

**Step 1: Add a reusable rule-case format**

Each rule case should include:

- target rule
- input prompt
- expected behaviors
- forbidden behaviors

**Step 2: Add the first smoke-test checklist**

Include fixed prompts and the main observations to make after each run.

### Task 3: Add regression cases

**Files:**
- Create: `references/regression-cases.md`

**Step 1: Record already discovered failures**

Seed the regression set with known failures:

- missing status block
- jumping directly to rewrite
- distant campus experience overriding recent work

**Step 2: Define how future regressions are added**

Document the expected rule: once a real issue is fixed, it should add or update a regression case.

### Task 4: Update repository workflow guidance

**Files:**
- Modify: `AGENTS.md`
- Modify: `CONTRIBUTING.md`

**Step 1: Add testing expectations**

Clarify that behavior changes should update:

- validation scenarios
- rule test cases
- smoke or regression artifacts when relevant

### Task 5: Verify repository health

**Files:**
- No file changes expected

**Step 1: Run repository checks**

Run:

```bash
./scripts/run_checks.sh
```

Expected: repository checks pass.
