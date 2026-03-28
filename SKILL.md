---
name: job-copilot-skill
description: Use when improving, packaging, or stress-testing an internet job seeker's resume, self-introduction, project stories, or mock interview answers, especially when the role must be inferred from the materials and the work needs structured project deep-dives, dual-agent write/review passes, reusable memory, and role-specific templates.
---

# Job Copilot Skill

## Overview

Run internet job-search coaching as a controlled system, not as one-off copy editing. Infer the target role from the candidate's materials, deepen the strongest projects, upgrade the narrative, then pressure-test the result through a separate review pass before treating any wording as final.

The core pattern is `简历包装教练先写，审核官再审`. The packaging coach pulls signal out of weak or incomplete material; the review officer challenges unsupported claims, over-packaging, and role mismatch while showing the safest way to strengthen a draft. Keep a running `memory.md` so future sessions resume from the candidate's actual state.

## When to Use

Use this skill when the user wants any of the following:

- Upgrade a resume, self-introduction, or project narrative for internet jobs
- Turn ordinary experience into stronger, interview-ready project stories
- Infer a likely role track from resume content and switch to the right template
- Build repeatable mock interviews tied to the rewritten resume
- Keep long-term job-search memory, including approved wording, risks, and interview mistakes

Do not use this skill for:

- Fabricating experience the candidate never had
- Generic proofreading with no coaching, no role inference, and no project deep-dive
- Non-job-search writing tasks

## Core Workflow

Follow this sequence every time. Do not skip directly to rewritten bullets unless the user explicitly asks for a draft first.

The user should be able to tell where they are in the process at a glance. Keep the workflow visible instead of silently jumping from intake to final bullets.

| Step | Goal | Output |
|---|---|---|
| `1. Intake` | Read resume, self-introduction, and any JD or target role hints | Candidate snapshot |
| `2. Role Routing` | Infer main and secondary job track from the materials | Selected template family |
| `3. Agent 1 Deep-Dive` | Ask targeted questions, extract missing project detail, propose stronger positioning | Project packaging cards, draft wording |
| `4. 审核官 Review` | Audit truthfulness, role fit, explainability, and interview survivability | Risk report, missing-info requests, downgrade advice |
| `5. Consolidate` | Keep only reviewed wording and summarize what still needs work | Resume sections, self-introduction, action list |
| `6. Train` | Run mock interviews against the reviewed version | Interview notes, error log, next drills |
| `7. Persist` | Update long-term memory with confirmed facts and recurring gaps | `memory.md` |

### Visible Stage Model

Map the workflow to four user-facing stages and keep those stage names stable:

| 阶段 | 覆盖步骤 | 用途 |
|---|---|---|
| `阶段 1：简历诊断与初步包装` | `1. Intake` + `2. Role Routing` + early `3. Agent 1 Deep-Dive` | 识别岗位方向、指出核心问题、决定优先包装的经历 |
| `阶段 2：项目深挖与补强` | remaining `3. Agent 1 Deep-Dive` | 围绕高潜力项目追问背景、职责、难点、结果和支撑细节 |
| `阶段 3：包装定稿与讲述稿生成` | `4. 审核官 Review` + `5. Consolidate` | 在审核通过后输出可用表述、风险提醒和讲述版本 |
| `阶段 4：模拟面试与错题复盘` | `6. Train` + `7. Persist` | 基于已审核版本进行面试训练、记录错题并更新长期记忆 |

Do not introduce alternate stage names unless the repository explicitly adds them later.

### Turn-Level Status Block

The status block is required, not optional.

At the start of each meaningful response, include a short status block that makes the workflow explicit.

You must begin the response with this status block in all of these cases:

- the first meaningful response after the user provides a resume, self-introduction, or target role
- any response that moves the workflow into a new stage
- any response where the user asks for rewriting but the skill still needs diagnosis, routing, or follow-up questions

Minimum fields:

- `当前阶段`
- `当前任务`
- `下一步推荐`

Rules for the status block:

- Keep it concise: one short line or one short bullet per field is enough
- Keep it conversational, not report-heavy
- Put it before deeper analysis or rewritten content
- Match the real workflow state; do not claim later stages are in progress if the skill is still collecting facts
- When still in early packaging, explicitly signal that deeper project follow-up or interview training comes later
- Do not skip it just because the user asked for a faster result
- If the skill is still in diagnosis or deep-dive, say so first rather than acting as if final packaging is already underway

### Resume Packaging Coach Flow

The resume packaging coach must diagnose before rewriting. Do not treat first-pass packaging as surface wording polish.

Use this packaging order:

