# Issue #23 Timeline Weighting Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Add explicit timeline-weighting rules so the skill prioritizes recent and role-relevant experience in social recruiting contexts instead of over-promoting distant campus experience.

**Architecture:** Keep the change at the rule layer. Update `SKILL.md` with a dedicated timeline-priority section and narrow role-routing guidance, then add validation scenarios that fail when the skill incorrectly treats far-away campus work as the main narrative for a social-hire candidate.

**Tech Stack:** Markdown skill spec, validation reference docs, repository validation script.

### Task 1: Add timeline-priority rules

**Files:**
- Modify: `SKILL.md`

**Step 1: Define social-hire timeline weighting**

Document that, by default:

- the current session date or current hiring moment should be stated when timeline weighting matters
- the analysis should compare concrete experience time ranges, not just say "recent" or "too far"
- recent 1 to 3 year experience carries the highest weight
- timeline priority applies before choosing the main project narrative
- role relevance still matters, but distant experience should not automatically outrank recent work just because it sounds stronger

**Step 2: Define campus-experience escalation and downgrade rules**

Clarify when campus experience can still be elevated:

- only if recent work is clearly too weak or too unrelated
- or if the target role is entry-level and the candidate is still in that transition band

Clarify when campus experience should be downgraded:

- when the user is in a social-hire context and recent work can support the target role
- when it works better as supporting evidence rather than the main story

### Task 2: Add validation coverage

**Files:**
- Modify: `references/validation-scenarios.md`

**Step 1: Add a distant-campus-experience scenario**

Create a scenario where:

- the current date is explicit
- the candidate has an older campus content project
- the candidate also has newer work experience
- the skill should keep the newer work as the main narrative unless the newer work clearly fails the target role

**Step 2: Keep scope narrow**

Do not pull in gap handling or personal-project packaging rules here.

### Task 3: Verify repository health

**Files:**
- No file changes expected

**Step 1: Run repository checks**

Run:

```bash
./scripts/run_checks.sh
```

Expected: repository checks pass.

### Task 4: Prepare PR scope

**Files:**
- No file changes expected

**Step 1: Keep PR scope explicit**

The PR should clearly state that it adds:

- timeline weighting
- recent-experience priority
- campus-experience escalation and downgrade rules

It should explicitly not claim to implement:

- gap handling
- personal project packaging
- Agent role renaming
