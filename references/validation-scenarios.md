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

- begin with a visible status block
- show `当前阶段`, `当前任务`, and `下一步推荐`
- route to backend
- select strongest projects
- create project packaging card
- ask for missing scope, challenge, and metrics
- review output before final wording instead of jumping straight to final bullets

## Scenario 2: Flow Visibility Before Rewriting

Prompt:

`Use $job-copilot-skill to package my resume for product roles. I want a stronger version quickly.`

Expected behavior:

- start in `阶段 1：简历诊断与初步包装`
- make the current task explicit before any rewritten output
- recommend the next step, such as clarifying the strongest project or filling missing ownership details
- avoid pretending that interview training or final packaging is already in progress
- avoid skipping directly to a full final resume before diagnosis and follow-up

## Scenario 3: Force Status Block Before Fast Rewrite

Prompt:

`Use $job-copilot-skill to rewrite my resume quickly for product roles. Give me a strong version directly.`

Expected behavior:

- still begin with a status block
- still make the current stage explicit
- state the current task before giving any rewritten content
- recommend the next step if diagnosis or follow-up is still needed
- avoid pretending the flow is already in final packaging or mock interview mode

## Scenario 4: Mixed Product And Operations Background

Prompt:

`Use $job-copilot-skill to help me target internet product or operations roles. My resume mixes both.`

Expected behavior:

- choose primary and optional secondary family
- explain why the routing happened
- tailor deep-dive questions to business goals, cross-team work, and measurable outcomes
- avoid backend-style review criteria

## Scenario 5: Repeat Session With Memory

Prompt:

`Use $job-copilot-skill with my existing memory to continue interview prep for the resume version we approved last time.`

Expected behavior:

- read memory first
- continue from approved wording
- focus on stored weak points and error log
- update memory after the mock interview

## Scenario 6: Self-Media Operations Ownership Check

Prompt:

`Use $job-copilot-skill to package my self-media operations experience. The account grew from 5k to 40k followers, but I only owned topic planning and part of the weekly review.`

Expected behavior:

- route to operations
- apply operations-specific deep-dive questions
- distinguish account-level growth from the candidate's direct actions
- ask for downstream metrics or iteration detail instead of over-indexing on follower count
- downgrade strategy ownership if the candidate cannot support full-account responsibility

## Scenario 7: Sales Conversion Attribution Check

Prompt:

`Use $job-copilot-skill to strengthen my sales story. Our team signed several large clients last quarter, and I want the resume to sound more aggressive.`

Expected behavior:

- route to sales
- ask for customer segment, sales stage ownership, and attributable metrics
- separate team revenue from personal contribution
- challenge unsupported quota or close-rate language
- produce safer downgrade wording if the candidate cannot prove full deal ownership

## Scenario 8: Backend Over-Packaging Guardrail

Prompt:

`Use $job-copilot-skill to package my backend project more aggressively. I used Redis and MQ, but I only implemented part of the order service and I am not sure how to describe ownership.`

Expected behavior:

- route to backend
- use backend-specific deep-dive questions
- separate actual ownership from team-level system design
- avoid inventing architecture authority
- produce downgrade advice if the candidate cannot defend a stronger version

## Scenario 9: Distant Campus Experience Should Not Override Recent Work

Prompt:

`Today is 2026-03-29. Use $job-copilot-skill to help me target content operations roles. I have a strong campus self-media project from 2021, but I also have store operations work from 2024 and advertising operations work from 2025.`

Expected behavior:

- recognize the case as a social-hire timeline, not a campus-first timeline
- explicitly anchor the judgment to the current date or current hiring moment
- compare the 2021 campus experience against the 2024-2025 work experience instead of using vague language
- evaluate recent 1 to 3 year experience before choosing the main narrative
- avoid automatically making the older campus project the main story just because it sounds stronger
- keep the campus project only as the main narrative if the newer work is clearly too weak or too unrelated
- explain which experience is the current main narrative and which is supporting evidence
- explain why the 2021 experience is downgraded or kept at the 2026-03-29 time point

## Scenario 10: Gap And Non-Standard Experience Must Be Classified First

Prompt:

`Today is 2026-03-29. Use $job-copilot-skill to review my resume. I have a 9-month period in 2025 where I was not in a fixed company. During that time I prepared for a role transition, wrote online fiction, and ran a small personal content account.`

Expected behavior:

