# Contributing

## Scope

This repository is a skill project, not a general application codebase. Contributions should improve one or more of the following:

- skill workflow
- job-family routing
- review rubric
- templates
- memory design
- governance
- validation coverage

## Preferred Workflow

1. Open or pick an issue
2. Complete the issue before implementation starts
3. Clarify the target layer
4. Create a branch
5. Update rules, templates, or governance files
6. Run `./scripts/run_checks.sh`
7. Open a PR linked to the issue

Before implementation starts, the issue must clearly include:

- 背景
- 要做什么
- 别做什么
- 什么算完成

Hard rule:

- no issue, no implementation
- no complete issue, no implementation
- no linked issue, no PR

## Branch Naming

Recommended branch patterns:

- `codex/<issue>-feature-name`
- `codex/<issue>-template-name`
- `codex/<issue>-governance-name`

## Commit Style

Use concise conventional commits:

- `feat: ...`
- `fix: ...`
- `docs: ...`
- `refactor: ...`
- `test: ...`
- `chore: ...`

Examples:

- `feat: add sales routing signals`
- `docs: refine mock interview section`
- `chore: tighten repository governance checks`

## Pull Request Rules

Every PR should:

- link an issue, such as `close #12`
- only start from a complete issue
- explain which layer changed
- explain what validation was performed
- mention any packaging-risk change
- explicitly check Codex review findings or other automated review comments before merge

If a PR changes user-visible behavior, it should also update one or more of:

- `references/rule-test-cases.md`
- `references/smoke-test-checklist.md`
- `references/regression-cases.md`

If smoke testing discovers a new failure that is not already covered by an open issue:

- create the issue first
- use `assets/smoke-failure-issue-template.md` or `scripts/create_smoke_issue.sh`
- only then start the fix branch and PR flow

If an automated review finding is discovered after a PR has already merged:

- create a follow-up issue immediately
- fix it through the normal issue -> branch -> PR flow
- do not silently treat the merged PR as fully complete

## Review Checklist

Before asking for review, confirm:

- the work started from a complete issue
- the change matches the issue scope
- the relevant template or reference files were updated
- validation scenarios were updated if behavior changed
- the repository still passes `./scripts/run_checks.sh`
- rule cases, smoke tests, or regression cases were updated when the behavior changed
- new smoke failures were captured as issues before implementation continued

## What Not To Contribute

Avoid:

- fabricated example candidate histories presented as facts
- broad marketing-only changes with no skill or governance update
- template expansion with no review or validation story
