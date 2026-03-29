# Risk-Control / Anti-Crawl Backend Template

Apply this fine-grained template when the broader backend route is correct, but the resume is really being judged as `风控 / 反爬 / 设备指纹 / bot detection` style backend work.

Use this template together with:

- [backend-template.md](./backend-template.md)
- [risk-control-backend-knowledge-base.md](./risk-control-backend-knowledge-base.md)

## Strong Signals

- clear system boundary inside the broader risk-control or anti-crawl chain
- low-latency or high-throughput decision path explained with context
- device intelligence, signal aggregation, rule evaluation, challenge flow, or feedback loop ownership
- clear tradeoffs among risk interception, user friction, cost, and availability
- explicit distinction between system-level outcomes and personal ownership
- ability to explain failures, adversarial pressure, or iterative attack-defense adjustments

## Expression Structure

Prefer this shape:

`business / risk problem -> system boundary -> decision path or engineering tradeoff -> measurable risk or system result`

Good bullets should usually answer:

- where this component sits in the overall risk or anti-crawl system
- which signals, rules, or decision path it touched
- what real-time constraint or scale constraint mattered
- what result was improved and at what cost or tradeoff

## Result Strategy

Prefer results such as:

- latency, TP99, throughput, availability, fallback stability
- detection coverage, interception effect, challenge reduction, cost reduction
- false-positive / false-negative tradeoffs when they can be explained
- reduction in manual review load, machine cost, or attack success

If precise risk metrics are unavailable, stay with:

- system-path improvement
- availability or performance improvement
- operational efficiency gain

## 结果表达策略

For `风控 / 反爬 / 设备指纹` backend work, prefer results that show both engineering quality and risk value:

- `decision-path latency / TP99 / throughput / availability` with path context
- `interception effect / challenge reduction / attack success reduction` with observation boundary
- `manual-review load / machine cost / rule-maintenance cost` when the system improved efficiency
- `false-positive / false-negative / user-friction` tradeoffs when the candidate can explain the trade

If risk outcomes are sensitive or hard to disclose, keep the wording at:

- clearer system boundary
- better stability or degradation path
- faster or safer real-time decision processing
- lower operational cost with a stated scope

## Upgrade Path

Typical upgrade paths:

- from `做了反爬系统` to `说明识别链路、判定边界与工程权衡`
- from `设计设备指纹` to `说明设备信号、判定路径和作用位置`
- from `提升拦截效果` to `说明性能、稳定性或成本与风险收益的关系`
- from `参与架构设计` to `明确模块边界和真实 ownership`

## 架构师职责边界

When the resume uses `架构师`、`整体架构设计`、or similar wording, force the scope to become explicit:

- which module or decision path was truly owned
- whether the candidate designed the whole chain or only one subsystem
- whether the title was formal, informal, or just resume wording
- what remained team-level architecture instead of personal architecture ownership

Safe downgrade examples:

- from `负责整体架构设计` to `负责某一关键模块或判定链路的架构设计`
- from `架构师` to `后端负责人 / 核心模块设计者` when the broader system scope is not defensible

## AI 工具真实 ownership

When AI tooling appears in this subdomain, the review must separate:

- tool user vs tool builder
- prototype vs productionized capability
- assistant workflow vs core risk-control engine
- idea contribution vs deployment ownership

Do not allow the resume to imply:

- that an AI helper was the core anti-crawl capability
- that the candidate fully owned production rollout when they only tested or adopted the tool

## 团队成果与个人成果区分

In risk-control and anti-crawl work, system outcomes are often team-level. Make the split explicit:

- team-level outcomes: global interception, account-wide stability, platform-wide cost reduction
- personal outcomes: module boundary, signal design, decision-path optimization, degradation handling, tooling contribution

If the candidate cannot separate the two, downgrade to:

- `参与实现 / 参与优化 / 参与设计`
- `支持某模块指标改善`

## High-Risk Phrasing

Downgrade or challenge these when unsupported:

- `架构师` or global architecture ownership without clear scope
- huge traffic or latency numbers without range, path, or context
- AI-assisted tooling written as a mature core capability without deployment boundary
- system-wide risk reduction written as purely personal achievement
- generic fraud / anti-crawl claims with no decision-path explanation

## Review Focus

The review officer should pressure-test:

- whether the candidate can explain the system boundary and decision path
- whether the candidate can explain where latency and availability mattered
- whether ownership is module-level, chain-level, or only support-level
- whether risk metrics have context and definition
- whether AI, architecture, or platform-scale language is overstated

Additional subdomain checks:

- whether `架构师` language matches a defensible module or chain boundary
- whether AI-tool wording reflects real building or deployment ownership
- whether team-level wins and personal contribution are cleanly separated

## Mock Interview Follow-Up Chain

High-value follow-up sequence:

1. Where exactly did this component sit in the larger risk-control or anti-crawl architecture?
2. What signals entered the decision path, and what happened after the decision?
3. Why was this path synchronous, asynchronous, cached, or degraded?
4. What tradeoff existed among interception, user experience, cost, and stability?
5. Which metric best proves the system improved?
6. What part did you truly own, and what remained team-level?

## 面试追问主题

Use these themes when the resume is routed into this subdomain:

- system boundary and chain placement
- synchronous vs asynchronous decision paths
- device signal quality and anti-abuse evasion
- fallback, degradation, and stability design
- risk gain vs user-friction tradeoff
- `架构师` wording and true ownership boundary
- AI tooling: where it helped, where it stopped, and what was truly owned