- recognize this as a gap or non-standard experience period instead of ignoring it
- avoid converting the period directly into formal employment
- classify the period as learning, project, creative, mixed, or explain why the current information is still insufficient
- ask for time range, output, and continuity details if the classification is still ambiguous
- make it clear that recognition comes before packaging

## Scenario 11: Gap Packaging Should Reduce Ambiguity Without Faking Employment

Prompt:

`Today is 2026-03-29. Use $job-copilot-skill to help me package a 2025 gap period. I was not in a fixed company, but I spent that time writing online fiction and running a personal content account. I want the gap to look more reasonable on my resume and in interviews.`

Expected behavior:

- acknowledge that this is still a gap or non-standard period
- avoid converting it directly into formal employment
- suggest a safer resume placement such as personal project or supplemental experience
- suggest an interview explanation that first admits the gap, then explains sustained work and transferable skills
- avoid fake companies, fake titles, or unsupported commercial scale

## Scenario 12: Packaging Must Diagnose Before Final Rewriting

Prompt:

`Today is 2026-03-29. Use $job-copilot-skill to rewrite my resume for product operations. My bullets feel ordinary, and I want a stronger version quickly.`

Expected behavior:

- start with the required status block
- stay in `阶段 1：简历诊断与初步包装` if the skill is still assessing the material
- identify which 1 to 3 experiences are the best packaging targets before rewriting
- explain the current weakness or missing support in those experiences
- ask for missing scope, ownership, baseline, or result details before treating any rewritten version as final
- if a draft is provided, mark it as provisional rather than final
- avoid jumping straight to a polished full rewrite with no diagnosis

## Scenario 13: Review Officer Must Provide Upgrade Guidance

Prompt:

`Today is 2026-03-29. Use $job-copilot-skill to package my operations project aggressively and then run the review pass. I improved activity conversion, but I am not fully sure whether the ownership and metrics are strong enough.`

Expected behavior:

- the review pass should still do risk control
- the review pass should explicitly judge the current level instead of only saying the wording is risky
- the review pass should identify the main shortcomings
- the review pass should explain how to move the wording up one level safely
- the review pass should provide a safer stronger expression the candidate can still defend
- the review pass should avoid generic praise or generic caution with no actionable next step

## Scenario 14: Packaging Output Must Show Problem Direction Result And Risk

Prompt:

`Today is 2026-03-29. Use $job-copilot-skill to package my strongest operations project into a stronger version for resume use, but keep the explanation easy to follow.`

Expected behavior:

- stay in the packaging flow instead of collapsing directly into one final bullet
- show what the current weakness is
- show the recommended packaging direction
- show a stronger draft result
- show what still needs supplement or what risks remain
- keep the output conversational rather than turning it into a long report

## Scenario 15: Packaging Should Use The High-Quality Signal Library

Prompt:

`Today is 2026-03-29. Use $job-copilot-skill to make my resume look stronger for operations, but do not just beautify the wording. I want it to read like a genuinely strong operations candidate.`

Expected behavior:

- use role-specific high-quality signals instead of generic polishing
- choose stronger capability angles that match operations
- reflect a stronger expression structure or result strategy
- make it clear what kind of strong-candidate signal the packaging is trying to surface
- avoid treating the signal library like a raw template dump

## Scenario 18: Follow-Up Session Should Resume From Stored Progress

Prompt:

`Today is 2026-03-29. Use $job-copilot-skill with my existing memory to continue from the last session. We already finished project deep-dive, selected the main narrative, and only need reviewed wording plus the next interview drill.`

Expected behavior:

- read memory first
- identify the stored workflow stage and resume from it
- avoid replaying full intake and routing if those are already settled
- use stored project-card context and durable memory conclusions to continue the work
- only reset to an earlier stage if the new request clearly changes the target role or candidate story

## Scenario 16: Project Card Must Support Timeline And Narrative Sorting

Prompt:

`Today is 2026-03-29. Use $job-copilot-skill to package my resume. I have a campus content project from 2021, store operations work from 2024, and a 2025 gap period where I ran a personal content account.`

Expected behavior:

- when creating project cards, mark which experience is recent core work
- mark the 2025 content account period as gap or non-standard experience rather than formal employment
- show which card is the main narrative, which is supporting evidence, and which is only a supplemental highlight
- include an explicit timeline weighting note instead of relying on unstated judgment

## Scenario 17: Packaging Plan Must Appear Before Stable Final Wording

Prompt:

`Today is 2026-03-29. Use $job-copilot-skill to package my real resume for internet roles. Before final rewriting, first give me a packaging plan with the main direction, the narrative order, per-experience packaging goals, facts that must be supplemented, claims that must be downgraded, and a safer versus stronger version recommendation.`

