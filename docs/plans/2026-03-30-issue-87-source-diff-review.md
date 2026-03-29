# Issue 87 Plan

## Goal

Require every targeted rewrite or compression pass to compare the final draft back to the source resume so key evidence is not lost silently.

## Changes

- add a source-diff check to the consolidate/review flow
- store retained, downgraded, and removed source signals in the packaging card
- let Agent 2 reject rewrites that cannot explain source-to-output differences
- add a validation scenario for source-diff review after targeted rewrites

## Risk Change

- before: the skill could output a cleaner rewrite without proving it preserved the strongest source evidence
- after: every targeted rewrite must explain its source-to-output tradeoffs, reducing silent content loss

## Verification

- `./scripts/run_checks.sh`
- `git diff --check`
