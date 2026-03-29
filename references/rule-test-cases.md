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

## Case 11: Support-Role Signals Must Count As Strengths

目标规则:

- 对 SSC / HR Ops / Global Mobility 等支持型岗位，报表、FAQ、系统维护、政策更新等内容不能默认降级成低价值事务

输入 prompt:

`Use $job-copilot-skill to rewrite my HR Ops resume. My strongest work is reporting, FAQ maintenance, system updates, and policy reminders, but I worry they look too transactional.`

期望行为:

- 识别这些内容对目标岗位是支撑能力信号
- 将其改写为流程、合规、服务或运营支撑能力
- 只有在证据明显很弱时才降级

禁止行为:

- 默认把这些内容归为杂项事务
- 为了更像“高级经历”而直接删除这些信号

## Case 12: Bullet Count Cannot Override Role-Fit Value

目标规则:

- `4 / 3 / 3` 等篇幅约束只能服从岗位价值，不能机械执行

输入 prompt:

`Use $job-copilot-skill to compress my resume to 4 / 3 / 3 bullets, but the FAQ, reporting, and policy-warning work is actually more important for the target SSC role than some generic activity lines.`

期望行为:

- 先判断哪些信号最能证明岗位适配
- 必要时保留更强信号，而不是只为凑条数删核心内容
- 说明是哪些内容先被裁掉，以及原因

禁止行为:

- 先机械压成 4 / 3 / 3，再回头解释
- 为了整齐直接删掉更强的 role-fit 证据

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

## Case 14: Project Card Must Carry Timeline And Gap Signals

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

## Case 15: Packaging Must Produce A Clear Plan Before Stable Rewriting

目标规则:

- 在稳定改写前，必须先有明确的包装方案

输入 prompt:

`Today is 2026-03-29. Use $job-copilot-skill to package my real resume for internet jobs. Before final rewriting, show me the main packaging direction, the narrative order, what each experience should emphasize, what still needs support, and whether there is a safer version versus a stronger version.`

期望行为:

- 会先给出包装方案，而不是直接给最终文案
- 会明确主包装方向和主叙事排序
- 会说明每段经历的包装目标
- 会列出必须补的信息和必须降级的说法
- 会给出版本 A / 版本 B，或明确更稳与更强的差异
- 会让审核官能够评价方案本身是否合理

禁止行为:

- 没有包装方案就直接进入定稿
- 强弱版本没有边界区分
- 明明还缺信息，却把方案写成已稳定终稿

## Case 22: First Pass Must Score And Judge Packaging Route

目标规则:

- 首轮要先给市场判断，并决定是普通优化还是强包装

输入 prompt:

`Use $job-copilot-skill to assess my operations resume. I have a long gap and my recent work is weak.`

期望行为:

- 先给市场评分或等效强弱判断
- 说明这份简历的主风险
- 说明是普通优化还是必须走强包装路线
- 在信息不足时继续停留在诊断阶段

禁止行为:

- 不做评分和强弱判断，直接开始终稿包装
- 把明显弱简历当成普通润色处理

## Case 23: Final Packaging Requires Route Lock

目标规则:

- 未锁方向前不能直接产出最终包装稿

输入 prompt:

`Use $job-copilot-skill to package my resume. I might target content operations, merchant operations, or ad operations.`

期望行为:

- 先比较几条可能路线
- 明确主方向、次方向，或明确说明尚未锁定
- 解释不同路线下主项目排序会怎样变化

禁止行为:

- 在未锁方向时直接给最终版简历
- 把路线选择藏在默认假设里不说

## Case 24: Resume Conversation Must Not Drift Into Tutorial

目标规则:

- 简历会话中的补充建议必须回到简历与面试主线

输入 prompt:

`Use $job-copilot-skill to handle my gap. I am considering a Xiaohongshu account and a personal content project.`

期望行为:

- 先判断这类经历在简历中的位置和作用
- 先说它如何补 gap、补信号、控风险
- 如果扩展建议，也要先以简历和面试可解释性为主

禁止行为:

- 直接展开小红书运营教程
- 把会话主线从简历包装带偏到内容运营教学

## Case 25: Next Stage Cannot Leak Before Release

目标规则:

- 当前阶段未放行前，不允许提前执行下一阶段核心内容

输入 prompt:

`Use $job-copilot-skill to finish my resume and then start mock interview questions.`

期望行为:

- 先完成当前阶段并给出是否放行的判断
- 如果当前简历还没达标，就停在当前阶段
- 只能把模拟面试写成下一步推荐，而不是直接执行

禁止行为:

- 当前简历还未 released 就直接开始模拟面试
- 把“下一步推荐”当成已经执行的内容

## Case 26: Gap Options Must Be Role-Matched And Truthful

目标规则:

- gap 期可选内容必须按岗位匹配度、证据门槛和风险来排序

输入 prompt:

`Use $job-copilot-skill to tell me what I can add during my gap. I am considering a Xiaohongshu account, a writing column, and a small merchant-diagnosis project.`

期望行为:

- 先判断哪些选项更贴当前目标岗
- 说明每个选项适合放在简历哪里
- 说明最低需要哪些支撑
- 说明哪个最稳，哪个只能弱写

禁止行为:

- 泛泛地列一堆项目点子
- 不区分岗位差异
- 把个人项目直接包装成正式任职

## Case 27: Chinese Real Samples Must Not Fall Back To Templates

目标规则:

- 用户要求中文 / 国内 / 真人样本时，必须优先给国内真实案例索引

输入 prompt:

`Use $job-copilot-skill to show me Chinese real resume examples. Do not give me foreign templates.`

期望行为:

- 优先给中文真实案例或真实求改帖
- 明确来源类型和可信度
- 说明哪些只是补充样本，不能当完整原稿

禁止行为:

- 继续给国外模板站
- 把中文模板站包装成真人简历
- 不说明来源类型

## Case 12: Packaging Must Produce A Clear Plan Before Stable Rewriting

目标规则:

- 在稳定改写前，必须先有明确的包装方案

输入 prompt:

`Today is 2026-03-29. Use $job-copilot-skill to package my real resume for internet jobs. Before final rewriting, show me the main packaging direction, the narrative order, what each experience should emphasize, what still needs support, and whether there is a safer version versus a stronger version.`

期望行为:

- 会先给出包装方案，而不是直接给最终文案
- 会明确主包装方向和主叙事排序
- 会说明每段经历的包装目标
- 会列出必须补的信息和必须降级的说法
- 会给出版本 A / 版本 B，或明确更稳与更强的差异
- 会让审核官能够评价方案本身是否合理

禁止行为:

- 直接从诊断跳到最终简历 bullets
- 只给几句泛泛建议，不形成方案层
- 不说明哪些事实还没补，哪些说法必须降级

## Case 14: Real Resume Must Be Decomposed Before Stable Packaging

目标规则:

- 在真实简历进入稳定包装前，必须先形成系统拆解报告或同等拆解结论

输入 prompt:

`Today is 2026-03-29. Use $job-copilot-skill to package my real resume for internet jobs. Before rewriting it, show me how you understand the timeline, the main narrative, the supporting narrative, the gap or non-standard periods, and the main interview pressure points.`

期望行为:

- 先给出系统拆解层，而不是直接给最终改写
- 明确当前分析日期或招聘时点
- 明确主叙事、辅助叙事和补充亮点
- 明确 gap 或非标准经历的结论
- 明确主要 ownership / 指标 / 可解释性风险
- 明确下一步优先深挖哪些经历

禁止行为:

- 一上来直接输出最终简历 bullets
- 只说“我理解了你的简历”，但不给结构化拆解
- 不区分主叙事、支撑经历和补充亮点

## Case 15: Fine-Grained Content-Operations Template Must Shape Packaging

目标规则:

- 内容运营 / 自媒体运营场景必须按细分模板来组织包装和审核，而不是只停留在 broad operations

输入 prompt:

`Today is 2026-03-29. Use $job-copilot-skill to package a content-operations resume with campus self-media work, a personal content project, and generic operations experience.`

期望行为:

- 会把内容运营 / 自媒体运营作为细分模板来处理
- 会强调 audience、topic、distribution、iteration，而不只是泛运营动作
- 会在包装和审核中区分账号级结果、个人贡献和个人创作期
- 模拟追问会更像内容运营而不是活动运营通用题

禁止行为:

- 只靠 broad operations 模板处理
- 只做泛化措辞升级
- 忽略个人创作期的内容项目属性

## Case 16: Fine-Grained Risk-Control Backend Template Must Shape Packaging

目标规则:

- 风控 / 反爬 / 设备指纹场景必须按细分后端模板来组织包装和审核，而不是只停留在 broad backend

输入 prompt:

`Today is 2026-03-29. Use $job-copilot-skill to package a backend resume with anti-crawl, device fingerprint, and real-time risk decisioning work.`

期望行为:

- 会把风控 / 反爬后端作为细分模板来处理
- 会强调系统边界、决策链路、实时性约束和风险权衡
- 会把 AI、架构 owner、大流量、高可用当成细分审核热点
- 模拟追问会更像风控后端而不是普通 CRUD 后端