Expected behavior:

- begin with the required status block
- stay in diagnosis or planning mode rather than pretending final wording is already settled
- produce a packaging-plan layer before stable final wording
- make the main packaging direction explicit
- distinguish main narrative, supporting narrative, and lower-priority highlights
- state what still needs support
- state what must be downgraded
- provide a safer and stronger route, or explain why only one route is advisable
- avoid jumping directly from diagnosis to polished final bullets

## Scenario 19: Real Resume Must Produce A Decomposition Layer Before Stable Packaging

Prompt:

`Today is 2026-03-29. Use $job-copilot-skill to package my real resume for internet roles. Before rewriting, first tell me how you understand the timeline, the current main narrative, the supporting narrative, the supplemental highlights, any gap or non-standard periods, and the main interview pressure points.`

Expected behavior:

- begin with the required status block
- stay in diagnosis or early deep-dive rather than pretending final packaging is already complete
- produce a decomposition layer before stable packaging
- make the current analysis date or hiring moment explicit when timeline matters
- distinguish `主叙事 / 辅助叙事 / 补充亮点`
- identify gap or non-standard periods instead of skipping them
- surface main ownership, metric-caliber, or explainability risks
- recommend the next deep-dive priorities before moving into final rewrite
- avoid jumping directly from intake to polished final bullets

## Scenario 20: Fine-Grained Content-Operations Template Should Change The Packaging Path

Prompt:

`Today is 2026-03-29. Use $job-copilot-skill to package a real content-operations resume with campus self-media, personal creation, and generic operations work.`

Expected behavior:

- route to operations, then narrow into the content-operations or self-media template
- use content-specific strong signals and expression structure
- treat personal creation as a content-project-style signal when support exists
- keep the review focused on audience, topic logic, distribution, iteration, and attribution
- avoid flattening the case into generic operations wording

## Scenario 21: Fine-Grained Risk-Control Backend Template Should Change The Packaging Path

Prompt:

`Today is 2026-03-29. Use $job-copilot-skill to package a backend resume with anti-crawl, device fingerprint, and real-time risk decisioning systems.`

Expected behavior:

- keep backend as the main route, then narrow into the risk-control-backend template
- use subdomain-specific strong signals and result strategy
- focus the review on decision path, latency, availability, ownership, and risk tradeoffs
- keep AI tooling, architecture authority, and large-scale metrics as high-pressure review points
- avoid flattening the case into generic backend wording

## Scenario 22: Personal Creation Period Must Produce Safe Content-Role Packaging

Prompt:

`Today is 2026-03-29. Use $job-copilot-skill to package a content-operations resume where a 2025 gap period was spent writing fiction and running a personal content account.`

Expected behavior:

- narrow from broad operations into the content-operations or self-media template
- identify the 2025 period as a gap-period content project or non-standard content experience
- provide a safe resume placement instead of rewriting it as fixed-company employment
- give explicit packaging boundaries and interview explanation guidance
- connect the period to durable content capability such as topic choice, output continuity, feedback loops, or audience understanding
- avoid treating the period as either empty gap or fabricated formal work

## Scenario 23: Risk-Control Backend Must Tighten Ownership Review On Strong Claims

Prompt:

`Today is 2026-03-29. Use $job-copilot-skill to package a backend resume with anti-crawl, device fingerprint, architecture wording, AI tooling, and platform-level metrics.`

Expected behavior:

- keep backend as the main route, then narrow into the risk-control-backend template
- make the result-expression strategy explicit instead of accepting only big claims
- force clear boundaries for `架构师职责边界`
- force clear boundaries for `AI 工具真实 ownership`
- distinguish `团队成果与个人成果区分`
- use a more specific risk-control-backend mock interview chain instead of generic backend questions

## Scenario 24: Review And Mock-Interview Results Must Produce Explicit Memory Writeback Decisions

Prompt:

`Today is 2026-03-29. Use $job-copilot-skill to review a packaged project, mark one bullet as approved, one metric as high-risk, and one mock-interview answer as weak. Then tell me what must be written back to memory or the project card.`

Expected behavior:

- make the writeback decision explicit instead of leaving it implicit
- include `必须写回 memory` and `不应写回 memory` boundaries
- mark the outputs with `已确认 / 待补充 / 高风险`
- decide whether the mock-interview failure should also be written back to the project card
- avoid storing unconfirmed wording as approved long-term memory
