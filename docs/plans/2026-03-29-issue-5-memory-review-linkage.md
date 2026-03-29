# Issue #5 实施计划

## 目标
补齐 memory、review rubric、项目卡片和面试错题之间的联动规则，明确何时必须写回、何时不应写回，以及状态边界。

## 先写失败断言
当前缺少：
- `必须写回 memory`
- `不应写回 memory`
- `写回条件`
- `回写到项目卡片`
- `已确认 / 待补充 / 高风险`

## 最小实现
1. 在 `review-rubric.md` 中补写回条件
2. 在 `memory-template.md` 中补状态字段和写回场景
3. 在 `project-packaging-card-template.md` 中补与 review / interview 的回写接口
4. 在 `interview-error-log-template.md` 中补“是否回写 memory / 项目卡片”
5. 补规则用例、验证场景、冒烟测试

## 验证
- 关键短语断言由 fail -> pass
- `rg` 命中新规则与场景
- `./scripts/run_checks.sh` 通过
