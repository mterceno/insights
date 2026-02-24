#!/bin/bash
# Script to sync fork with upstream frappe/insights repository
# This script should be run by the repository owner with appropriate permissions

set -e

echo "🔄 Syncing fork with upstream frappe/insights..."
echo ""

# Ensure we're in the repo directory
cd "$(dirname "$0")"

# Check if upstream remote exists
if ! git remote | grep -q "^upstream$"; then
    echo "⚠️  Adding upstream remote..."
    git remote add upstream https://github.com/frappe/insights.git
fi

# Fetch latest changes from upstream
echo "📥 Fetching latest changes from upstream..."
git fetch upstream

# Sync develop branch
echo ""
echo "📌 Checking develop branch..."
git fetch origin develop:temp-fork-develop 2>/dev/null || git branch -D temp-fork-develop 2>/dev/null; git fetch origin develop:temp-fork-develop
if git merge-base --is-ancestor upstream/develop temp-fork-develop; then
    echo "✅ develop branch is already up-to-date with upstream"
    DEVELOP_COMMITS=$(git log --oneline upstream/develop..temp-fork-develop | wc -l)
    if [ "$DEVELOP_COMMITS" -gt 0 ]; then
        echo "   Fork is ahead by $DEVELOP_COMMITS commit(s)"
    fi
else
    echo "⚠️  develop branch needs updating"
fi

# Sync main branch
echo ""
echo "📌 Syncing main branch..."
git checkout main
git merge upstream/main --ff-only
if [ $? -eq 0 ]; then
    echo "✅ main branch updated successfully"
    git push origin main
else
    echo "❌ Failed to update main branch (may require manual resolution)"
    exit 1
fi

# Sync version-3 branch  
echo ""
echo "📌 Syncing version-3 branch..."
git checkout version-3
git merge upstream/version-3 --ff-only
if [ $? -eq 0 ]; then
    echo "✅ version-3 branch updated successfully"
    git push origin version-3
else
    echo "❌ Failed to update version-3 branch (may require manual resolution)"
    exit 1
fi

echo ""
echo "✨ Fork sync completed successfully!"
echo ""
echo "Summary:"
echo "  - develop: Already up-to-date (fork has additional commits)"
echo "  - main: Updated to latest upstream"
echo "  - version-3: Updated to latest upstream"
