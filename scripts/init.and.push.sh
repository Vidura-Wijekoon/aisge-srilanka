#!/usr/bin/env bash
# -----------------------------------------------------------------------------
# init.and.push.sh - first-time push for AI Safety SGE Chapter Sri Lanka resources
#
# Pre-requisites:
#   1. Create the empty GitHub repo at https://github.com/new
#      Owner: Vidura-Wijekoon
#      Name:  aisge-srilanka
#      Visibility: Public
#      LEAVE README / .gitignore / License all OFF (we ship them locally)
#
#   2. Have `git` installed and authenticated
#      (gh auth login, SSH key, or credential helper)
#
# Usage:
#   bash scripts/init.and.push.sh
# -----------------------------------------------------------------------------
set -euo pipefail

REMOTE_URL="https://github.com/Vidura-Wijekoon/aisge-srilanka.git"
DEFAULT_BRANCH="main"
COMMIT_MSG="Initial chapter resources structure"

# Run from repo root, regardless of where the script is invoked from
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
cd "$REPO_ROOT"

echo "→ Working directory: $REPO_ROOT"

if ! command -v git >/dev/null 2>&1; then
  echo "✗ git is not installed or not on PATH" >&2
  exit 1
fi

if [ -d ".git" ]; then
  echo "✓ git already initialised"
else
  echo "→ git init"
  git init
fi

echo "→ git add ."
git add .

if git diff --cached --quiet; then
  echo "✓ Nothing to commit (working tree clean)"
else
  echo "→ git commit"
  git commit -m "$COMMIT_MSG"
fi

echo "→ git branch -M $DEFAULT_BRANCH"
git branch -M "$DEFAULT_BRANCH"

if git remote get-url origin >/dev/null 2>&1; then
  current="$(git remote get-url origin)"
  if [ "$current" != "$REMOTE_URL" ]; then
    echo "✗ remote 'origin' already set to: $current"
    echo "  Expected: $REMOTE_URL"
    echo "  Run: git remote set-url origin $REMOTE_URL"
    exit 1
  fi
  echo "✓ remote 'origin' already set"
else
  echo "→ git remote add origin $REMOTE_URL"
  git remote add origin "$REMOTE_URL"
fi

echo "→ git push -u origin $DEFAULT_BRANCH"
git push -u origin "$DEFAULT_BRANCH"

echo ""
echo "✅ Pushed. Repo is live at: https://github.com/Vidura-Wijekoon/aisge-srilanka"
