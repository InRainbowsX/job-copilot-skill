#!/usr/bin/env bash

set -euo pipefail

REPO_URL="https://github.com/InRainbowsX/job-copilot-skill.git"
SKILL_NAME="job-copilot-skill"
TARGET_ENV="${1:-auto}"

usage() {
  cat <<'EOF'
Usage:
  bash install.sh [claude|codex|openclaw|auto]

Examples:
  bash install.sh
  bash install.sh codex
EOF
}

detect_env() {
  if [[ -d "$HOME/.claude" ]]; then
    echo "claude"
    return
  fi

  if [[ -d "$HOME/.codex" ]]; then
    echo "codex"
    return
  fi

  if [[ -d "$HOME/.openclaw" ]]; then
    echo "openclaw"
    return
  fi

  echo "codex"
}

resolve_target_dir() {
  case "$1" in
    claude)
      echo "$HOME/.claude/skills/$SKILL_NAME"
      ;;
    codex)
      echo "$HOME/.codex/skills/$SKILL_NAME"
      ;;
    openclaw)
      echo "$HOME/.openclaw/skills/$SKILL_NAME"
      ;;
    *)
      echo ""
      ;;
  esac
}

if [[ "$TARGET_ENV" == "--help" || "$TARGET_ENV" == "-h" ]]; then
  usage
  exit 0
fi

if [[ "$TARGET_ENV" == "auto" ]]; then
  TARGET_ENV="$(detect_env)"
fi

TARGET_DIR="$(resolve_target_dir "$TARGET_ENV")"

if [[ -z "$TARGET_DIR" ]]; then
  echo "Unsupported target: $TARGET_ENV" >&2
  usage >&2
  exit 1
fi

mkdir -p "$(dirname "$TARGET_DIR")"

if [[ -d "$TARGET_DIR/.git" ]]; then
  echo "Updating $SKILL_NAME in $TARGET_DIR"
  git -C "$TARGET_DIR" pull --ff-only
else
  if [[ -e "$TARGET_DIR" ]]; then
    echo "Target exists but is not a git repository: $TARGET_DIR" >&2
    exit 1
  fi

  echo "Installing $SKILL_NAME to $TARGET_DIR"
  git clone "$REPO_URL" "$TARGET_DIR"
fi

if [[ ! -f "$TARGET_DIR/SKILL.md" ]]; then
  echo "Installation failed: SKILL.md not found in $TARGET_DIR" >&2
  exit 1
fi

echo
echo "Installed successfully."
echo "Environment: $TARGET_ENV"
echo "Path: $TARGET_DIR"
echo
echo "Suggested invocation:"
echo "使用 \$job-copilot-skill，基于我的原始简历和自我介绍，识别岗位方向并开始深挖项目。"
