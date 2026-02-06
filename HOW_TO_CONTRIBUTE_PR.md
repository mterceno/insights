# How to Contribute Your PR #2 to the Original frappe/insights Repository

Your PR #2 "fix: prevent cleanup of non-existing Insights Folder" is currently in your fork `mterceno/insights`. To submit it to the original repository `frappe/insights`, follow these steps:

## Method 1: Via GitHub Web Interface (Recommended)

### Step 1: Access Your PR
Visit: https://github.com/mterceno/insights/pull/2

### Step 2: Create a PR to the Upstream Repository
1. On your PR #2 page, GitHub should display a message offering to create a Pull Request to the parent repository (frappe/insights)
2. Click the "**Compare across forks**" or "**Compare & pull request**" button
3. Configure the Pull Request:
   - **Base repository**: `frappe/insights`
   - **Base branch**: `develop` (or the main branch of frappe/insights)
   - **Head repository**: `mterceno/insights`
   - **Compare branch**: `fix-on-delete-workbook-with-folders-v2`

### Step 3: Submit the Pull Request
1. Ensure the title and description are clear:
   - **Title**: "fix: prevent cleanup of non-existing Insights Folder"
   - **Description**: Explain the problem and your solution
2. Click "**Create pull request**"
3. Your PR will now be visible at https://github.com/frappe/insights/pulls

## Method 2: Via Command Line

### Option A: Using GitHub CLI (gh)

```bash
# 1. Install GitHub CLI if needed
# https://cli.github.com/

# 2. Authenticate
gh auth login

# 3. Create a PR to the upstream repository
gh pr create --repo frappe/insights \
  --title "fix: prevent cleanup of non-existing Insights Folder" \
  --body "When deleting multiple workbooks simultaneously, the system sometimes crashes during the deletion of a folder that no longer exists. This fix prevents the 'Folder not found' error." \
  --head mterceno:fix-on-delete-workbook-with-folders-v2 \
  --base develop
```

### Option B: Via GitHub Web Interface (Direct URL)

1. **Navigate to the upstream repository**: https://github.com/frappe/insights
2. Click on the "**Pull requests**" tab
3. Click "**New pull request**"
4. Click "**compare across forks**"
5. Select:
   - Base repository: `frappe/insights` base: `develop`
   - Head repository: `mterceno/insights` compare: `fix-on-delete-workbook-with-folders-v2`
6. Click "**Create pull request**"
7. Fill in the details and submit

## Information About Your PR #2

- **Title**: fix: prevent cleanup of non-existing Insights Folder
- **Source Branch**: `mterceno:fix-on-delete-workbook-with-folders-v2`
- **Changes**:
  - 2 files changed
  - 5 additions
  - 0 deletions
- **Description**: Fixes a "Folder not found" error when deleting multiple workbooks simultaneously

## Pre-Submission Checklist

- [ ] Ensure your branch is up-to-date with frappe/insights's `develop` branch
- [ ] Verify that all tests pass in your fork
- [ ] Ensure your code follows the project's conventions
- [ ] Document changes if necessary
- [ ] Link relevant issues in the PR description

## Sync Your Fork with Upstream (Optional but Recommended)

Before creating the PR, it's good practice to sync your fork with the upstream repository:

```bash
# Add the upstream repository as a remote (one-time setup)
git remote add upstream https://github.com/frappe/insights.git

# Fetch the latest changes
git fetch upstream

# Update your develop branch
git checkout develop
git merge upstream/develop
git push origin develop

# Rebase your feature branch (optional)
git checkout fix-on-delete-workbook-with-folders-v2
git rebase develop
git push --force-with-lease origin fix-on-delete-workbook-with-folders-v2
```

## After Submission

1. The frappe/insights maintainers will review your PR
2. They may request changes - be prepared to respond
3. Once approved, your PR will be merged into the main repository
4. You can track progress at: https://github.com/frappe/insights/pulls

## Useful Resources

- GitHub Contributing Guide: https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request-from-a-fork
- frappe/insights Documentation: https://github.com/frappe/insights
- Your PR in the fork: https://github.com/mterceno/insights/pull/2

## Need Help?

If you encounter difficulties:
1. Check the contribution documentation of the frappe/insights project (if a CONTRIBUTING.md file exists)
2. Ask for help on Frappe community forums
3. Contact maintainers via GitHub Issues or Discussions
