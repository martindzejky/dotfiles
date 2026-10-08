# Agent instructions

Read `README.md` first for information about the repository.

## Code and verification

This is a personal dotfiles repository, not an app.
Write simple, minimal changes.
Prefer existing patterns in each tool's config.
Do not add unrequested features or tools.
After you finish, sanity-check what you changed (syntax where relevant, and that symlinks / paths in `install.conf.yaml` still make sense).

## Installation

Local setup is via `./install` (dotbot). Do **not** run the full install in cloud, it assumes macOS / Homebrew.
Prefer editing configs and verifying by inspection.

## Cursor Cloud specific instructions

The Cloud Agent image provides Node.js 24, pnpm 11.21, fish 3.7, Neovim 0.9, vim-plug, and Starship 1.26. `~/.config/nvim` points at `vim/`, and the dotbot submodules are checked out. `./install` is not run.

- Leave the fish config unlinked. `fish/config/brew.fish` calls `/opt/homebrew/bin/brew`.
- `git/gitconfig-system-specific` is gitignored and is not in the repo.
- Codeberg blocks cloud IPs, so `leap.nvim` stays uninstalled. Neovim still loads the rest of `vim/`.
- Global rules and skills come from `~/.agentfiles` on `master`. Each session pulls that checkout and reruns its `./install`. `/.cursor` points at `~/.cursor`. Do not add hooks.
- Check edits with `fish -n` on the changed `*.fish` files, `TERM=xterm-256color STARSHIP_CONFIG=fish/starship.toml starship prompt`, and `nvim --headless`.
