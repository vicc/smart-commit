# Introducing Smart Commit ✨

**CLI-first AI commit messages. Git stays in the terminal.**  

Smart Commit uses AI to write clean, consistent, and professional commit messages so you can stay in flow. 🌊

<img width="940" height="445" alt="Screenshot 2026-01-06 at 3 07 22 PM" src="https://github.com/user-attachments/assets/c0be2e94-6701-49d8-b193-08f2ef298c8c" />

<p align="center">
  <a href="https://www.npmjs.com/package/@viccalexander/smart-commit">
    <img src="https://img.shields.io/npm/v/@viccalexander/smart-commit?color=brightgreen" alt="npm version" />
  </a>
  <a href="https://opensource.org/licenses/MIT">
    <img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="MIT License" />
  </a>
</p>

---

### 🧩 Install the Codex Skill

```bash
git clone https://github.com/vicc/smart-commit.git
cd smart-commit
codex
```

Once the Codex CLI launches:

1. 🛠️ Type `skill-installer`  
2. 🌐 When prompted to allow network access to fetch the skill, reply **yes**  
3. 🔄 Exit and relaunch Codex

That’s it. You can now use `/smart-commit` inside Codex whenever you need it.

<img width="1410" height="841" alt="Smart Commit Codex Skill in action" src="https://github.com/user-attachments/assets/3e73ada2-3e23-4eb2-81c3-02a0c7765d10" />

### ▶️ Using the Codex Skill

Once Codex is running, simply type:

```
smart-commit
```

and you’re good to go.

Alternatively, you can browse installed skills:

1. 🧭 Type `./skills`  
2. ⏎ Press Enter  
3. 🛠 Select **smart-commit** from the list

> 💡 **Tip:**  
> If Codex detects unstaged changes, you can run `git add .` manually or let Codex stage files for you as part of the smart-commit flow.

---

## 🚀 Quickstart

Get up and running in seconds. No complex configuration required.

```bash
# 1. Install globally
npm install -g @viccalexander/smart-commit

# 2. Run it (first time walks you through setup)
git smart-commit
```

<img width="1008" height="607" alt="Screenshot 2026-01-06 at 2 09 51 PM" src="https://github.com/user-attachments/assets/46a29e5b-e68e-4632-8e58-f90ea24ad725" />

---

## ⚡️ Why Smart Commit?

Whether you are vibe coding a side project or shipping production systems, Smart Commit keeps your Git history clean across iOS, frontend, backend, and everything in between.

It works just as well for Swift, JavaScript, Python, Go, Rails, infra repos, or monorepos 🫠.

* **🧠 Context-Aware:** Understands your changes using LLMs.
* **🏷️ Auto-Tagging:** Grabs Linear/Jira issue keys from your branch names automatically.
* **🎨 Scannable:** Prepends emojis for a visual, readable history.
* **🛠️ Zero Ceremony:** No pre-commit hooks or "standard-version" headaches.

---

## 🛠 How It Works

Smart Commit acts as a smart wrapper around your staging and committing process:

1. **Scans** your staged changes (or helps you stage them).
2. **Uses** the branch name and staged file paths/change types in the standalone CLI, or the full staged diff as additional context in the Codex skill.
3. **Drafts** a perfect commit message with an emoji and issue key.
4. **Asks** for your vibe check—approve, edit, or cancel.

> **The Result:**
> ✨ PROJ-123: Add intelligent retry logic to API client
> - Implemented exponential backoff
> - Added circuit breaker pattern

---

## 💫 Features

### 🔧 Multi-Provider Support
- **OpenAI** - GPT-5, GPT-4 models
- **Anthropic** - Claude 4.5 (Sonnet, Opus, Haiku)
- **Google** - Gemini 3 Flash/Pro
- **Ollama** - Local models (Llama, Mistral, CodeLlama, etc.)
- **Custom models** - Easy model switching

### 🎯 Issue Tracking Integration
- **Auto-detects issue keys** from branch names (e.g., `vicc-123`)
- **Linear-friendly** - Works with Linear's branch naming
- **Any issue tracker** - Supports any `prefix-number` format

### 🛡️ Safe & Flexible
- **Preview first** - See the message before committing
- **Edit mode** - Tweak messages before committing (`-e` flag)
- **Auto-commit** - Fast path when you trust it (`-y` flag)
- **Dry run** - Test without committing (`--dry-run`)

### ⚡️ Easy Setup & Management
- **Interactive wizard** - One-time setup, auto-installs dependencies
- **Multiple commands** - `git smart-commit` or `smart-commit`
- **Built-in help** - `--help` flag for documentation
- **Easy uninstall** - `--uninstall` with smart detection
---

## 📦 Installation Options

| Method | Command |
| :--- | :--- |
| **npm (Best)** | `npm install -g @viccalexander/smart-commit` |
| **Homebrew** | `brew tap vicc/tap && brew install smart-commit` |
| **Manual** | `curl -o ~/bin/git-smart-commit https://raw.githubusercontent.com/vicc/smart-commit/main/bin/git-smart-commit` |

