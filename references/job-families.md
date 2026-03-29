# Job Families

Use this file to route the candidate into the closest internet job family before deep-dive and review.

## Shared Rule

Choose one primary family. Add a secondary family only if it changes:

- the deep-dive questions
- the packaging angle
- the review rubric
- the mock interview themes

## Families

### Backend / Server-Side

Signals:

- Java, Go, Python, Node.js, Spring, microservices, Redis, MySQL, MQ
- API, service governance, performance, stability, architecture, database

Bias toward this family when the resume reads like systems, services, data flow, reliability, or infrastructure-heavy delivery.

Sub-signals worth routing explicitly:

- risk control, anti-crawler, anti-abuse, decision engine, device fingerprint, strategy platform
- confrontation-heavy delivery where attacker behavior, interception quality, false positives, or strategy iteration are central

When these sub-signals dominate, keep the primary family as `backend`, but apply the segmented guidance in [risk-control-backend-patterns.md](./risk-control-backend-patterns.md) and [risk-control-backend-interview-chain.md](./risk-control-backend-interview-chain.md).

### Frontend

Signals:

- React, Vue, Angular, TypeScript, SSR, component systems, web performance
- page interaction, engineering efficiency, compatibility, user experience

### Mobile Client

Signals:

- iOS, Android, Flutter, React Native, startup speed, crash reduction, memory

### Test / Test Development / QA

Signals:

- test strategy, automation, regression, CI quality gates, coverage, defect interception

### Algorithm / AI / Recommendation / Search

Signals:

- model, feature, recall, ranking, AUC, precision, prompt engineering, online experiment

### Data Engineering / Data Analysis

Signals:

- data warehouse, ETL, indicators, dashboards, data quality, SQL pipelines, analysis

### DevOps / SRE / Operations Engineering

Signals:

- monitoring, alerting, deployment, SLA, MTTR, incident response, infrastructure automation

### Product Management

Signals:

- requirement design, roadmap, user problem, feature spec, cross-team delivery, KPI, PRD

### Sales

Signals:

- pipeline, conversion, customer acquisition, contract, revenue, upsell, key account

### Operations / Self-Media Operations

Signals:

- growth, activity planning, content strategy, retention, funnel, traffic, self-media, followers

Sub-signals worth routing explicitly:

- content operations, editorial operations, creator operations, platform distribution, topic planning
- gap periods supported by sustained personal creation or account operations

When these sub-signals dominate, apply the segmented guidance in [content-operations-patterns.md](./content-operations-patterns.md) and [content-operations-interview-chain.md](./content-operations-interview-chain.md).

### Support-Heavy Operations Signals

Across support-heavy routes such as SSC, HR Ops, Global Mobility, and similar operational support work, do not default these lines to low-value admin tasks:

- reporting and recurring data support
- FAQ, knowledge-base, or standard-answer maintenance
- HRIS or workflow-system maintenance
- policy updates, risk reminders, and process tracking

When these signals are central to role fit, treat them as evidence of operating support capability, process discipline, and compliance awareness.

Bullet-count targets such as `4 / 3 / 3` must follow these value judgments rather than override them.

## Conflict Handling

- If technical depth dominates and business language is secondary, prefer the technical family.
- If the resume mixes product and operations, pick `product-management` only when ownership over problem definition and solution design is clear.
- If the resume mixes sales and operations, prefer `sales` only when quota, conversion, or deal-making is central.
- If the user explicitly states a target role, respect it unless the materials clearly contradict it. In that case, note the mismatch and ask once for confirmation.
- If the candidate looks like generic backend or generic operations at first, but the strongest project logic depends on segmented-role signals, keep the base family and activate the corresponding segmented reference files.