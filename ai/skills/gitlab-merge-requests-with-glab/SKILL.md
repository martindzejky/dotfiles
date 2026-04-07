---
name: gitlab-merge-requests-with-glab
description: Use when working with GitLab merge requests from the terminal, especially on a checked-out feature branch where `glab mr` can resolve the current merge request without an explicit ID. Useful for reviewing discussions, posting notes, checking mergeability, and checking MR-linked pipeline state.
---

# GitLab Merge Requests With glab

## Core Rule

- Start with `glab mr`.
- If a command accepts `[<id> | <branch>]`, omit it by default.
- In the usual feature-branch workflow, `glab` resolves the open MR for the current branch.
- Only pass an ID or branch when intentionally targeting a different MR.
- If unsure about flags, run `glab mr <subcommand> --help`.

## Quick Reference

- Inspect current branch MR: `glab mr view`
- Show comments and activity: `glab mr view --comments`
- Show unresolved threads only: `glab mr view --comments --unresolved`
- View structured MR data: `glab mr view --output json`
- View MR diff: `glab mr diff`
- List discussions: `glab mr note list`
- List unresolved diff discussions: `glab mr note list --state unresolved --type diff`
- Add a note: `glab mr note -m "message"`
- Open editor for a longer note: `glab mr note`
- Resolve a discussion: `glab mr note resolve <discussion-id>`
- Reopen a discussion: `glab mr note reopen <discussion-id>`
- Approve current MR: `glab mr approve`
- Mark ready: `glab mr update --ready`
- Mark draft: `glab mr update --draft`
- Update title/body from commits: `glab mr update --fill --fill-commit-body --yes`
- Merge current MR: `glab mr merge`

## Pipeline Checks

Use `glab mr view --output json` when you need MR-linked status without leaving the terminal.

Look for:

- `pipeline.status`
- `head_pipeline.status`
- `detailed_merge_status`
- `has_conflicts`
- `web_url`

## Common Workflow

```bash
glab mr view --comments --unresolved
glab mr diff
glab mr note list --state unresolved
glab mr note -m "addressed in the latest commit"
glab mr view --output json
```

## Common Mistakes

- Looking up the MR ID first when the current branch is already enough.
- Using `glab mr list` for the active branch instead of `glab mr view`.
- Assuming `glab mr note list` is fully stable; it is marked experimental.
- Assuming `glab mr note -m` posts an in-thread reply. Check `glab mr note --help` first if thread-specific behavior matters.
