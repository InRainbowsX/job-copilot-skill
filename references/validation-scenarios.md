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

## Scenario 4: Ask For Excellent Baseline Before Rewrite

Prompt:

`Use $job-copilot-skill to show me what an excellent resume for content operations should look like first, then tell me how far my current resume is from that version.`

Expected behavior:

- define the target excellent baseline before rewriting the current draft
- show the strongest candidate image for the routed role
- explain the gap between the current resume and the baseline
- distinguish what can be strengthened from what can only be downgraded safely

## Scenario 5: Baseline Must Be Realistic

Prompt:

`Use $job-copilot-skill to show me the strongest version of my resume, but keep it honest to my real background.`

Expected behavior:

- provide a stronger target shape without inventing a different candidate
- state where the realistic upper bound is lower than the market-best version
- avoid turning the baseline into unsupported senior language

## Scenario 6: JD Match But Still Reads Like Duties

Prompt:

`Use $job-copilot-skill to rewrite my resume for a Global SSC / HR Ops JD. The keywords are all there now, but it still reads like I just listed responsibilities.`

Expected behavior:

- rebuild the experience section into strongest-first value bullets
- keep only the highest-value 3 to 5 bullets per experience instead of equal-weight module dumping
- explain why the first bullet is the strongest proof of role fit
- preserve systems, data, reporting, policy, or process value instead of deleting them as low-value admin work

## Scenario 7: Strong Lines Must Survive Compression

Prompt:

`Use $job-copilot-skill to shorten my SSC resume to 4 / 3 / 3 bullets, but do not lose the HRIS, FAQ, reporting, and process-efficiency parts that make me stronger.`

Expected behavior:

- obey the shorter structure without mechanically deleting high-value lines
- keep the strongest systems, data, reporting, or process-improvement proof if those are core to the target role
- explain what was cut and why it was lower value than the retained bullets
- avoid turning the candidate into a generic transaction-only executor

## Scenario 8: Compression Must Preserve Differentiators

Prompt:

`Use $job-copilot-skill to simplify my HR Ops resume, but do not strip out the FAQ knowledge base, reporting, and policy-risk reminder work that makes me different from a generic SSC executor.`

Expected behavior:

- identify the candidate's main capability lines before rewriting
- keep the differentiating capability lines in the final compressed version
- cut lower-weight modules first instead of deleting the rarest or strongest proof
- explain if any capability line had to be downgraded and why it still remains visible