# Issue #53 Fine-Grained Template Library Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Expand the fine-grained resume-template library so the skill can package and review resumes using subdomain-level standards instead of only broad family templates.

**Architecture:** Add two fine-grained templates first: one for `内容运营 / 自媒体运营`, one for `风控 / 反爬后端`. Wire them into the broader operations/backend templates and into `SKILL.md`, then add rule-test, smoke-test, and validation coverage so the new behavior is testable.

**Tech Stack:** Markdown skill spec, reference docs, rule-test docs, validation docs, repository validation script.

### Task 1: Add fine-grained content-operations template

**Files:**
- Add: `references/content-operations-template.md`

**Step 1: Define the template contract**

Cover at least:
- strong signals
- expression structure
- result strategy
- upgrade path
- high-risk phrasing
- mock interview follow-up chain

**Step 2: Keep it focused**

Use real-resume learnings such as personal creation periods, audience positioning, topic selection, platform-native distribution, and iteration loops.

### Task 2: Add fine-grained risk-control-backend template

**Files:**
- Add: `references/risk-control-backend-template.md`

**Step 1: Define the template contract**

Cover at least:
- strong signals
- expression structure
- result strategy
- upgrade path
- high-risk phrasing
- mock interview follow-up chain

**Step 2: Keep it focused**

Use real-resume learnings such as anti-crawl boundaries, device intelligence, decision paths, latency, availability, and ownership-risk hot spots.

### Task 3: Wire the fine-grained templates into existing routes

**Files:**
- Modify: `SKILL.md`
- Modify: `references/operations-template.md`
- Modify: `references/backend-template.md`
- Modify: `references/high-quality-signal-library.md`

**Step 1: Add explicit routing hooks**

Require the skill to consult the fine-grained templates when the materials clearly match those subdomains.

**Step 2: Keep scope narrow**

Do not attempt a full template explosion for every family. This issue only covers the two high-priority subdomains exposed by real resume tests.

### Task 4: Add behavior-level test coverage

**Files:**
- Modify: `references/rule-test-cases.md`
- Modify: `references/smoke-test-checklist.md`
- Modify: `references/validation-scenarios.md`

**Step 1: Add rule-test cases**

Add cases that require the fine-grained templates to influence packaging and review language.

**Step 2: Add smoke and validation coverage**

Use content-ops and risk-control-backend scenarios to ensure the system behaves differently from broad operations/backend defaults.

### Task 5: Verify repository health

**Files:**
- No file changes expected

**Step 1: Run repository checks**

Run:

```bash
./scripts/run_checks.sh
```

Expected: repository checks pass.

### Task 6: Prepare PR scope

**Files:**
- No file changes expected

**Step 1: Keep PR scope explicit**

The PR should clearly state that it adds:
- a content-operations fine-grained template
- a risk-control-backend fine-grained template
- minimal wiring into broad families and signal library
- rule tests and validation coverage

It should explicitly not claim to implement:
- all remaining families
- the full issue set from `#47` and `#48`
