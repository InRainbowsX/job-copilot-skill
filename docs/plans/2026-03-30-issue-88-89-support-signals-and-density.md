# Issues 88 And 89 Plan

## Goal

Make support-role-sensitive signals count as strengths, and ensure bullet-count targets never override stronger role-fit evidence.

## Changes

- teach the skill that reporting, FAQ, system maintenance, policy updates, and risk reminders can be value signals for support-heavy roles
- make `4 / 3 / 3`-style limits explicitly subordinate to value-line decisions
- extend the packaging card, routing guidance, rubric, and validation scenarios to cover both behaviors

## Risk Change

- before: the skill could preserve value density in general, but still treat support-role signals as weak admin work or over-obey a neat bullet target
- after: support-role signals are recognized as strengths when appropriate, and density constraints must follow role-fit evidence

## Verification

- `./scripts/run_checks.sh`
- `git diff --check`