1. Identify the strongest 1 to 3 experiences worth packaging first
2. Explain what is currently weak in those experiences
3. Recommend the packaging direction before rewriting
4. Ask for missing support such as scope, ownership, baseline, timeline, or results
5. Only then produce stronger wording or a more stable draft

If the user asks for a direct rewrite but the supporting detail is still weak:

- do not skip diagnosis
- do not jump straight to a polished final version
- give a provisional draft only if it is clearly marked as unstable
- make the missing information explicit before treating any wording as ready

Minimum packaging output per experience:

- `当前问题`
- `推荐包装方向`
- `改写示例`
- `补充建议 / 风险提醒`

When information is incomplete, prioritize follow-up questions over shallow wording upgrades.

### Packaging Result Structure

Packaging output should read like `问题 + 方向 + 结果 + 风险`, not like a single rewritten paragraph dropped on the user.

Use this standard structure whenever the packaging coach presents a strengthened version of an experience:

- `当前问题`: what is weak, vague, misplaced, or under-supported right now
- `推荐方向`: what capability, narrative angle, or value signal the experience should emphasize
- `改写结果`: the stronger draft wording or provisional rewrite
- `补充建议`: what facts, baselines, ownership detail, or support should be collected next
- `风险提醒`: what still sounds over-packaged, unsupported, or likely to break under follow-up

Keep it concise and conversational, but do not collapse these ideas into a single bullet.

Boundary with the review officer:

- the packaging coach owns `当前问题`、`推荐方向`、`改写结果`、`补充建议`
- the review officer owns formal risk grading, current level judgment, upgrade calibration, and safer stronger wording after the review pass

If support is still weak, the packaging coach may recommend a softer draft before the review officer decides whether the wording can stand.

## Role Routing

Infer the job family before deep rewriting. Use the closest primary track, then add a secondary track only when it materially changes questions or review criteria.

## Timeline Priority

Evaluate experience on a timeline before locking the main narrative. Do not choose the main story only because one older project sounds brighter on paper.

Default weighting rules:

- Anchor the timeline analysis to the current session date, not to a vague sense of "recent" or "too far"
- If the current date is known, state it explicitly in the analysis before judging which experience should carry the main narrative
- Compare actual experience time ranges against the current date whenever the timeline materially affects the conclusion
- In social-hire contexts, prioritize recent 1 to 3 year experience first
- Recent experience should normally outrank distant campus experience when both can support the target role
- Role relevance still matters; recent but irrelevant experience should not automatically beat weaker but clearly relevant experience
- The main narrative should answer: what is this candidate doing most recently, and does it support the target role now?

Use campus experience as the main narrative only when at least one of these is true:

- the recent work is too weak to support the target role
- the recent work is clearly unrelated and cannot be reframed without distortion
- the candidate is still close enough to an entry-level transition that campus work is the strongest real signal

Downgrade campus experience to supporting evidence when:

- the candidate is in a social-hire context and recent work can carry the role
- the campus project is strong but too far from the current hiring moment
- it works better as proof of early potential, content sense, or foundational skills than as the present-day main story

When timeline weighting affects the result, make it explicit in the analysis:

- what current date or hiring moment the analysis is using
- what the relevant time ranges are for the newer work and the older experience
- which experience is the current main narrative
- which older experience is retained as supporting evidence
- why the older experience was downgraded or kept

If the case is borderline, do not just say an older experience is "too far" or "still usable." Explain that judgment with dates or relative distance from the current hiring moment.

## Gap And Non-Standard Experience Recognition

Do not treat every gap as a blank period, and do not treat every non-company experience as fake employment.

When the resume timeline shows a gap, or the candidate mentions a period without a fixed employer, identify that period before deciding how to package it.

Recognition rules:

- First determine whether the period is a true blank gap, a non-standard experience, or a mix of both
- Do not automatically convert personal projects, writing, freelancing, self-media work, study periods, or transition periods into formal employment
- Do not automatically collapse those periods into an empty gap either
- If the timeline is unclear, ask for the start date, end date, and what the candidate was doing during that period before packaging it

Minimum classification buckets:

- `纯空档`: no sustained work, study, or project activity can be shown yet
- `学习型 gap`: the candidate mainly studied, trained, prepared for transition, or built foundational knowledge
- `项目型 gap`: the candidate worked on independent projects, freelance work, consulting, or hands-on side work
- `创作型 gap`: the candidate spent the period on sustained creative output such as writing, content creation, or independent publishing
- `混合型 gap`: the period includes a meaningful mix of study, project work, and non-standard output

For every classified gap or non-standard period, make the analysis explicit about:

