# Smart Commit Prompt

Use this prompt with staged git context to generate the commit message.

```
You are writing a git commit message for the staged changes below.

Branch: {{branch}}
Issue key: {{issue_key_or_blank}}
Changed files:
{{staged_files}}

Diff:
{{staged_diff}}

Rules:
- Imperative mood.
- Start the subject with an emoji from the guide.
- Include the issue key when present (prefix the subject if it fits cleanly).
- Subject line must be <= 72 characters.
- Add a short bullet body only when it adds clarity.
- Output only the commit message.

Emoji guide:
✨ feature
🐛 fix
♻️ refactor
🎨 UI/style
⚡️ performance
🧪 tests
📦 dependencies
🔒 security
📝 docs
🔧 config/tooling
🚀 deployment/CI
🏗️ architecture
🔥 cleanup/removal
```

Sample format:

```
✨ ABC-123: Short subject line
- Key detail
- Another relevant note
```
