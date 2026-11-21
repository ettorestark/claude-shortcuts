# claude-shortcuts

Shell shortcuts for launching [Claude Code](https://claude.com/claude-code) with a specific model.

| Command | Model  |
|---------|--------|
| `cco`   | Opus   |
| `ccs`   | Sonnet |
| `cch`   | Haiku  |

Usage: `cco [name] [extra claude flags...]`

```sh
cco                    # claude --model opus
ccs my-session         # claude --model sonnet --name my-session
cch --resume           # claude --model haiku --resume
```

If the first argument doesn't start with `-`, it is used as the session name. Everything else is passed straight to `claude`.

## Install

Clone the repo somewhere permanent, since the install steps below point at it:

```sh
git clone <repo-url> ~/dev/claude-shortcuts
cd ~/dev/claude-shortcuts
```

### zsh

Add a line to `~/.zshrc` that sources the file:

```sh
echo "source $PWD/claude.zsh" >> ~/.zshrc
```

Then open a new shell, or run `source ~/.zshrc`.

### fish

Symlink the file into fish's `conf.d` directory, which fish loads on startup:

```fish
mkdir -p ~/.config/fish/conf.d
ln -sf $PWD/claude.fish ~/.config/fish/conf.d/claude.fish
```

Then open a new shell, or run `source ~/.config/fish/conf.d/claude.fish`.

## Verify

```sh
type cco ccs cch
```

## Uninstall

- **zsh:** remove the `source .../claude.zsh` line from `~/.zshrc`.
- **fish:** `rm ~/.config/fish/conf.d/claude.fish`
