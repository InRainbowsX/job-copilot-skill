# Issue #64 实施计划

## 目标
修复内容运营细分模板的误触发规则，并把 Codex review finding 检查固化到流程规范。

## 根因
- `operations-template.md` 把 `个人创作期 / 个人账号 / 内容项目` 直接作为进入内容模板的条件，缺少“内容目标明确或内容信号占主导”的门槛。
- 流程文档没有把 `Codex review finding` 检查写成合并前的硬步骤。

## 先写失败断言
当前缺少：
- 内容模板升级门槛中的 `dominant content evidence`
- 反例场景：有个人创作信号但主方向不是内容岗
- 流程规范中的 `Codex review finding` 检查与 merged-PR follow-up 规则

## 最小实现
1. 修正 `references/operations-template.md`
2. 补 `references/rule-test-cases.md`
3. 补 `references/smoke-test-checklist.md`
4. 补 `references/validation-scenarios.md`
5. 更新 `AGENTS.md` 与 `CONTRIBUTING.md`

## 验证
- 关键短语断言由 fail -> pass
- `rg` 命中新规则与场景
- `./scripts/run_checks.sh` 通过
