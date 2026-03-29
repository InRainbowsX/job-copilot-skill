# Issues #52 And #54 Background Knowledge Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Add two reusable background-knowledge documents so the skill can understand and package resumes more like a role-aware coach in `内容运营 / 自媒体运营` and `风控 / 反爬后端` scenarios.

**Architecture:** Keep the change at the knowledge-and-reference layer first. Add two new reference docs, then wire them into `SKILL.md` and the related base templates. Expand rule tests and validation scenarios so the repository checks the new expectations before a PR is opened.

**Tech Stack:** Markdown skill spec, reference docs, rule-test docs, validation docs, repository validation script.

### Task 1: Add content-operations / self-media knowledge base

**Files:**
- Add: `references/content-operations-knowledge-base.md`

**Step 1: Define role scope and signal boundaries**

Document:
- what belongs to content operations, self-media operations, and adjacent operations work
- what strong content-operations resumes usually show
- where personal creation or personal-account work has value in social-hire contexts

**Step 2: Capture industry language and safe packaging cues**

Cover at least:
- topic selection
- content production cadence
- distribution
- audience feedback
- review and iteration
- business or funnel connection
- common weak and inflated wording

### Task 2: Add risk-control / anti-crawl backend knowledge base

**Files:**
- Add: `references/risk-control-backend-knowledge-base.md`

**Step 1: Define the subdomain clearly**

Document:
- why this is still a backend sub-direction, not a separate main family
- device intelligence, anti-crawl, risk detection, rules engines, and real-time decisioning boundaries
- what strong candidates in this area usually signal

**Step 2: Capture results and review hot spots**

Cover at least:
- latency, throughput, availability, economic efficiency, and false-positive or coverage tradeoffs
- architecture authority versus implementation ownership
- AI-assisted tooling and detection claims as review hot spots

### Task 3: Wire both knowledge bases into the skill

**Files:**
- Modify: `SKILL.md`
- Modify: `references/backend-template.md`
- Modify: `references/operations-template.md`

**Step 1: Add reference points**

Require the skill to consult these knowledge bases when the route or sub-context matches:
- content operations / self-media
- backend with risk-control / anti-crawl / device intelligence context

**Step 2: Keep scope narrow**

Do not rebuild the full template system here. Only add enough wiring so later packaging and review work can cite the new references.

### Task 4: Add test coverage first

**Files:**
- Modify: `references/rule-test-cases.md`
- Modify: `references/smoke-test-checklist.md`
- Modify: `references/validation-scenarios.md`

**Step 1: Add rule-test cases**

Add one case for each knowledge base that checks:
- the skill uses role-specific language instead of generic wording
- the skill asks better follow-up questions and review questions for that subdomain

**Step 2: Add validation coverage**

Use Zhang Xueqin and Wang Xu style scenarios to ensure:
- content/self-media work is not flattened into generic operations
- risk-control / anti-crawl backend is not flattened into generic backend wording

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
- a content-operations / self-media background knowledge base
- a risk-control / anti-crawl backend background knowledge base
- minimal template and skill wiring
- rule tests and validation coverage

It should explicitly not claim to implement:
- the full packaging-plan generator from `#51`
- the broader fine-grained template-library expansion from `#53`
