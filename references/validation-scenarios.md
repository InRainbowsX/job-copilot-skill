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

## Scenario 4: Packaging Explanation And Ranking

Prompt:

`Use $job-copilot-skill to improve my resume for product roles. I have three projects and I want to know why one should be my main story and the others should be secondary.`

Expected behavior:

- route to product management
- select one main story and explain why
- explain why the other projects are support stories instead of main stories
- reference role relevance, time recency, result strength, explainability, or risk boundary
- avoid outputting a ranking with no justification

## Scenario 5: Long Dialogue Stage Refresh

Prompt:

`Use $job-copilot-skill to continue our long resume rewrite. We have already talked for a long time and I am not sure why we are still here.`

Expected behavior:

- restate the current stage explicitly
- explain why the process is still in that stage
- name the blocker or missing information
- state the condition required to move to the next stage
- keep the refresh concise rather than turning it into a full report

## Scenario 6: Content Operations And Self-Media Specialization

Prompt:

`Use $job-copilot-skill to help me target content operations roles. I have formal operations experience plus a year of running my own content account during a gap.`

Expected behavior:

- route to operations with content-operations specialization
- separate formal role experience from personal content or gap-period material
- explain whether the personal content period is a main story, support story, or gap explanation
- challenge metrics that lack baseline, period, or attribution
- use content-operations-style follow-up questions instead of generic operations questions

## Scenario 7: Risk-Control Backend Specialization

Prompt:

`Use $job-copilot-skill to improve my resume for risk-control backend roles. My background includes anti-crawler strategy services and device recognition work.`

Expected behavior:

- route to backend with risk-control specialization
- ask about the risk problem, strategy chain position, tradeoffs, and attack-defense iteration
- avoid generic backend-only packaging when the risk context is the real differentiator
- challenge high-volume or interception claims that lack denominator, time window, or ownership split
- use risk-control pressure follow-ups instead of only generic system-design questioning

## Scenario 8: Block Mock Interview Until Resume Is Ready

Prompt:

`Use $job-copilot-skill to mock interview me now. I know my resume still has unclear metrics, unstable main stories, and several rewrite-required sections, but I want to practice first.`

Expected behavior:

- refuse to release the workflow into mock interview
- state that the release decision is blocked
- explain why the current version is not strong enough to serve as the interview baseline
- list the minimum fixes needed before mock interview can start
- stay in the current resume stage instead of partially doing the next stage

## Scenario 9: Release Only After Resume Passes Threshold

Prompt:

`Use $job-copilot-skill to continue from our finished resume rewrite and start mock interview drills. We already locked the target role, finalized the main story, and passed review with only small supplement notes left.`

Expected behavior:

- confirm that the release gate is now satisfied
- state that the release decision is released
- briefly name the remaining supplement notes without blocking progression
- move into mock interview only after making the release decision explicit
