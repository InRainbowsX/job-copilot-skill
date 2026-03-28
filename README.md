# Job Copilot Skill

[![Status](https://img.shields.io/badge/status-alpha-0a7ea4)](https://github.com/InRainbowsX/job-copilot-skill)
[![Workflow](https://img.shields.io/badge/workflow-dual--agent-1f6feb)](https://github.com/InRainbowsX/job-copilot-skill)
[![Scope](https://img.shields.io/badge/scope-internet%20jobs-8a2be2)](https://github.com/InRainbowsX/job-copilot-skill)
[![Memory](https://img.shields.io/badge/memory-enabled-0e8a16)](https://github.com/InRainbowsX/job-copilot-skill)

Turn ordinary experience into role-matched, interview-ready stories.

中文 | [English](#english)

Job Copilot 是一个面向互联网求职场景的简历包装与面试教练 skill。  
它不是简单的“简历润色器”，而是一套围绕 `项目深挖 + 双 Agent 审核 + 模拟面试 + 长期记忆` 构建的求职系统。

很多候选人不是没有经历，而是不会讲经历。  
很多简历不是没有亮点，而是亮点没有被挖出来，也没有被包装成面试官愿意继续追问的版本。

Job Copilot 的目标，就是把这些“平平无奇”的经历，升级成：

- 更贴合目标岗位的简历表达
- 更完整、更能自圆其说的项目故事
- 更经得起追问的面试回答
- 可持续迭代的长期求职档案

## 核心机制

### 1. 双 Agent 模式

Job Copilot 使用写审分离的机制：

- `Agent 1` 负责深挖与优化  
  基于简历、自我介绍和补充信息，持续追问项目背景、职责边界、难点、结果和亮点，产出更强的包装版本。

- `Agent 2` 负责审核与校准  
  检查包装后的内容是否真实、是否符合目标岗位、是否讲得住、是否会在面试里被击穿。

这意味着它不是无约束地“写得更厉害”，而是在“更强表达”和“可讲述性”之间找平衡。

### 2. 动态岗位模板

Job Copilot 不会默认把所有简历都当成后端简历处理。  
它会先识别简历所属方向，再切换对应模板。

当前覆盖的互联网岗位包括：

- 后端 / 服务端
- 前端
- 客户端
- 测试 / 测开 / QA
- 算法 / AI / 推荐 / 搜索
- 数据开发 / 数据分析
- DevOps / SRE
- 产品经理
- 销售
- 运营（含自媒体运营）

### 3. 项目深挖卡片

在正式改简历之前，Job Copilot 会先构建项目包装卡片，用来明确：

- 项目是什么
- 为什么要做
- 你到底负责了什么
- 难点在哪里
- 结果怎么衡量
- 哪些地方可以强化
- 哪些地方存在风险

这样简历优化不再是“直接改文案”，而是先有结构化分析，再有最终输出。

### 4. 长期记忆

Job Copilot 支持 `memory.md` 长期记忆，用来记录：

- 候选人画像
- 求职目标
- 已确认的简历表达
- 项目风险点
- 模拟面试错题
- 下一步训练计划

这让它更像一个长期陪跑教练，而不是一次性工具。

### 5. 模拟面试与错题追踪

当简历和项目故事通过审核后，Job Copilot 会继续做模拟面试训练，包括：

- 项目深挖面
- 岗位知识面
- 场景题 / 设计题
- 行为面

每轮训练产生的薄弱点都会进入错题记录，支持后续持续复训。

## 它解决的问题

Job Copilot 主要解决这些高频求职问题：

- 简历写得太普通，看不出竞争力
- 项目经历很散，讲不出重点
- 亮点不足，结果不明确
- 自我介绍和简历内容脱节
- 简历包装后，一面试就容易露怯
- 每次重新打开都要从头讲，缺少连续性

## 它和普通简历工具的区别

多数工具停留在：

- 改语句
- 改措辞
- 让 bullet 更像“简历 bullet”

Job Copilot 更关注的是：

- 这段经历是否真的值得包装
- 这段包装是否能撑住连续追问
- 这份简历是否真的像目标岗位候选人
- 这套故事是否能在下一轮训练里继续复用

目标不是让简历“看起来强”，而是让候选人“真的能讲住这份强简历”。

## Installation / 安装

### 1. Prompt 安装

一句话直接让当前 AI 帮你安装：

```text
请把 https://github.com/InRainbowsX/job-copilot-skill 安装为当前环境可用的 skill，目录名使用 job-copilot-skill，如果已安装则更新，并在完成后告诉我如何调用它。
```

### 2. 一键脚本安装

默认自动识别当前环境，优先安装到 Claude Code、Codex 或 OpenClaw 的标准 skills 目录。

```bash
curl -fsSL https://raw.githubusercontent.com/InRainbowsX/job-copilot-skill/main/install.sh | bash
```

也可以显式指定环境：

```bash
curl -fsSL https://raw.githubusercontent.com/InRainbowsX/job-copilot-skill/main/install.sh | bash -s -- claude
curl -fsSL https://raw.githubusercontent.com/InRainbowsX/job-copilot-skill/main/install.sh | bash -s -- codex
curl -fsSL https://raw.githubusercontent.com/InRainbowsX/job-copilot-skill/main/install.sh | bash -s -- openclaw
```

对应安装目录：

- `Claude Code`: `~/.claude/skills/job-copilot-skill`
- `Codex`: `~/.codex/skills/job-copilot-skill`
- `OpenClaw`: `~/.openclaw/skills/job-copilot-skill`

### 3. 手动 clone 安装

如果你更希望手动管理 skill，可以直接 clone 到目标目录。

Claude Code:

```bash
mkdir -p ~/.claude/skills
git clone https://github.com/InRainbowsX/job-copilot-skill.git ~/.claude/skills/job-copilot-skill
```

Codex:

```bash
mkdir -p ~/.codex/skills
git clone https://github.com/InRainbowsX/job-copilot-skill.git ~/.codex/skills/job-copilot-skill
```

OpenClaw:

```bash
mkdir -p ~/.openclaw/skills
git clone https://github.com/InRainbowsX/job-copilot-skill.git ~/.openclaw/skills/job-copilot-skill
```

安装完成后，推荐用这句话开始：

```text
使用 $job-copilot-skill，基于我的原始简历和自我介绍，识别岗位方向并开始深挖项目。
```

## 仓库结构

```text
.
├── SKILL.md
├── agents/
│   └── openai.yaml
├── assets/
│   ├── interview-error-log-template.md
│   ├── memory-template.md
│   └── project-packaging-card-template.md
└── references/
    ├── job-families.md
    ├── review-rubric.md
    └── validation-scenarios.md
```

## How to Use / 使用方式

### 中文示例

直接在对话里显式调用：

```text
使用 $job-copilot-skill，基于我的原始简历和自我介绍，先识别我的岗位方向，再深挖最值得包装的项目，给出审核后的简历优化建议，并把结果沉淀到 memory.md。
```

做模拟面试时可以这样说：

```text
使用 $job-copilot-skill，基于我们已经确认过的简历版本，对我做一轮产品经理方向的模拟面试，记录我的错题和下一步训练重点。
```

### English Examples

Invoke the skill explicitly in chat:

```text
Use $job-copilot-skill with my raw resume and self-introduction. First infer my target job family, then deepen the strongest projects, review the upgraded wording, and save the approved result into memory.md.
```

For mock interviews:

```text
Use $job-copilot-skill with my approved resume version to run a mock interview for frontend roles, then log my weak answers and next drills.
```

## 当前状态

当前版本已经完成：

- 双 Agent 工作流骨架
- 岗位识别与路由规则
- 审核 rubric
- 项目包装卡片模板
- memory 模板
- 模拟面试错题模板

下一步重点是：

- 补全更细的岗位专属模板
- 增加真实案例 forward test
- 继续优化 prompt 和 check points

## 项目定位

可以把 Job Copilot 理解成：

`简历包装 + 项目深挖 + 模拟面试 + 长期陪跑记忆`

它适合那些不只想“把简历改好看”，而是想把整套求职表达真正打磨强的人。

---

## English

Job Copilot is a job-search coaching skill built for internet roles.  
It is not just a resume polishing tool. It is a structured system built around `project deep-dives + dual-agent review + mock interviews + long-term memory`.

Many candidates do not fail because they lack experience.  
They fail because they cannot present their experience clearly, sharply, or defensibly.

Job Copilot is designed to turn flat experience into:

- stronger, role-matched resume language
- clearer and more defensible project stories
- interview answers that survive follow-up questions
- a reusable, long-term job-search memory

## Core Mechanics

### 1. Dual-Agent Workflow

Job Copilot uses a write-review split:

- `Agent 1` handles deep-dive and optimization  
  It asks targeted questions, clarifies business context, ownership, challenges, results, and strengths, then produces a stronger packaged version.

- `Agent 2` handles review and calibration  
  It checks whether the stronger version is truthful, role-aligned, explainable, and capable of surviving interview pressure.

This makes the system sharper without making it reckless.

### 2. Dynamic Job-Family Templates

Job Copilot does not assume every resume should be treated as a backend resume.  
It first identifies the likely role direction, then switches to the matching template.

Current internet job families include:

- Backend / server-side
- Frontend
- Mobile client
- Test / QA / test development
- Algorithm / AI / recommendation / search
- Data engineering / data analysis
- DevOps / SRE
- Product management
- Sales
- Operations, including self-media operations

### 3. Project Packaging Cards

Before rewriting final resume bullets, Job Copilot builds a structured project packaging card to define:

- what the project was
- why it existed
- what the candidate actually owned
- where the main challenge was
- how the result can be measured
- what can be strengthened
- where the risk lives

This turns resume optimization into structured reasoning rather than pure rewriting.

### 4. Long-Term Memory

Job Copilot supports a `memory.md` file to keep durable job-search context, including:

- candidate profile
- target roles
- approved resume wording
- project risk notes
- mock interview mistakes
- next-step training plans

That makes it a long-term coaching system instead of a one-time tool.

### 5. Mock Interviews And Error Tracking

After the rewritten version passes review, Job Copilot can continue with mock interview training:

- project deep-dive interviews
- domain interviews
- scenario or design interviews
- behavioral interviews

Weak answers are recorded in an error log so the candidate can keep improving across sessions.

## Problems It Solves

Job Copilot is designed to solve common job-search problems such as:

- resumes that feel too ordinary
- project stories that feel vague or scattered
- unclear ownership and weak impact
- self-introductions that do not match the resume
- stronger wording that collapses under follow-up questions
- repeated sessions with no continuity

## What Makes It Different

Most resume tools stop at:

- rewriting sentences
- improving wording
- making bullets sound more polished

Job Copilot cares about harder questions:

- is this experience actually worth packaging?
- can this stronger story survive follow-up questions?
- does this resume really match the target role?
- can the same narrative be reused in future coaching rounds?

The goal is not just to make a resume look stronger.
The goal is to make the candidate sound stronger across the full hiring process.

## Repository Structure

```text
.
├── SKILL.md
├── agents/
│   └── openai.yaml
├── assets/
│   ├── interview-error-log-template.md
│   ├── memory-template.md
│   └── project-packaging-card-template.md
└── references/
    ├── job-families.md
    ├── review-rubric.md
    └── validation-scenarios.md
```

## Current Status

This repository already includes:

- the dual-agent workflow skeleton
- job-family routing rules
- the review rubric
- the project packaging card template
- the long-term memory template
- the mock interview error log template

Next steps:

- expand role-specific templates
- run forward tests with realistic cases
- refine prompts and check points

## Positioning

Job Copilot can be understood as:

`resume packaging + project deep-dive + mock interview coaching + long-term memory`

It is built for candidates who want more than prettier bullet points.
It is built for candidates who want stories that are stronger, defensible, and repeatable.
