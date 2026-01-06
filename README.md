# Smart Commit

A simple command-line tool that writes clean, consistent Git commit messages for you. Designed to stay out of your way.

Smart Commit helps your Git history read clearly, every time.

## Quickstart

```bash
# Install
npm install -g smart-commit

# Run (first time walks you through setup)
git smart-commit
```

## Designed for developers who

- Care about readable commit history  
- Work with Linear or issue-based branches  
- Want commits that are predictable, fast, and boring in the best way  

No lock-in. No Git hooks. No ceremony.  
Just a better way to commit.

---

## How it works

Run:

```bash
git smart-commit
```

Smart Commit will:

- Stage your changes  
- Understand what changed  
- Write a clear commit message  
- Show it to you first  
- Let you confirm, edit, or walk away  

Nothing happens without your say-so.

Example:

```
✨ vicc-3: Move debug menu into HomeView

- Relocated debug entry point
- Removed legacy controller
```

---

## Features

- LLM-generated commit messages via `llm`
- Short, imperative subject lines
- Automatic issue keys from branch names
- Emoji prefixes for easy scanning
- Preview and confirmation by default
- A fast path when you’re ready to trust it

Safe when you want it. Fast when you need it.

---

## Requirements

- Git
- Bash (macOS or Linux)
- Python (for `llm` CLI tool - installed automatically on first run)

That's it! The first-run setup handles everything else.

---

## Installation

### Option 1: npm (Recommended)

```bash
npm install -g smart-commit
```

### Option 2: Homebrew

```bash
brew tap vicc/tap
brew install smart-commit
```

### Option 3: Manual

```bash
mkdir -p ~/bin
curl -o ~/bin/git-smart-commit https://raw.githubusercontent.com/vicc/smart-commit/main/bin/git-smart-commit
chmod +x ~/bin/git-smart-commit
export PATH="$HOME/bin:$PATH"
```

Or clone this repo and copy the script manually.

---

## Initial setup

The first time you run `git smart-commit`, it will walk you through a quick setup:

1. Install the `llm` CLI tool (automatic)
2. Choose your LLM provider (OpenAI or Anthropic)
3. Enter your API key
4. Select a model

That's it! The setup takes less than a minute.

### Change configuration later

To re-run the setup wizard:

```bash
git smart-commit --setup
```

Or configure manually:

```bash
llm keys set openai     # or claude
llm models default gpt-4o-mini
```

---

## Usage

Preview and confirm (default):

```bash
git smart-commit
```

Commit immediately:

```bash
git smart-commit -y
```

Edit before committing:

```bash
git smart-commit -e
```

Dry run only:

```bash
git smart-commit --dry-run
```

Re-run setup wizard:

```bash
git smart-commit --setup
```

---

## Commit style

Smart Commit follows a few simple rules:

- Imperative mood  
- Subject line under 72 characters  
- Emoji prefix for intent  
- Issue key included when available  

Emoji meanings:

- ✨ Feature  
- 🐛 Fix  
- ♻️ Refactor  
- 🎨 UI / Style  
- ⚡️ Performance  
- 🧪 Tests  
- 📦 Dependencies  
- 🔒 Security  
- 📝 Docs  
- 🔧 Config / Tooling  
- 🚀 Deployment / CI  
- 🏗️ Architecture  
- 🔥 Cleanup / Removal  

---

## Philosophy

Good commit history is kindness to Future You.

---

## License

MIT
