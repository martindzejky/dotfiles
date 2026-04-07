---
name: verification-before-completion
description: Use when about to claim work is complete, fixed, or passing, or before handing off changes - requires running fresh verification commands with available tooling and checking the real output before making success claims
---

# Verification Before Completion

## Overview

Do not claim work is complete without verification.

**Core principle:** Evidence before claims.

## The Rule

NO COMPLETION CLAIMS WITHOUT FRESH VERIFICATION EVIDENCE

If you have not run the command that proves the claim, do not make the claim.

## Required Sequence

Before claiming any status:

1. Identify the command that proves the claim.
2. Run the full command using the available tooling.
3. Read the output and check the exit code.
4. Confirm the output actually proves the claim.
5. Only then state the result.

If verification fails, report the real status with evidence.

## What Counts

| Claim              | Required evidence                      | Not enough                        |
| ------------------ | -------------------------------------- | --------------------------------- |
| Tests pass         | Fresh test run with 0 failures         | "Should pass now"                 |
| Linter clean       | Fresh lint output with 0 errors        | Partial check                     |
| Build succeeds     | Fresh build exit code 0                | Passing lint                      |
| Bug fixed          | Reproduced symptom no longer occurs    | Code changed                      |
| Regression covered | Verified red-green-pass cycle          | Test written once                 |
| Task completed     | Verified requirements and current diff | Assuming implementation is enough |

## Red Flags

Stop if you are about to:

- say "done", "fixed", "working", or similar without a fresh check
- rely on confidence instead of command output
- trust a partial verification for a broader claim
- move to commit, PR, or handoff without verifying
- use vague wording like "should", "probably", or "seems"

## Verification Patterns

**Tests**

Run the real test command.
Read the full result.
Then say: "Tests pass" only if they actually pass.

**Build**

Run the real build command.
Check exit code and errors.
Then say: "Build passes" only if it exits successfully.

**Bug fixes**

Reproduce the original issue.
Apply the fix.
Run the check that proves the symptom is gone.
Only then say the bug is fixed.

**Requirements**

Re-read the requested scope.
Check each requirement against the current implementation.
Report what is complete and what is still missing.

## Tooling Guidance

Use the available project and IDE tooling to verify claims:

- run the project's real test, lint, and build commands
- inspect command output directly rather than inferring
- verify delegated or generated work independently
- prefer complete checks over partial evidence when making broad claims

## Bottom Line

Run the command. Read the output. Then state the result.

No evidence, no completion claim.
