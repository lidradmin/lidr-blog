# Writing posts with Claude Code (technical users)

This route is for people comfortable with a terminal. Everyone else should use the editor at https://lidr.io/admin/.

## Prerequisites

- **Node 22**: install from https://nodejs.org
- **Git**: install the Xcode Command Line Tools with `xcode-select --install`
- **GitHub CLI**: `brew install gh`, then `gh auth login`
- **Git identity**, using the email address on your GitHub account:
  ```bash
  git config --global user.name "Your Name"
  git config --global user.email "you@example.com"
  ```

## Install the skill

```bash
mkdir -p ~/.claude/skills/new-blog-post && curl -fsSL https://raw.githubusercontent.com/lidradmin/lidr.io/main/docs/claude-code/new-blog-post/SKILL.md -o ~/.claude/skills/new-blog-post/SKILL.md
```

## Use it

1. Clone this repo: `gh repo clone lidradmin/lidr-blog`
2. Run Claude Code inside the cloned folder.
3. Type `/new-blog-post` and say what the post is about.
