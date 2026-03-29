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

## Scenario 9: Deliverable Must Include Judgment

Prompt:

`Use $job-copilot-skill to rewrite my resume summary for product roles.`

Expected behavior:

- provide the requested summary
- then add a concrete judgment about whether the summary is strong enough for the current stage
- state the main shortfall if the result is still weak
- avoid ending with only the artifact and no evaluation

## Scenario 10: Judgment Must Be Specific

Prompt:

`Use $job-copilot-skill to produce a JD-tailored version of my resume and tell me if it is ready.`

Expected behavior:

- provide the requested tailored version
- explicitly judge whether it is ready or still below threshold
- explain the reason in concrete terms rather than generic praise
- connect the judgment to whether the workflow should continue or stay in the current stage

## Scenario 11: Targeted Rewrite Must Compare Back To Source

Prompt:

`Use $job-copilot-skill to rewrite my resume for a Global SSC JD, then tell me what you kept, what you downgraded, and what you removed from my original resume.`

Expected behavior:

- perform the targeted rewrite
- compare the rewrite back to the source resume before treating it as done
- explicitly name retained, downgraded, and removed source signals
- explain why any removed content was lower value or unsafe to keep

## Scenario 12: Data And System Signals Count For Support Roles

Prompt:

`Use $job-copilot-skill to rewrite my HR Ops resume. I do a lot of reporting, FAQ maintenance, system updates, and policy reminders, but those are the parts that actually make me stronger for SSC roles.`

Expected behavior:

- recognize those lines as support-capability strengths for the routed role instead of default low-value admin work
- rewrite them as operating support, process, compliance, or service capability
- keep them if they are stronger role-fit signals than generic activity lines

## Scenario 13: 4 / 3 / 3 Cannot Override Stronger Signals

Prompt:

`Use $job-copilot-skill to compress my resume to 4 / 3 / 3 bullets, but if the reporting, FAQ, and policy-warning work is more important than activity-planning filler, keep the stronger signals even if the structure becomes uneven first.`

Expected behavior:

- treat `4 / 3 / 3` as a formatting target rather than a rigid deletion rule
- decide the strongest role-fit signals before deciding exact bullet counts
- avoid deleting stronger systems, reporting, or policy signals just to satisfy a neat count

## Scenario 14: Weak Resume Must Be Scored Before Rewrite

Prompt:

`Use $job-copilot-skill to help with my content-operations resume. It has a long gap, weak recent experience, and I don't know whether it can be saved.`

Expected behavior:

- stay in an early diagnosis stage
- provide a market score or equivalent strength judgment
- state whether ordinary optimization is enough or strong packaging is required
- identify the top risks before attempting final wording

## Scenario 15: Route Must Be Locked Before Final Packaging

Prompt:

`Use $job-copilot-skill to package my resume. I could target content operations, merchant operations, or ad operations, and I have not decided yet.`

Expected behavior:

- compare the plausible routes
- name the primary and optional secondary route, or clearly say the route is not locked yet
- explain what evidence supports each route
- avoid presenting a final packaged resume as settled before route lock

## Scenario 16: Resume Session Must Stay On Resume Main Line

Prompt:

`Use $job-copilot-skill to help with my resume gap. I am thinking about starting a Xiaohongshu account.`

Expected behavior:

- answer the question through resume value, gap handling, and interview explainability first
- explain where the Xiaohongshu idea belongs on the resume, if anywhere
- avoid drifting into a detailed account-growth tutorial unless the user clearly changes the task

## Scenario 17: Next Stage Must Not Execute Early

Prompt:

`Use $job-copilot-skill to finish my resume, and after that start the mock interview.`

Expected behavior:

- complete the current resume-stage work first
- judge whether the resume is actually released or still blocked
- only recommend mock interview as the next stage when release is not yet granted
- avoid executing stage-4 interview content before the resume is released

## Scenario 18: Gap Option Suggestions Must Stay Truthful And Resume-First

Prompt:

`Use $job-copilot-skill to tell me what I can put in my gap period. I am thinking about a Xiaohongshu account, a small writing project, or some kind of case-study portfolio.`

Expected behavior:

- rank the options by fit with the target role rather than giving generic project ideas
- explain where each option belongs on the resume
- state the minimum support needed for each option
- avoid turning any option into fake formal employment

## Scenario 19: Chinese Real-Resume Request Must Prefer Domestic Real Cases

Prompt:

`Use $job-copilot-skill to show me some Chinese real resume examples. Do not give me foreign templates.`

Expected behavior:

- prefer domestic real-candidate or real-case sources first
- clearly label whether each source is a real-candidate post, a before/after case, an interview deep-dive, or only commentary
- avoid presenting template sites as if they were real resume originals
- explain the limitation when only partial public samples exist
