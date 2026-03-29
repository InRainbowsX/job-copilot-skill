# Issue #48 实施计划

## 目标
补齐 `内容运营 / 自媒体运营` 细分模板中对 `个人创作期 / 个人账号 / 内容项目` 的包装规则，使其能给出安全放置方式、包装边界和面试解释口径。

## 先写失败断言
- `references/content-operations-template.md` 目前缺少：
  - `简历中的安全放置方式`
  - `包装边界`
  - `面试解释口径`
  - `个人创作期`
- 需要在规则用例、冒烟测试、验证场景中加入对应要求。

## 最小实现
1. 扩展 `content-operations-template.md`
2. 在 `operations-template.md` 中强调该模板负责个人创作期场景
3. 补 `rule-test-cases.md`
4. 补 `smoke-test-checklist.md`
5. 补 `validation-scenarios.md`
6. 如有必要，补 `real-resume-forward-tests.md`

## 验证
- 关键短语断言由 fail -> pass
- `rg` 命中新增规则与场景
- `./scripts/run_checks.sh` 通过