---

## ⚙️ Initial Setup

The first time you run `git smart-commit`, a friendly wizard will help you:

1. Set up the `llm` CLI tool (automatic).
2. Connect **OpenAI** or **Anthropic**.
3. Enter your API key.
4. Select a model (e.g., `gpt-4o-mini` or `claude-3-haiku`).

**Need to change something later?**

```bash
smart-commit --setup
```

---

## 🎮 Usage Guide

| Command | Action |
| :--- | :--- |
| `git smart-commit` | **The Standard:** Preview, then confirm. |
| `git smart-commit -y` | **The Speedrun:** Commit immediately without asking. |
| `git smart-commit -e` | **The Perfectionist:** Open in editor before saving. |
| `git smart-commit --dry-run` | **The Lurker:** See the message without committing. |

---

## 🎨 The Emoji Guide

We follow a consistent style to make your git log look like a work of art:

* ✨ **Feature:** New functionality
* 🐛 **Fix:** Squashing bugs
* ♻️ **Refactor:** Code improvements (non-breaking)
* 🎨 **UI:** Changes to the look and feel
* 🔥 **Cleanup:** Removing code or files
* ⚡️ **Perf:** Improving performance
* 📝 **Docs:** Documentation changes

---

## 🤝 Contributing

Got an idea to make it even better? Feel free to open an issue or submit a PR!

**Philosophy:** Good commit history is a love letter to *future you* or rather less of a FU to future you. 💌

---

## FAQ

### How much does it cost?

Smart Commit itself is free and open source. You'll need an API key for cloud LLM providers:
- **OpenAI** - Pay-per-use (GPT-4o-mini is ~$0.01 per commit)
- **Anthropic** - Pay-per-use (similar pricing)
- **Google** - Pay-per-use (Gemini has free tier)
- **Ollama** - Completely free (runs locally)

### Is my code sent to an LLM?

It depends on which workflow you use:

- **Standalone CLI (`git smart-commit` / `smart-commit`):** Passes the branch name, any issue key extracted from it, and staged file paths and change types from `git diff --cached --name-status` to the configured `llm` model. This message-generation path does not pass the full diff or file contents. The staged file list looks like:

```
M    src/components/Button.tsx
A    src/utils/helpers.ts
```

- **Codex skill:** Collects the branch name, extracted issue key, repository status, staged file paths/change types, and the full staged diff (`git diff --cached`) as model context. That diff can include source code and any secrets present in those changes.

### Can I use this with private repositories?

You can use either workflow with private repositories, but repository privacy does not prevent model context from reaching the configured provider. Branch names and file paths can reveal sensitive project, customer, or issue details; diff content can expose proprietary code or secrets. Review the context and your provider's data-handling policies before use. For the standalone CLI, a locally hosted Ollama model can keep model processing local; the Codex skill uses your Codex configuration.

### How do I switch LLM providers?

Run the setup wizard again:
```bash
smart-commit --setup
```

Or manually:
```bash
llm keys set openai          # Switch provider
llm models default gpt-4o    # Change model
```

### Can I customize the commit message format?

Currently, the format is fixed (emoji + subject + optional bullets). You can:
- Use `-e` flag to edit messages before committing
- Use `--dry-run` to preview and copy messages
- Change models for different writing styles

### Does this work with conventional commits?

The emoji-based format is different from conventional commits (feat:, fix:, etc.). The emojis serve a similar purpose but are more visual. You can manually edit messages to conventional commit format using `-e`.

### What happens if the LLM is down or slow?

- **OpenAI/Anthropic/Gemini down**: The commit fails with an error. Fix connectivity or switch to Ollama.
- **Slow API**: The tool waits for a response (usually 2-5 seconds). Use `-y` flag to speed up workflow once you trust the output.
- **Offline**: Use Ollama with local models - works completely offline.

### Can I use this in CI/CD?

Not recommended. Smart Commit is designed for interactive use with preview/confirmation. For CI/CD, write commit messages in your scripts.

### How do I update to the latest version?

**npm:**
```bash
npm update -g @viccalexander/smart-commit
```

**Homebrew:**
```bash
brew update
brew upgrade smart-commit
```

### Where is my API key stored?

API keys are stored by the `llm` tool in `~/.config/llm/keys.json`. They're never sent anywhere except to your chosen LLM provider.

### Can I use multiple API keys?

The `llm` tool supports one key per provider. To switch between accounts, run `llm keys set <provider>` to overwrite the stored key.

### What if I want to commit without an LLM?

Just use regular git commands:
```bash
git add .
git commit -m "Your message"
```

Smart Commit is optional - it doesn't replace or modify git's behavior.

---

## 📝 License

MIT © Vicc Alexander 2026
