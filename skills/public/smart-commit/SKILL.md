---
name: smart-commit
description: Generate git commit messages from staged changes using the smart-commit style (emoji-first, imperative, issue key from branch). Trigger when a user invokes /smart-commit or asks for a commit message from a git diff.
---

# Smart Commit

## Overview
Self-contained workflow to mirror the smart-commit CLI: staged diff → structured prompt → clean commit message. Use inside a git repo when someone calls /smart-commit or requests a commit message.

## Workflow
1) Check repo and staging
- Confirm you are in a git repo (`git rev-parse --is-inside-work-tree`) and show `git status -sb`.
- If nothing is staged, ask before staging (`git add <files>`); do not stage automatically unless the user approves.

2) Gather context
- Run `bash scripts/collect_context.sh` to capture branch, issue key (from branch), staged files, and staged diff. If it exits because nothing is staged, stage the intended files first.
- If the script is unavailable, collect manually: branch (`git rev-parse --abbrev-ref HEAD`), issue key (`echo "$branch" | grep -oE '[A-Za-z]+-[0-9]+' | head -n1`), staged files (`git diff --cached --name-status`), and staged diff (`git diff --cached`).

3) Generate the message
- Drop the collected context into `references/prompt.md`.
- Keep the subject ≤ 72 chars, emoji-first, imperative; include the issue key when present.
- Add bullets only when they add clarity; keep them short.

4) Present and act
- Show the proposed commit message.
- Only commit if the user asks (`git commit -m "message"` or `git commit -e -m "message"`); default is to return the message.

## Resources
- `scripts/collect_context.sh`: emits branch, issue key, staged files, and diff; exits non-zero when nothing is staged.
- `references/prompt.md`: ready-to-use prompt with emoji guide and sample formatting.

## Packaging (for distribution)
- Validate: `python /Users/vicc/.codex/skills/.system/skill-creator/scripts/quick_validate.py skills/public/smart-commit`
- Package: `python /Users/vicc/.codex/skills/.system/skill-creator/scripts/package_skill.py skills/public/smart-commit ./dist`
