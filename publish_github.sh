#!/usr/bin/env bash
# ==============================================================================
# NeuroEpoch GitHub Publish Pipeline
# Authenticates and publishes repository to https://github.com/diyapatlolla/NeuroEpoch
# ==============================================================================

set -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$DIR"

export PATH="$HOME/.local/bin:$PATH"

echo "============================================================"
echo "    NeuroEpoch | GitHub Repository Publish Pipeline"
echo "============================================================"

# Ensure git repo is initialized locally
if [ ! -d ".git" ]; then
  echo "[-] Initializing local git repository..."
  git init -b main
  git add .
  git commit -m "Initial release of NeuroEpoch: Clinical AASM Sleep Staging & Quality Assurance Platform"
else
  echo "[-] Checking git status..."
  git add .
  if ! git diff-index --quiet HEAD --; then
    git commit -m "Update NeuroEpoch platform features and clinical documentation"
  fi
fi

# Check if gh CLI is authenticated
echo "[-] Checking GitHub CLI authentication..."
if ! gh auth status >/dev/null 2>&1; then
  echo ""
  echo "[!] You are not currently authenticated with GitHub."
  echo "[*] Launching GitHub browser login (select GitHub.com -> HTTPS -> Login with a web browser)..."
  gh auth login -w -p https
fi

GH_USER=$(gh api user -q .login 2>/dev/null || echo "diyapatlolla")
REPO_NAME="NeuroEpoch"

echo "[+] Authenticated as GitHub user: $GH_USER"

# Check if repo already exists on remote
echo "[-] Checking if repository $GH_USER/$REPO_NAME exists on GitHub..."
if gh repo view "$GH_USER/$REPO_NAME" >/dev/null 2>&1; then
  echo "[+] Repository $GH_USER/$REPO_NAME already exists. Pushing main branch..."
  git push -u origin main
else
  echo "[+] Repository does not exist yet. Creating $GH_USER/$REPO_NAME and pushing..."
  gh repo create "$REPO_NAME" --public --source=. --remote=origin --push \
    --description "NeuroEpoch | Interactive AASM 30-Second Polysomnography Sleep Staging, Digital Caliper & Inter-Scorer Reliability Quality Assurance Lab"
fi

echo ""
echo "[-] Enabling GitHub Pages on main branch..."
gh api -X POST "repos/$GH_USER/$REPO_NAME/pages" -F "source[branch]=main" -F "source[path]=/" >/dev/null 2>&1 || true

echo ""
echo "============================================================"
echo "[+] SUCCESS! Your code is live on GitHub:"
echo "    Repository: https://github.com/$GH_USER/$REPO_NAME"
echo "    Live Web:   https://$GH_USER.github.io/$REPO_NAME/"
echo "============================================================"
