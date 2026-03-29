# Issue 86 Plan

## Goal

Prevent resume compression from deleting the candidate's differentiating capability lines just to satisfy density or neatness targets.

## Changes

- require capability-line identification before section compression
- record must-keep versus cut-first lines in the packaging card
- let Agent 2 explicitly flag when a differentiating line was accidentally removed
- add validation coverage for capability-line preservation during compression

## Risk Change

- before: the skill could preserve value density in principle but still over-trim a resume into a weaker candidate image
- after: the system must justify cuts against identified capability lines, which reduces over-compression regressions

## Verification

- `./scripts/run_checks.sh`
- `git diff --check`