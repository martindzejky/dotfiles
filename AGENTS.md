# Agent instructions

Read `README.md` first.

## Code and verification

This is a personal dotfiles repository, not an app.
Write small, simple changes.
Use the patterns already in each tool's config.
Do not add features or tools that were not asked for.
After you finish, check syntax on the files you changed, and check that symlinks and paths in `install.conf.yaml` still make sense.

## Installation

Local setup is `./install` (dotbot). Do not run the full install in the cloud. It assumes macOS and Homebrew.
Edit configs and confirm the result by reading them.

## Cloud

The cloud environment provides Node.js 24, pnpm 11.21, fish 3.7, Neovim 0.9, vim-plug, and Starship 1.26. `~/.config/nvim` points at `vim/`, and the dotbot submodules are checked out. `./install` is not run.

- Leave the fish config unlinked. `fish/config/brew.fish` calls `/opt/homebrew/bin/brew`.
- `git/gitconfig-system-specific` is gitignored and is not in the repo.
- Codeberg blocks cloud IPs, so `leap.nvim` stays uninstalled. Neovim still loads the rest of `vim/`.
- Global rules and skills come from `~/.agentfiles` on `master`. Each session pulls that checkout and reruns its `./install`. Read `~/.agentfiles/AGENTS.md` for the paths each agent uses. Do not add hooks.
- Check edits with `fish -n` on the changed `*.fish` files, `TERM=xterm-256color STARSHIP_CONFIG=fish/starship.toml starship prompt`, and `nvim --headless`.
