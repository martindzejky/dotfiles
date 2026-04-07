---
name: fix-build-and-validation-errors
description: Run build and type-check commands and report and fix failures
---

# Fix build and validation errors

## Trigger

Build, validation, or type-check failures are blocking local validation or CI.

## Workflow

1. Run the repo's build and type-check commands
2. Summarize errors by file and type
3. Fix the highest-confidence issues first
4. Re-run checks until clean or blocked

## Output

- Current build and type-check status
- Error summary grouped by file and category
- Fixes applied and remaining blockers
