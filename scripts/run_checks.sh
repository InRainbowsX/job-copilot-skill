#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
VALIDATOR="$ROOT_DIR/scripts/validate_skill.py"

cd "$ROOT_DIR"

echo "==> Checking git state"
branch_line="$(git status --short --branch | head -n 1)"
echo "$branch_line"
if [[ "$branch_line" == *"HEAD detached"* ]]; then
  echo "ERROR: detached HEAD is not allowed for repository checks"
  exit 1
fi

echo "==> Checking required files"
required_files=(
  "README.md"
  "SKILL.md"
  "LICENSE"
  "AGENTS.md"
  "CONTRIBUTING.md"
  "agents/openai.yaml"
  "assets/memory-template.md"
  "assets/project-packaging-card-template.md"
  "assets/interview-error-log-template.md"
  "references/job-families.md"
  "references/review-rubric.md"
  "references/validation-scenarios.md"
  "scripts/run_checks.sh"
  ".github/workflows/ci.yml"
  ".github/workflows/issue-workflow.yml"
  ".github/pull_request_template.md"
)

for file in "${required_files[@]}"; do
  [[ -f "$file" ]] || { echo "ERROR: missing required file: $file"; exit 1; }
done

echo "==> Validating skill structure"
python3 "$VALIDATOR" "$ROOT_DIR"

echo "==> Repository checks passed"
