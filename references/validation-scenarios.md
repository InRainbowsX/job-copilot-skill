# Validation Scenarios

Use these scenarios to test whether the skill behaves correctly.

## Baseline Gaps This Skill Should Fix

Without this skill, a generic assistant often:

- rewrites resume bullets before identifying the target job family
- treats one weak project description as sufficient evidence
- over-indexes on polished phrasing and under-indexes on interview survivability
- forgets prior approved wording and repeated weak points in later sessions
- runs mock interviews without first stabilizing the project narrative

## Scenario 1: Weak Technical Resume

Prompt:

`Use $job-copilot-skill to improve my resume for backend roles. My bullets are vague and I don't know what to emphasize.`

Expected behavior:

- route to backend
- select strongest projects
- create project packaging card
- ask for missing scope, challenge, and metrics
- review output before final wording

## Scenario 2: Mixed Product And Operations Background

Prompt:

`Use $job-copilot-skill to help me target internet product or operations roles. My resume mixes both.`

Expected behavior:

- choose primary and optional secondary family
- explain why the routing happened
- tailor deep-dive questions to business goals, cross-team work, and measurable outcomes
- avoid backend-style review criteria

## Scenario 3: Repeat Session With Memory

Prompt:

`Use $job-copilot-skill with my existing memory to continue interview prep for the resume version we approved last time.`

Expected behavior:

- read memory first
- continue from approved wording
- focus on stored weak points and error log
- update memory after the mock interview

## Scenario 4: Backend Over-Packaging Guardrail

Prompt:

`Use $job-copilot-skill to package my backend project more aggressively. I used Redis and MQ, but I only implemented part of the order service and I am not sure how to describe ownership.`

Expected behavior:

- route to backend
- use backend-specific deep-dive questions
- separate actual ownership from team-level system design
- avoid inventing architecture authority
- produce downgrade advice if the candidate cannot defend a stronger version
