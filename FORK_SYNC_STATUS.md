# Fork Sync Status

This document provides information about the synchronization status of the `mterceno/insights` fork with the upstream `frappe/insights` repository.

## Sync Date
2026-02-24

## Branch Status

### `develop` Branch
- **Status**: ✅ Up to date with upstream
- **Fork is ahead by**: 1 commit
- **Unique commit**: `8363ab3` - "fix: remove unused before_request import from force_sync_tables.py"
- **Action taken**: No merge needed, fork is already current

### `main` Branch
- **Status**: ✅ Updated successfully
- **Commits behind upstream**: 9 commits (from v2.2.12 to v2.2.13)
- **Updated from**: `0692f3de` (v2.2.12)
- **Updated to**: `57d1d053` (v2.2.13)
- **Action taken**: Fast-forward merge completed
- **Key changes**:
  - Security fixes for public key validation
  - Permission checks enhancements
  - Role validation improvements
  - Chart data fetching security improvements

### `version-3` Branch
- **Status**: ✅ Updated successfully
- **Commits behind upstream**: 125 commits
- **Updated from**: `5acaea07`
- **Updated to**: `1805d56f` (v3.3.0)
- **Action taken**: Fast-forward merge completed
- **Key changes**:
  - Version bumped to v3.3.0
  - Added lint CI workflow
  - Added commit config
  - REST API connector support
  - Data warehouse improvements
  - New doctypes: InsightsSecretKey, InsightsTableImportJob
  - Multiple security and permission fixes
  - Frontend improvements and bug fixes
  - 121 files changed (3789 insertions, 3104 deletions)

## Prepared Branches

The following temporary branches have been prepared with the upstream changes:
- `temp-develop`: Contains fork's develop with all upstream changes (already up-to-date)
- `temp-main`: Contains upstream/main merged into origin/main
- `temp-version-3`: Contains upstream/version-3 merged into origin/version-3

## Next Steps

To complete the fork synchronization, the following branches need to be pushed:
```bash
# Push main branch update
git push origin temp-main:main

# Push version-3 branch update
git push origin temp-version-3:version-3

# develop branch is already up-to-date, no push needed
```

## Notes

1. The fork's `develop` branch contains a unique fix (`8363ab3`) that removes unused imports from `force_sync_tables.py`. This fix is not in upstream and may be worth contributing back via a pull request.

2. All merges were performed as fast-forward merges, meaning there were no conflicts and the fork's history remains clean.

3. The shallow clone was expanded to fetch 50 commits from upstream to enable proper merging.

## Verification Commands

To verify the sync status:
```bash
# Check develop branch
git log --oneline origin-develop..upstream/develop  # Should show nothing
git log --oneline upstream/develop..origin-develop  # Shows fork's unique commit

# Check main branch  
git log --oneline origin-main..temp-main  # Shows new commits from upstream

# Check version-3 branch
git log --oneline origin-version-3..temp-version-3  # Shows new commits from upstream
```
