# Issue #2 实施计划

## 目标
补充产品经理岗位模板，并接入主流程、岗位路由和测试资产。

## 先写失败断言
- `references/product-management-template.md` 不存在
- 主 skill 和路由文档里没有产品模板接线
- 缺少产品岗位规则用例和验证场景

## 最小实现
1. 新增 `references/product-management-template.md`
2. 在 `SKILL.md` 和 `references/job-families.md` 中接线
3. 补 `references/rule-test-cases.md`
4. 补 `references/smoke-test-checklist.md`
5. 补 `references/validation-scenarios.md`

## 验证
- 文件存在断言通过
- `rg` 命中模板引用和测试场景
- `./scripts/run_checks.sh` 通过
