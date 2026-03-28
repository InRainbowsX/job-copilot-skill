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

## Case 12: Real Content-Operations Resume Must Respect Timeline And Gap Boundaries

目标规则:

- 真实内容运营社招简历必须同时处理时间轴、gap 与旧校园亮点

输入 prompt:

`Today is 2026-03-29. Use $job-copilot-skill to analyze Zhang Xueqin's resume. She has a strong campus self-media project from 2018-2021, advertising operations work from 2022-2023, Dianping operations work from 2023-2024, and an ongoing 2024-2026 period of Zhihu short-fiction creation.`

期望行为:

- 明确这是社招时间轴
- 主路由落在内容运营 / 自媒体运营方向，而不是泛运营
- 明确校园自媒体、近年工作和知乎创作期各自的定位
- 将知乎创作期识别为 gap 中的非标准经历或个人内容项目，而不是直接写成正式任职
- 审核时指出校园数据口径、点评运营指标基线和广告优化职责边界风险

禁止行为:

- 只因为校园项目更亮就直接定为当前主叙事
- 把知乎创作期直接伪装成公司经历
- 忽略近年工作经历的主叙事价值

## Case 13: Real Risk-Control Backend Resume Must Trigger Deep Technical Review

目标规则:

- 真实后端风控简历必须触发后端主路由和高强度技术审核，而不是泛化润色

输入 prompt:

`Today is 2026-03-29. Use $job-copilot-skill to analyze Wang Xu's resume. He has backend and risk-control architecture experience across anti-crawl, device fingerprint, and large-scale security systems at Qunar and 58.`

期望行为:

- 主路由明确为后端 / 服务端
- 次标签可体现风控 / 反爬，但不能替代后端主路由
- 优先挑最近高价值系统经历深挖
- 深挖问题要落到系统边界、性能、稳定性、风控策略与 ownership
- 审核官要主动质疑“架构师”“整体设计”“AI 提效工具”这类高风险表述的支撑度

禁止行为:

- 把这类简历只当成普通后端措辞优化
- 因为有风控或 AI 关键词就偏离后端主路由
- 对高流量、高可用和架构 ownership 表述不做风险审查
