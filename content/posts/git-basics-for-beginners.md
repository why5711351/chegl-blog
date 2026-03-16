---
title: "Git Basics for Beginners: Version Control Made Simple (2026)"
description: "Learn Git fundamentals: install, configure, commit, branch, merge, and collaborate on GitHub. Complete beginner's guide."
date: 2026-03-16T12:00:00+08:00
draft: false
tags: ["Git", "Version Control", "GitHub", "Beginner"]
categories: ["Development Tools", "Tutorials"]
author: "TechTutorials Team"
---

# Git Basics for Beginners: Version Control Made Simple (2026)

Git is the most popular version control system used by developers worldwide. Whether you're coding solo or collaborating with a team, Git is an essential skill. This guide covers everything you need to get started.

## What is Git?

Git is a distributed version control system that tracks changes in your code over time. Think of it as a "save system" for your projects that lets you:

- Track every change you make
- Revert to previous versions if something breaks
- Collaborate with others without conflicts
- Experiment with new features safely

## Git vs GitHub

- **Git**: The version control software (runs locally)
- **GitHub**: A cloud platform for hosting Git repositories (and collaboration)

Other Git hosting platforms: GitLab, Bitbucket

## Installing Git

### Windows

1. Download from [git-scm.com](https://git-scm.com/download/win)
2. Run the installer
3. Use default settings
4. Verify: Open Git Bash and type `git --version`

### Mac

```bash
# Using Homebrew
brew install git

# Or install Xcode Command Line Tools
xcode-select --install
```

### Linux

```bash
# Ubuntu/Debian
sudo apt update
sudo apt install git

# Fedora
sudo dnf install git
```

### Verify Installation

```bash
git --version
# Output: git version 2.43.0 (or similar)
```

## Initial Setup

Configure your identity (required for commits):

```bash
# Set your name
git config --global user.name "Your Name"

# Set your email
git config --global user.email "your.email@example.com"

# Verify configuration
git config --list
```

## Basic Git Workflow

### 1. Create a Repository

```bash
# Create a new folder
mkdir my-project
cd my-project

# Initialize Git repository
git init

# You'll see: Initialized empty Git repository in ...
```

### 2. Check Status

```bash
git status
```

This shows:
- Which files are tracked
- Which files have changes
- Current branch

### 3. Create and Stage Files

```bash
# Create a file
echo "# My Project" > README.md

# Check status
git status
# You'll see README.md as "untracked"

# Stage the file (prepare for commit)
git add README.md

# Or stage all files
git add .

# Check status again
git status
# Now README.md is "staged"
```

### 4. Commit Changes

```bash
# Commit staged changes
git commit -m "Initial commit: Add README"

# The -m flag adds a commit message
```

### 5. View History

```bash
# Show commit history
git log

# Compact view
git log --oneline
```

## Essential Git Commands

### Viewing Changes

```bash
# See what changed (before staging)
git diff

# See staged changes
git diff --staged

# View file history
git log --follow filename.txt
```

### Undoing Changes

```bash
# Unstage a file (keep changes)
git reset HEAD filename.txt

# Discard changes in working directory
git checkout -- filename.txt
# Or in newer Git:
git restore filename.txt

# Undo last commit (keep changes)
git reset --soft HEAD~1

# Undo last commit (discard changes)
git reset --hard HEAD~1
```

### Working with Branches

Branches let you work on features independently:

```bash
# Create a new branch
git branch feature-branch

# Switch to branch
git checkout feature-branch
# Or in newer Git:
git switch feature-branch

# Create and switch in one command
git checkout -b new-feature
# Or:
git switch -c new-feature

# List all branches
git branch
# Current branch marked with *

# Switch back to main
git checkout main
# Or:
git switch main

# Merge branch into current
git merge feature-branch

# Delete a branch
git branch -d feature-branch
```

## Working with Remote Repositories (GitHub)

### Clone a Repository

```bash
# Clone from GitHub
git clone https://github.com/username/repository.git

# Clone to specific folder
git clone https://github.com/username/repository.git my-folder
```

### Connect Local to Remote

```bash
# Add remote (usually named 'origin')
git remote add origin https://github.com/username/repository.git

# Verify
git remote -v
```

### Push Changes

```bash
# Push to remote
git push origin main

# First push (set upstream)
git push -u origin main

# Push a branch
git push origin feature-branch
```

### Pull Changes

```bash
# Pull and merge
git pull origin main

# Pull and rebase (cleaner history)
git pull --rebase origin main
```

## Common Workflows

### Starting a New Project

```bash
# Create project folder
mkdir my-project
cd my-project

# Initialize Git
git init

# Create initial files
echo "# My Project" > README.md
echo "venv/" > .gitignore

# First commit
git add .
git commit -m "Initial commit"

# Create GitHub repo, then connect
git remote add origin https://github.com/username/my-project.git
git push -u origin main
```

### Contributing to Existing Project

```bash
# Clone the repository
git clone https://github.com/username/project.git
cd project

# Create a feature branch
git checkout -b my-feature

# Make changes and commit
git add .
git commit -m "Add new feature"

# Push branch
git push origin my-feature

# Create Pull Request on GitHub
```

### Daily Workflow

```bash
# Start of day: Get latest changes
git pull origin main

# Create branch for new work
git checkout -b feature-xyz

# Work, stage, commit
git add .
git commit -m "Implement feature xyz"

# Push branch
git push origin feature-xyz

# Create Pull Request on GitHub
```

## .gitignore File

A `.gitignore` file tells Git which files to ignore:

```bash
# Create .gitignore
touch .gitignore

# Common entries
echo "node_modules/" >> .gitignore
echo "*.log" >> .gitignore
echo ".env" >> .gitignore
echo "__pycache__/" >> .gitignore
echo "*.pyc" >> .gitignore
echo ".DS_Store" >> .gitignore
```

Popular `.gitignore` templates: [github.com/github/gitignore](https://github.com/github/gitignore)

## Resolving Merge Conflicts

When Git can't automatically merge changes:

1. Git will mark the conflict in files:
```
<<<<<<< HEAD
Your changes
=======
Their changes
>>>>>>> branch-name
```

2. Edit the file to resolve:
```python
# Choose one version or combine
final_code = "combined solution"
```

3. Stage and commit:
```bash
git add conflicted-file.txt
git commit -m "Resolve merge conflict"
```

## Git Best Practices

1. **Commit often** - Small, focused commits
2. **Write clear messages** - Explain what and why
3. **Use branches** - One branch per feature/fix
4. **Pull before pushing** - Avoid conflicts
5. **Review before committing** - `git diff --staged`
6. **Don't commit sensitive data** - Use .gitignore

### Good Commit Messages

```
# Bad
git commit -m "fix"
git commit -m "update"

# Good
git commit -m "Fix login bug: Handle null user input"
git commit -m "Add user profile page with avatar upload"
```

## Advanced Commands (Bonus)

```bash
# Stash changes (save for later)
git stash
git stash pop

# See who changed what
git blame filename.txt

# Search commit history
git log --grep="bug fix"

# Create a tag (for releases)
git tag v1.0.0
git push origin v1.0.0
```

## Conclusion

You now know Git fundamentals! Practice these commands regularly, and they'll become second nature. Start with personal projects, then collaborate on GitHub.

---

**Related Tutorials:**
- [GitHub for Beginners](/posts/github-beginners-guide)
- [Git Branching Strategies](/posts/git-branching-strategies)
- [How to Resolve Git Conflicts](/posts/resolve-git-conflicts)

**Questions?** [Contact us](/pages/contact)!
