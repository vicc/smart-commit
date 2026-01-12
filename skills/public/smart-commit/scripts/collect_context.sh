#!/usr/bin/env bash
set -euo pipefail

# Collect git context for smart-commit. Fails fast if there are no staged changes.

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "Not inside a git repository." >&2
  exit 1
fi

branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null || echo "")
issue_key=$(echo "$branch" | grep -oE '[A-Za-z]+-[0-9]+' | head -n1 || true)

status=$(git status -sb || true)
staged_files=$(git diff --cached --name-status || true)

if [[ -z "$staged_files" ]]; then
  echo "No staged changes found. Stage files, then re-run this script." >&2
  exit 1
fi

staged_diff=$(git diff --cached || true)

cat <<EOF
BRANCH: $branch
ISSUE_KEY: $issue_key
STATUS:
$status

STAGED_FILES:
$staged_files

STAGED_DIFF:
$staged_diff
EOF
