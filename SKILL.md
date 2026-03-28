---
name: job-copilot-skill
description: Use when improving, packaging, or stress-testing an internet job seeker's resume, self-introduction, project stories, or mock interview answers, especially when the role must be inferred from the materials and the work needs structured project deep-dives, dual-agent write/review passes, reusable memory, and role-specific templates.
---

# Job Copilot Skill

## Overview

Run internet job-search coaching as a controlled system, not as one-off copy editing. Infer the target role from the candidate's materials, deepen the strongest projects, upgrade the narrative, then pressure-test the result through a separate review pass before treating any wording as final.

The core pattern is `Agent 1 writes, Agent 2 reviews`. Agent 1 pulls signal out of weak or incomplete material; Agent 2 challenges unsupported claims, over-packaging, and role mismatch. Keep a running `memory.md` so future sessions resume from the candidate's actual state.

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

| Step | Goal | Output |
|---|---|---|
| `1. Intake` | Read resume, self-introduction, and any JD or target role hints | Candidate snapshot |
| `2. Role Routing` | Infer main and secondary job track from the materials | Selected template family |
| `3. Agent 1 Deep-Dive` | Ask targeted questions, extract missing project detail, propose stronger positioning | Project packaging cards, draft wording |
| `4. Agent 2 Review` | Audit truthfulness, role fit, explainability, and interview survivability | Risk report, missing-info requests, downgrade advice |
| `5. Consolidate` | Keep only reviewed wording and summarize what still needs work | Resume sections, self-introduction, action list |
| `6. Train` | Run mock interviews against the reviewed version | Interview notes, error log, next drills |
| `7. Persist` | Update long-term memory with confirmed facts and recurring gaps | `memory.md` |

## Role Routing

Infer the job family before deep rewriting. Use the closest primary track, then add a secondary track only when it materially changes questions or review criteria.

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

- Backend: [backend-template.md](./references/backend-template.md)
- Other job families: use the shared workflow plus family routing rules until dedicated templates are added

## Dual-Agent Contract

Treat the system as two distinct passes, even if the environment only has one visible assistant.

### Agent 1: Deep-Dive And Upgrade

Responsibilities:

- Clarify the candidate's target role, seniority, and strongest stories
- Select the highest-upside projects instead of treating every line item equally
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

### Agent 2: Review And Calibrate

Responsibilities:

- Check factual consistency against the resume, self-introduction, and candidate clarifications
- Challenge weak support, inflated ownership, and suspicious metrics
- Judge role-template fit: does this read like a real candidate for the routed job family?
- Identify interview failure points: what breaks under 3 to 5 follow-up questions?
- Force a downgrade when the candidate cannot support a stronger version

Agent 2 outputs:

- `pass`
- `pass after supplement`
- `rewrite required`

For each project, Agent 2 must also produce:

- Missing information to collect
- Risk notes
- Safer downgrade wording when needed
- Interview pressure points

Use [review-rubric.md](./references/review-rubric.md) for the shared review checklist.

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
  Increase clarity and ownership only until Agent 2 can still defend it.
- "I don't want to repeat myself next session"  
  Read and update `memory.md`.

## Example

User request:

`Here is my resume and self-introduction. I want to target product and operations roles, but my stories feel flat.`

Apply the skill like this:

1. Route the materials to `product-management` as primary and `operations` as secondary if both are truly present.
2. Ask Agent 1 questions that expose business goals, user problems, actions taken, cross-team coordination, and measurable results.
3. Fill a project packaging card for the strongest project.
4. Run Agent 2 review to check inflated ownership, missing metrics, and weak strategic logic.
5. Keep only the reviewed bullets in the rewritten resume and self-introduction.
6. Create a targeted mock interview focused on project tradeoffs, priorities, and results.
7. Update `memory.md` with approved wording, weak points, and next drills.

## Common Mistakes

| Mistake | Correction |
|---|---|
| Rewriting the whole resume before clarifying the role | Route the candidate first, then choose the correct template family |
| Treating every project as equally important | Pick the 1 to 3 projects with the highest upside for the target role |
| Letting Agent 1's strongest wording go straight into final output | Always run Agent 2 review first |
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
