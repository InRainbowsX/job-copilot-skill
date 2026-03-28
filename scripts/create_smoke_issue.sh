#!/usr/bin/env bash

set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  bash scripts/create_smoke_issue.sh \
    --title "标题" \
    --prompt "失败的 smoke prompt" \
    --observed "实际观察到的行为" \
    --expected "预期行为" \
    --impact "影响或风险" \
    [--repo "owner/repo"] \
    [--dry-run]

Options:
  --title       Issue 标题
  --prompt      失败的 smoke prompt
  --observed    实际行为
  --expected    预期行为
  --impact      影响或风险
  --repo        GitHub 仓库，默认 InRainbowsX/job-copilot-skill
  --dry-run     只打印 issue 内容，不调用 GitHub
  -h, --help    显示帮助
EOF
}

TITLE=""
PROMPT_TEXT=""
OBSERVED=""
EXPECTED=""
IMPACT=""
REPO="InRainbowsX/job-copilot-skill"
DRY_RUN="false"

while [[ $# -gt 0 ]]; do
  case "$1" in
    --title)
      TITLE="${2:-}"; shift 2 ;;
    --prompt)
      PROMPT_TEXT="${2:-}"; shift 2 ;;
    --observed)
      OBSERVED="${2:-}"; shift 2 ;;
    --expected)
      EXPECTED="${2:-}"; shift 2 ;;
    --impact)
      IMPACT="${2:-}"; shift 2 ;;
    --repo)
      REPO="${2:-}"; shift 2 ;;
    --dry-run)
      DRY_RUN="true"; shift ;;
    -h|--help)
      usage; exit 0 ;;
    *)
      echo "Unknown argument: $1" >&2
      usage
      exit 1 ;;
  esac
done

for required in TITLE PROMPT_TEXT OBSERVED EXPECTED IMPACT; do
  if [[ -z "${!required}" ]]; then
    echo "Missing required argument: ${required}" >&2
    usage
    exit 1
  fi
done

BODY=$(cat <<EOF
## 背景
在执行以下冒烟测试 prompt 时发现新的行为问题：

- prompt：${PROMPT_TEXT}

实际观察到的行为：
${OBSERVED}

预期行为：
${EXPECTED}

影响或风险：
${IMPACT}

## 要做什么
- 复现这个冒烟失败
- 明确问题属于规则缺失、流程缺失、包装失真还是审核失真
- 修复导致失败的核心原因
- 在需要时补充相应的规则用例、冒烟测试或回归案例

## 别做什么
- 不要只修表面措辞而不解决根因
- 不要绕过现有 issue / PR 流程直接改主分支
- 不要把尚未确认的问题当成已有 issue 的重复项
- 不要引入与当前失败无关的大范围改动

## 什么算完成
- 问题已被明确复现
- 修复范围与失败现象对应
- 需要的测试层已补充
- 本地校验通过
- PR 已关联本 issue
EOF
)

if [[ "${DRY_RUN}" == "true" ]]; then
  printf 'TITLE: %s\n\n%s\n' "${TITLE}" "${BODY}"
  exit 0
fi

TMP_BODY_FILE="$(mktemp)"
trap 'rm -f "${TMP_BODY_FILE}"' EXIT
printf '%s\n' "${BODY}" > "${TMP_BODY_FILE}"

gh issue create --repo "${REPO}" --title "${TITLE}" --body-file "${TMP_BODY_FILE}"
