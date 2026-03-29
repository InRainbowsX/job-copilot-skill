# Issue #47 实施计划

## 目标
补齐 `风控 / 反爬 / 设备指纹` 后端子模板与高质量信号扩展，使其能明确审查热点、结果表达策略和面试追问主题。

## 先写失败断言
当前 `references/risk-control-backend-template.md` 缺少：
- `架构师职责边界`
- `AI 工具真实 ownership`
- `团队成果与个人成果区分`
- `结果表达策略`
- `面试追问主题`

## 最小实现
1. 扩展 `risk-control-backend-template.md`
2. 扩展 `high-quality-signal-library.md` 的风控后端补充
3. 补 `rule-test-cases.md`
4. 补 `smoke-test-checklist.md`
5. 补 `validation-scenarios.md`
6. 同步 `real-resume-forward-tests.md`

## 验证
- 关键短语断言由 fail -> pass
- `rg` 命中新规则与场景
- `./scripts/run_checks.sh` 通过
