#!/usr/bin/env sh

# source: https://github.com/junegunn/vim-plug?tab=readme-ov-file#neovim

set -eu

autoload_dir="${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/autoload"
plug_path="$autoload_dir/plug.vim"

mkdir -p "$autoload_dir"

curl -fLo "$plug_path" --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
