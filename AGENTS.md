# AGENTS.md - job-copilot-skill 项目指南

## 项目概述

`job-copilot-skill` 是一个面向互联网求职场景的 skill 仓库，核心能力包括：

- 简历包装
- 项目深挖
- 双 Agent 审核
- 模拟面试
- 长期记忆

仓库不是通用应用项目，而是一个以 `SKILL.md + templates + governance` 为核心的规则型项目。

## 仓库结构

```text
job-copilot-skill/
├── SKILL.md
├── README.md
├── LICENSE
├── AGENTS.md
├── CONTRIBUTING.md
├── agents/
├── assets/
├── references/
├── scripts/
└── .github/
```

## 开发优先级

开发时按以下顺序理解上下文：

1. `README.md`
2. `SKILL.md`
3. `AGENTS.md`
4. `references/*.md`
5. `assets/*.md`
6. `.github/` 和 `scripts/`

## 基础命令

```bash
./scripts/run_checks.sh
python3 ./scripts/validate_skill.py .
git status --short --branch
```

## 核心约束

### 1. 先确认仓库状态

开始分析或改动前，先执行：

```bash
git status --short --branch
```

### 2. 先改规则，再改宣传

涉及 skill 行为时，优先更新：

- `SKILL.md`
- `references/*.md`
- `assets/*.md`

`README.md` 只能在规则已经明确后再同步更新。

### 3. 新规则必须带验证场景

每次新增或修改核心规则时，必须至少做一件事：

1. 更新 `references/validation-scenarios.md`
2. 更新相应模板或 rubric
3. 在 PR 描述中说明风险变化

只改规则、不补验证入口，视为不完整。

### 4. 无 Issue 不开工，无关联不提 PR

这是硬性规则，不是建议：

1. 没有对应 Issue，不开始正式改动
2. Issue 没写完整，不开始正式改动
3. PR 没有关联 Issue，不进入评审

开始实现前，Issue 必须至少写清楚四件事：

1. `背景`
2. `要做什么`
3. `别做什么`
4. `什么算完成`

允许的最小流程必须是：

1. 先建立或认领 Issue
2. 先补齐 Issue 四段式内容
3. 再开分支改动
4. 再提交 PR，并在标题或正文中写 `close #编号`

如果发现自己已经先做了改动，但没有对应 Issue：

1. 立即停止继续扩展改动
2. 先补建或补全 Issue
3. 再继续提交、推送和 PR 动作

不允许跳过这个补救步骤。

### 5. 长期记忆规则不能失真

涉及 `memory.md` 设计时，必须确保：

- 只记录长期有效信息
- 区分已确认和待确认内容
- 不把未验证内容沉淀成事实

### 6. 统一检查入口

仓库级交付前至少运行：

```bash
./scripts/run_checks.sh
```

它负责：

- 检查关键治理文件是否存在
- 检查本地是否处于 detached HEAD
- 验证 skill 结构

### 7. 行为变更必须补测试层

如果改动影响用户可见行为，不能只跑静态检查。

至少按以下规则补齐对应测试层：

- 改核心规则：补 `references/rule-test-cases.md`
- 改真实对话流程：补 `references/smoke-test-checklist.md`
- 修复真实出现过的问题：补 `references/regression-cases.md`

测试框架总入口见：

- `references/testing-framework.md`
- `references/smoke-failure-loop.md`

### 8. 冒烟发现新问题时，先建 issue

如果在自己的冒烟对话里发现了一个新的问题，必须先把它沉淀为 issue，再继续修复。

推荐顺序：

1. 记录失败 prompt
2. 记录实际行为、预期行为和影响
3. 使用 `assets/smoke-failure-issue-template.md` 或 `scripts/create_smoke_issue.sh`
4. 创建 issue
5. 再按标准流程开分支修复

只有当你能明确确认该问题已经被现有 open issue 覆盖时，才可以不新建 issue。

## 典型高风险点

- 新包装规则超过候选人可讲述边界
- README 与 `SKILL.md` 描述不一致
- 岗位模板更新了，但审核 rubric 没同步
- 新增 job family，却没有对应验证场景
- memory 模板开始记录过多闲聊内容
- 行为规则改了，但没有补规则用例、冒烟测试或回归案例
- 冒烟发现了新失败，但只在对话里提到，没有建 issue

## 交付前检查

- 是否先有完整 issue，再开始实现
- 是否关联 issue
- issue 是否包含背景、要做什么、别做什么、完成标准
- 是否更新了受影响的规则文件
- 是否运行了 `./scripts/run_checks.sh`
- 若行为变更，是否补了对应测试层
- 若冒烟发现新问题，是否先建了 issue
- 是否说明了风险变化或验证方式
