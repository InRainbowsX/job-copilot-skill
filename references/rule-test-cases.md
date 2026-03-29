# Rule Test Cases

Use these cases to validate one behavior rule at a time. Do not check for exact final wording; check for the presence or absence of intended behavior.

## Rule Case Format

Each rule case should include:

- `目标规则`
- `输入 prompt`
- `期望行为`
- `禁止行为`

## Case 1: Status Block Must Appear

目标规则:

- 首轮必须先显示状态块

输入 prompt:

`Use $job-copilot-skill to rewrite my resume directly for backend roles.`

期望行为:

- 输出开头出现 `当前阶段`
- 输出开头出现 `当前任务`
- 输出开头出现 `下一步推荐`
- 先说明处于诊断或深挖阶段，再决定是否进入改写

禁止行为:

- 直接进入最终简历改写
- 没有任何状态块

## Case 2: Recent Experience Outranks Distant Campus Experience

目标规则:

- 社招场景下最近经历优先

输入 prompt:

`Use $job-copilot-skill to package my resume for content operations. I have a strong campus self-media project from several years ago, but my more recent work is in store operations and advertising operations.`

期望行为:

- 明确这是社招时间轴
- 优先评估最近 1 到 3 年经历
- 说明校园经历是否作为补充亮点保留

禁止行为:

- 仅因为校园项目更亮就自动把它定为主叙事
- 不解释主叙事与补充经历的划分

## Case 3: Packaging Diagnoses Before Rewriting

目标规则:

- 简历包装教练必须先诊断再追问

输入 prompt:

`Use $job-copilot-skill to polish my resume.`

期望行为:

- 先指出当前问题或包装方向
- 在信息不足时先追问
- 不把第一次响应直接做成完整定稿

禁止行为:

- 一上来就输出完整最终版文案
- 只做措辞润色，不做诊断

## Case 4: Reviewer Output Must Include Risk And Upgrade Guidance

目标规则:

- 审核官不只审错，还要给升级建议

输入 prompt:

`Use $job-copilot-skill to package this project aggressively and then review it.`

期望行为:

- 审核输出里能看见风险判断
- 审核输出里能看见当前层级
- 审核输出里能看见不足点
- 审核输出里能看见升级建议
- 审核输出里能看见可守的更优表达

禁止行为:

- 只有模糊的“可以更好”式评价
- 只有风险，没有建设性建议

## Case 5: Gap Recognition Should Not Auto-Convert To Employment

目标规则:

- gap 中的非标准经历不能被直接写成正式任职

输入 prompt:

`Use $job-copilot-skill to explain my gap. I spent that period writing fiction and running a personal content project.`

期望行为:

- 识别这是 gap 或非标准经历
- 说明需要进一步确认这段时间的投入和产出
- 为后续包装提供方向，但不直接伪装成公司经历

禁止行为:

- 直接把个人项目写成公司任职
- 把 gap 直接忽略成空白

## Case 6: Gap Must Be Classified Before Packaging

目标规则:

- gap 或非标准经历要先分型，再决定后续怎么处理

输入 prompt:

`Use $job-copilot-skill to review my resume. I had a 9-month break where I was preparing for a transition, writing online fiction, and running a small personal content account.`

期望行为:

- 识别这是一个 gap 或非标准经历区间
- 尝试将这段时间分类为学习型、创作型、项目型或混合型
- 说明还缺哪些时间线或产出信息
- 明确这一步先做识别，不直接跳到正式任职包装

禁止行为:

- 不做分型，直接进入强包装
- 把这段时间简单归零成“没有经历”
- 直接写成固定公司的正式工作

## Case 7: Gap Packaging Should Explain, Not Erase

目标规则:

- gap 包装的目标是合理解释，不是把 gap 洗成正式工作

输入 prompt:

`Use $job-copilot-skill to package my gap. I spent that period writing fiction and running a small personal content project, and I want it to look more reasonable on my resume and in interviews.`

期望行为:

- 先承认这是 gap 或非标准经历
- 给出更安全的简历写法方向
- 给出更安全的面试解释方向
- 明确不要伪装成正式公司任职
- 强调持续投入、产出或可迁移能力

禁止行为:

- 直接把这段时间写成固定公司经历
- 为了好看而虚构职位、公司或商业化结果
- 把 gap 写成核心高光但没有支撑

## Case 8: Packaging Coach Must Diagnose Before Rewriting

目标规则:

- 简历包装教练默认要先诊断、再追问、后改写

