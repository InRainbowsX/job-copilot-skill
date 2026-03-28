# Issue #24 Gap Recognition Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Add explicit gap-recognition and non-standard-experience classification rules so the skill can identify these periods before any packaging or interview guidance is attempted.

**Architecture:** Keep the change at the rule layer. Extend `SKILL.md` with a dedicated section for gap recognition and classification, then add matching rule-test and validation coverage so the behavior can be checked without relying on vague intuition.

**Tech Stack:** Markdown skill spec, validation reference docs, rule test cases, repository validation script.

### Task 1: Add gap-recognition rules

**Files:**
- Modify: `SKILL.md`

**Step 1: Define recognition-before-packaging**

Document that:

- gap periods must be identified before packaging
- non-standard experiences should not be auto-converted into employment
- those periods also should not be auto-collapsed into empty gaps

**Step 2: Add classification buckets**

Add at least:

- 纯空档
- 学习型 gap
- 项目型 gap
- 创作型 gap
- 混合型 gap

### Task 2: Add test coverage

**Files:**
- Modify: `references/rule-test-cases.md`
- Modify: `references/validation-scenarios.md`

**Step 1: Add a rule case for gap classification**

The rule case should check that the skill classifies the period before packaging it.

**Step 2: Add a validation scenario**

Use a mixed example with:

- transition preparation
- fiction writing
- personal content work

Expected: classify first, ask for missing details, do not turn it directly into formal employment.

### Task 3: Verify repository health

**Files:**
- No file changes expected

**Step 1: Run repository checks**

Run:

```bash
./scripts/run_checks.sh
```

Expected: repository checks pass.
