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

## Scenario 4: JD Match But Still Reads Like Duties

Prompt:

`Use $job-copilot-skill to rewrite my resume for a Global SSC / HR Ops JD. The keywords are all there now, but it still reads like I just listed responsibilities.`

Expected behavior:

- rebuild the experience section into strongest-first value bullets
- keep only the highest-value 3 to 5 bullets per experience instead of equal-weight module dumping
- explain why the first bullet is the strongest proof of role fit
- preserve systems, data, reporting, policy, or process value instead of deleting them as low-value admin work

## Scenario 5: Strong Lines Must Survive Compression

Prompt:

`Use $job-copilot-skill to shorten my SSC resume to 4 / 3 / 3 bullets, but do not lose the HRIS, FAQ, reporting, and process-efficiency parts that make me stronger.`

Expected behavior:

- obey the shorter structure without mechanically deleting high-value lines
- keep the strongest systems, data, reporting, or process-improvement proof if those are core to the target role
- explain what was cut and why it was lower value than the retained bullets
- avoid turning the candidate into a generic transaction-only executor
