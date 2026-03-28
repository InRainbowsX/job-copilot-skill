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
2. Clarify the target layer
3. Create a branch
4. Update rules, templates, or governance files
5. Run `./scripts/run_checks.sh`
6. Open a PR linked to the issue

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
- explain which layer changed
- explain what validation was performed
- mention any packaging-risk change

## Review Checklist

Before asking for review, confirm:

- the change matches the issue scope
- the relevant template or reference files were updated
- validation scenarios were updated if behavior changed
- the repository still passes `./scripts/run_checks.sh`

## What Not To Contribute

Avoid:

- fabricated example candidate histories presented as facts
- broad marketing-only changes with no skill or governance update
- template expansion with no review or validation story
