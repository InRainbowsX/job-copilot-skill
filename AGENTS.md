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
python3 /Users/qitmac001629/.codex/skills/.system/skill-creator/scripts/quick_validate.py .
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

### 4. 长期记忆规则不能失真

涉及 `memory.md` 设计时，必须确保：

- 只记录长期有效信息
- 区分已确认和待确认内容
- 不把未验证内容沉淀成事实

### 5. 统一检查入口

仓库级交付前至少运行：

```bash
./scripts/run_checks.sh
```

它负责：

- 检查关键治理文件是否存在
- 检查本地是否处于 detached HEAD
- 验证 skill 结构

## 典型高风险点

- 新包装规则超过候选人可讲述边界
- README 与 `SKILL.md` 描述不一致
- 岗位模板更新了，但审核 rubric 没同步
- 新增 job family，却没有对应验证场景
- memory 模板开始记录过多闲聊内容

## 交付前检查

- 是否关联 issue
- 是否更新了受影响的规则文件
- 是否运行了 `./scripts/run_checks.sh`
- 是否说明了风险变化或验证方式