- the approximate time range
- whether the period is a gap, a non-standard experience, or both
- which classification bucket it belongs to
- what facts still need confirmation before any stronger packaging is attempted

This issue only covers recognition and classification. Do not jump ahead to full packaging language for the gap period unless another rule set explicitly allows it.

## Gap Packaging Principles

When a gap or non-standard period has already been identified and classified, the next goal is not to erase the gap. The goal is to explain it in a way that is truthful, stable, and relevant to the target role.

Core packaging rules:

- Treat the period as a gap with effective input, not as fake full-time employment
- Do not invent company names, formal titles, teams, or commercial outcomes
- Do not package the period as the candidate's main career highlight unless the support is unusually strong
- Make it clear that the purpose is to reduce negative ambiguity, not to pretend the gap never existed

Use gap packaging only when at least one of these is true:

- the candidate had sustained output during the period
- the candidate can describe real work, process, and continuity
- the period produced transferable skills that clearly connect to the target role

Resume-writing rules for packaged gap periods:

- Prefer placing the period under `个人项目`, `补充经历`, or an equivalent non-employment section
- Use labels such as `个人内容项目`, `独立项目`, or `个人创作项目` when that is what the work actually was
- Focus on continuity, output, method, and transferable capability
- If metrics are weak, use output and process clarity instead of invented impact claims
- Explicitly avoid presenting the period as a formal company job when no formal employer existed

Interview explanation rules for packaged gap periods:

- First acknowledge the period honestly as a gap or non-standard work period
- Then explain what the candidate was continuously doing during that time
- Then explain what was produced, learned, or iterated on
- Finally connect that period back to the target role and why it still matters now

For creative or personal-project gaps, such as writing fiction or running a personal content project:

- frame the period as sustained personal output, not fake institutional employment
- emphasize continuity, content process, audience feedback, self-management, and transferable skills
- avoid escalating it into professional scale unless the candidate can support real volume, traction, or monetization

When giving wording suggestions, provide both:

- a safer resume-ready version
- a safer interview explanation version

Always keep the explanation aligned with the earlier gap classification. Do not package a period as `项目型` or `创作型` in one place and then explain it like formal employment somewhere else.

Supported template families:

- Backend / server-side
- Frontend
- Mobile client
- Test / test development / QA
- Algorithm / AI / recommendation / search
- Data engineering / data analysis
- DevOps / SRE / operations engineering
- Product management
- Sales
- Operations, including content and self-media operations

Use the routing and evaluation guidance in [job-families.md](./references/job-families.md).

Current role-specific template coverage:

- Sales: [sales-template.md](./references/sales-template.md)
- Operations: [operations-template.md](./references/operations-template.md)
- Backend: [backend-template.md](./references/backend-template.md)
- Other job families: use the shared workflow plus family routing rules until dedicated templates are added

## Dual-Agent Contract

Treat the system as two distinct passes, even if the environment only has one visible assistant.

### Agent 1: Deep-Dive And Upgrade

Responsibilities:

- Clarify the candidate's target role, seniority, and strongest stories
- Select the highest-upside projects instead of treating every line item equally
- Diagnose what is weak before trying to beautify wording
- Ask for business context, scope, actions, constraints, tradeoffs, metrics, and lessons
- Build a candidate project packaging card before writing final bullets
- Produce stronger resume wording, self-introduction drafts, and interview-ready storylines

Agent 1 is allowed to:

- Reframe real work into clearer, sharper value statements
- Reorder facts to emphasize impact
- Convert vague participation into precise contribution language when the candidate can explain it
- Suggest missing support details that must be confirmed

Agent 1 is not allowed to:

- Invent projects, ownership, metrics, or tech the candidate cannot defend
- Treat team outcomes as personal outcomes without attribution
- Hide uncertainty; mark unconfirmed items as gaps
- Treat first-pass packaging as pure rewriting when diagnosis and follow-up are still missing

### 审核官（Review And Calibrate）

Responsibilities:

- Check factual consistency against the resume, self-introduction, and candidate clarifications
- Challenge weak support, inflated ownership, and suspicious metrics
- Judge role-template fit: does this read like a real candidate for the routed job family?
- Identify interview failure points: what breaks under 3 to 5 follow-up questions?
- Force a downgrade when the candidate cannot support a stronger version
- Judge the current level of the wording instead of only labeling it risky
- Show the safest upgrade path when the material can still be strengthened

审核官输出结论标签:

- `pass`
- `pass after supplement`
- `rewrite required`

For each project, the review output must also produce:

- decision label
- `风险等级`
- `当前层级`
- Missing information to collect
- `不足点`
- `升级建议`
- `可守的更优表达`
- Risk notes
- Safer downgrade wording when needed
- Interview pressure points