输入 prompt:

`Use $job-copilot-skill to rewrite my resume for product operations. My current project bullets feel flat, so give me a stronger version.`

期望行为:

- 先指出当前问题或最值得包装的经历
- 先给推荐包装方向
- 信息不足时先追问关键缺口
- 如果给草案，要明确它还是临时版本

禁止行为:

- 第一轮直接给完整终稿
- 只有措辞润色，没有诊断或方向判断
- 在缺少职责、范围或结果支撑时假装内容已经稳定

## Case 9: Packaging Output Must Stay Structured

目标规则:

- 包装结果必须让用户看见问题、方向、结果和风险，而不是只有改写稿

输入 prompt:

`Use $job-copilot-skill to package my strongest operations project and show me a stronger version.`

期望行为:

- 输出里能看见当前问题
- 输出里能看见推荐方向
- 输出里能看见改写结果
- 输出里能看见补充建议或风险提醒
- 对话仍然简洁，不变成大报告

禁止行为:

- 只给一段最终改写
- 没有说明为什么这样改
- 没有提示还缺什么支撑或有什么风险

## Case 10: Packaging Should Use Role-Specific High-Quality Signals

目标规则:

- 包装不能只靠泛化润色，应该参考岗位化的高质量信号

输入 prompt:

`Use $job-copilot-skill to strengthen my resume for operations. I want it to sound much stronger than ordinary wording.`

期望行为:

- 不只做“更高级措辞”式改写
- 会往岗位相关的高质量信号上靠拢
- 会体现结果表达策略或包装升级策略
- 会说明更强版本想突出什么能力

禁止行为:

- 只输出泛泛的漂亮句子
- 不区分岗位，套同一种强简历话术

## Case 13: Memory And Project Cards Must Support Session Resume

目标规则:

- memory 和项目卡片要能支撑下一次从正确阶段继续，而不是默认从头开始

输入 prompt:

`Use $job-copilot-skill to continue from last time. We already finished project deep-dive and only need reviewed wording plus the next interview drills.`

期望行为:

- 会识别这不是第一次 intake
- 会根据已记录状态恢复到合适阶段
- 会利用项目卡片和 memory 避免重复追问已确认内容

禁止行为:

- 每次都默认从阶段 1 重新开始
- 忽略上一次已确认的阶段进度

## Case 11: Project Card Must Carry Timeline And Gap Signals

目标规则:

- 项目包装卡片必须能表达时间权重、gap 属性和主叙事定位

输入 prompt:

`Use $job-copilot-skill to package my resume. I have a strong campus project, a recent operations project, and a gap-period content project.`

期望行为:

- 生成的项目卡片会标明是否为最近核心经历
- 会标明是否属于 gap 或非标准经历
- 会标明是主叙事、辅助叙事还是补充亮点
- 会体现时间轴权重说明

禁止行为:

- 卡片只记录项目内容，不表达时间位置
- 无法区分主线和补充经历

## Case 14: Content Operations Cases Must Use Content-Specific Knowledge

目标规则:

- 内容运营 / 自媒体运营不能只靠泛运营知识处理

输入 prompt:

`Today is 2026-03-29. Use $job-copilot-skill to package a resume for content operations. The candidate has self-media work, a personal content project, and some generic operations experience.`

期望行为:

- 会使用内容运营 / 自媒体运营的话语体系，而不是只说泛运营
- 会追问受众定位、选题机制、内容节奏、分发和复盘
- 会判断个人创作或个人账号经历在社招里的价值边界
- 会区分账号级结果和个人直接动作

禁止行为:

- 把内容运营压扁成活动执行或泛运营
- 只围绕涨粉、阅读做表面润色
- 把个人创作直接写成正式公司任职

## Case 15: Risk-Control Backend Cases Must Use Subdomain Knowledge

目标规则:

- 风控 / 反爬 / 设备指纹场景不能只靠通用后端知识处理

输入 prompt:

`Today is 2026-03-29. Use $job-copilot-skill to package a backend resume with anti-crawl, device fingerprint, and risk-control architecture experience.`

期望行为:

- 仍然保持后端主路由
- 会追问系统边界、识别链路、实时判定、延迟和可用性
- 会识别误杀 / 漏放 / 风控收益这类结果边界
- 会把 AI 工具、架构 owner、大流量指标作为审核热点

禁止行为:

- 只做通用后端措辞优化
- 因为有风控或安全词汇就偏离后端主路由
- 对高风险技术表述不做额外审查
