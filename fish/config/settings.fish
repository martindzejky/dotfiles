# SETTINGS
# configuring base variables

# editors, pagers
set -gx BROWSER open
set -gx EDITOR nvim
set -gx PAGER less
set -gx MANPAGER $PAGER

# fish greeting
set -g fish_greeting ""

# prompt colors
# https://github.com/rafaelrinaldi/pure
set -g pure_color_success blue
set -g pure_color_mute normal

# locale
set -gx LC_ALL en_US.UTF-8
set -gx LANG en_US.UTF-8

# gpg tty
set -gx GPG_TTY (tty)

# go modules
set -gx GOPRIVATE gitlab.exponea.com