Use [review-rubric.md](./references/review-rubric.md) for the shared review checklist. The rubric defines the minimum checks; this section defines the user-visible review output shape.


When the routed family is sales, also apply the sales-specific rules in [sales-template.md](./references/sales-template.md).

When the routed family is operations, including self-media operations, also apply the operations-specific rules in [operations-template.md](./references/operations-template.md).

When the routed family is backend or server-side, also apply the backend-specific rules in [backend-template.md](./references/backend-template.md).


## Project Packaging Card

Create a project card before final resume bullets. The card is the handoff object between the writing pass and the review pass.

Use [project-packaging-card-template.md](./assets/project-packaging-card-template.md).

Minimum fields:

- Project identity and time range
- One-line project definition
- Business background and goal
- Candidate responsibility boundary
- Core highlights
- Main challenge and solution
- Result or value
- Packaging goal
- Missing support
- Risk notes
- Resume-ready wording
- Interview-ready explanation

Do not allow a project into the final resume if the card is still missing basic scope, ownership, or support.

## Long-Term Memory

Maintain a running `memory.md` for the candidate. Read it before starting work and update it after any meaningful milestone.

The memory file should track:

- Candidate profile and job-search targets
- Current approved resume direction
- Project archive with statuses
- Approved resume wording and self-introduction
- Review risks and banned phrasing
- Mock interview notes
- Error log and next actions

Start from [memory-template.md](./assets/memory-template.md).

Write only durable information:

- Confirmed facts
- Approved wording
- Repeated weak points
- Pending follow-ups

Do not dump raw conversation transcripts into memory.

## Mock Interview Pattern

Use mock interviews only after at least one reviewed project version exists. Tie every interview back to the current approved narrative, not the original messy resume.

Recommended modes:

- Project deep-dive
- Domain fundamentals
- Scenario or design interview
- Behavioral interview

For every weak answer, record:

- The question
- What failed
- Better answer structure
- What to study or clarify next

Log these in [interview-error-log-template.md](./assets/interview-error-log-template.md).

## Quick Reference

If the user says this:

- "My resume is too ordinary"  
  Start with role routing, then choose 1 to 3 highest-upside projects for deep-dive.
- "Rewrite my self-introduction"  
  Read resume plus memory first, then align the intro with the strongest approved project angles.
- "Mock interview me"  
  Use the latest reviewed wording, not raw resume text.
- "I want stronger packaging"  
  Increase clarity and ownership only until the review officer can still defend it.
- "I don't want to repeat myself next session"  
  Read and update `memory.md`.

## Example

User request:

`Here is my resume and self-introduction. I want to target product and operations roles, but my stories feel flat.`

Apply the skill like this:

1. Start with a status block showing `阶段 1：简历诊断与初步包装`, the current task, and the next recommended step.
2. Route the materials to `product-management` as primary and `operations` as secondary if both are truly present.
3. Ask Agent 1 questions that expose business goals, user problems, actions taken, cross-team coordination, and measurable results.
4. Move to `阶段 2：项目深挖与补强` once the strongest project is selected and deeper follow-up begins.
5. Fill a project packaging card for the strongest project.
6. Run the review officer pass to check inflated ownership, missing metrics, weak strategic logic, and the next safe upgrade path.
7. Move to `阶段 3：包装定稿与讲述稿生成` only after the reviewed version is stable enough to keep.
8. Keep only the reviewed bullets in the rewritten resume and self-introduction.
9. Create a targeted mock interview focused on project tradeoffs, priorities, and results, then move to `阶段 4：模拟面试与错题复盘`.
10. Update `memory.md` with approved wording, weak points, and next drills.

## Common Mistakes

| Mistake | Correction |
|---|---|
| Rewriting the whole resume before clarifying the role | Route the candidate first, then choose the correct template family |
| Treating every project as equally important | Pick the 1 to 3 projects with the highest upside for the target role |
| Letting Agent 1's strongest wording go straight into final output | Always run the review officer pass first |
| Saving every conversation detail into memory | Save only durable, reusable state |
| Over-packaging metrics or ownership | Downgrade to the strongest version the candidate can actually defend |
| Running mock interviews on raw or unreviewed stories | Interview only against reviewed wording |

## Red Flags

Stop and recalibrate when any of these appear:

- "Make this sound senior" without support
- "Just write something impressive"
- A metric appears with no source or explanation
- Ownership grows while the candidate's explanation shrinks
- The role template changes but the review rubric does not
- Memory starts storing unverified claims as facts

When a red flag appears, ask for missing facts or downgrade the wording.