禁止行为:

- 只靠 broad backend 模板处理
- 只做通用服务端措辞优化
- 不区分普通后端项目和风控后端项目的审核重点

## Case 17: Personal Creation Period Must Get Safe Content-Project Packaging

目标规则:

- 内容运营 / 自媒体运营场景中的 `个人创作期 / 个人账号 / 内容项目` 必须给出安全放置方式、包装边界和面试解释口径

输入 prompt:

`Today is 2026-03-29. Use $job-copilot-skill to package a content-operations resume where the candidate has a personal creation period writing fiction and running a personal content account.`

期望行为:

- 会把这段识别为 gap 中的个人内容项目或非标准经历，而不是正式任职
- 会明确简历中的安全放置方式
- 会明确包装边界，避免虚构正式 title、商业化结果或全链路增长能力
- 会给出可守的面试解释口径
- 会把这段经历和目标内容岗位建立能力迁移连接

禁止行为:

- 直接把个人创作期包装成固定公司正式任职
- 只说“这是 gap”，不给任何安全包装方式
- 不说明面试里应该怎么解释

## Case 18: Risk-Control Backend Must Enforce Ownership And Risk-Signal Boundaries

目标规则:

- 风控 / 反爬 / 设备指纹后端场景必须对 `架构师职责边界`、`AI 工具真实 ownership`、`团队成果与个人成果区分` 做更严格审查

输入 prompt:

`Today is 2026-03-29. Use $job-copilot-skill to package a backend resume with anti-crawl, device fingerprint, architecture wording, and AI tooling.` 

期望行为:

- 会把这类经历放到风控 / 反爬后端细分模板下处理
- 会明确结果表达策略，而不是只堆大指标
- 会对架构师职责边界做限制
- 会对 AI 工具真实 ownership 做限制
- 会区分团队成果与个人成果
- 会给出更贴合该子方向的面试追问主题

禁止行为:

- 默认接受 `架构师`、`整体设计`、`AI 能力` 这类强表述
- 只做 broad backend 的泛化包装
- 不区分团队成果和个人成果

## Case 19: Review And Interview Results Must Drive Memory Writeback

目标规则:

- 审核结果和面试失败项必须按规则决定是否写回 memory，并能区分 `已确认 / 待补充 / 高风险`

输入 prompt:

`Today is 2026-03-29. Use $job-copilot-skill to review a project, mark one metric as high-risk, approve one safer bullet, and record one mock-interview failure.` 

期望行为:

- 会明确哪些内容必须写回 memory
- 会明确哪些内容不应写回 memory
- 会给出 `已确认 / 待补充 / 高风险` 状态
- 会说明面试失败项是否需要回写到项目卡片

禁止行为:

- 把未经确认的包装内容直接写成长期记忆
- 只记 approved wording，不记高风险禁用表述
- 面试失败项出现后不决定是否回写项目卡片或 memory

## Case 20: Product Management Routing Must Trigger A Product-Specific Template

目标规则:

- 产品经理场景不能只靠通用流程，必须触发产品模板并按产品岗逻辑深挖与审核

输入 prompt:

`Today is 2026-03-29. Use $job-copilot-skill to package a product-manager resume with requirement design, cross-team launch, KPI review, and roadmap participation.`

期望行为:

- 会把候选人路由到 product management family
- 会使用产品问题、优先级、方案权衡、跨团队推进、上线复盘的语言
- 会审查“需求负责人”“产品 owner”“路线图 ownership”这类职责边界
- 模拟追问会更像产品面试而不是技术或泛运营面试

禁止行为:

- 只靠通用规则处理，不触发产品模板
- 把纯协调包装成完整产品 ownership
- 不区分需求定义、方案设计和推进执行

## Case 21: Personal Creation Signals Must Not Force Content-Template Routing

目标规则:

- `个人创作期 / 个人账号 / 内容项目` 不能单独强行触发内容运营细分模板；只有内容目标明确或内容信号占主导时才升级

输入 prompt:

`Today is 2026-03-29. Use $job-copilot-skill to package an operations resume with one personal content project, but the candidate mainly targets user growth and activity operations.`

期望行为:

- 会保留 broad operations 为主路由
- 会说明个人内容项目只借用内容包装边界，而不会直接改成内容运营模板
- 会在确实缺少 dominant content evidence 时拒绝切进内容细分模板

禁止行为:

- 只因出现个人创作期或个人账号就强制切到内容运营模板
- 让内容模板覆盖掉原本的用户增长 / 活动运营主方向
