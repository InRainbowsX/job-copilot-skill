# Issue #66 实施计划

## 目标
对张雪琴和王旭两份真实简历分别执行 200+ turn 的完整模拟跑测，输出详细记录与问题汇总。

## 测试方法
- 每份简历生成一份完整的模拟对话记录
- 每份记录覆盖：阶段状态、岗位路由、简历包装教练追问、审核官校准、模拟面试、最终评估
- 每份记录 turn 数 > 200
- 基于最终评估提炼问题，并补 follow-up issue

## 输出
- `docs/tests/2026-03-29-zhang-xueqin-deep-run-v2.md`
- `docs/tests/2026-03-29-wang-xu-deep-run-v2.md`
- `docs/tests/2026-03-29-deep-test-findings-summary-v2.md`

## 验证
- 两份记录 turn 数均 > 200
- 问题汇总文档存在
- 如发现新问题，GitHub 已补 issue
- `./scripts/run_checks.sh` 通过
