## SETTINGS

# editors, pagers
set -gx BROWSER open
set -gx EDITOR vim
set -gx PAGER less
set -gx MANPAGER $PAGER

# fish greeting
set -g fish_greeting ""

# fisher
set -g fisher_path ~/.config/fisher-packages
set -g fish_function_path $fisher_path/functions $fish_function_path
set -g fish_complete_path $fisher_path/completions $fish_complete_path

for file in $fisher_path/conf.d/*.fish
    builtin source $file 2> /dev/null
end

# pure prompt
set -g pure_color_success blue

## LOCALE

set -gx LC_ALL en_US.UTF-8
set -gx LANG en_US.UTF-8

## ALIASES

# navigation
alias ..   "cd .."
alias ...  "cd ../.."
alias .... "cd ../../.."

# ls
alias l   "ls -F"
alias la  "ls -AF"
alias ll  "ls -lF"
alias lla "ls -AlF"
alias lal lla

# apps
alias d  docker
alias g  git
alias gu gulp
alias k  kubectl
alias kc 'set ARG (kubectl config get-contexts -o=name | fzf); if test -n $ARG; kubectl config use-context $ARG; end;'
alias y  yarn

# PATH

# zoxide
if which zoxide > /dev/null
    # initialize zoxide
    zoxide init fish | source

    # migrate .z database if present
    if test -e ~/.z
        echo "migrating z database to zoxide"
        zoxide migrate --merge ~/.z
        rm -r ~/.z
    end
end

# n - node version manager
set -gx N_PREFIX ~/.n
set -gx PATH $N_PREFIX/bin $PATH 

# android
set -gx JAVA_HOME (/usr/libexec/java_home)
set -gx ANDROID_HOME /usr/local/share/android-sdk
set -gx ANDROID_SDK_ROOT /usr/local/share/android-sdk

if test -d $ANDROID_HOME/platform-tools
    set -gx PATH $PATH "$ANDROID_HOME/platform-tools"
end

# pip
if test -d ~/.local/bin
    set -gx PATH $PATH ~/.local/bin
end

# postgres
if test -d /Applications/Postgres.app/Contents/Versions/latest/bin/
    set -gx PATH /Applications/Postgres.app/Contents/Versions/latest/bin/ $PATH
end

# my own scripts
if test -d ~/.dotfiles/scripts/bin
    set -gx PATH ~/.dotfiles/scripts/bin $PATH
end

# gettext for spacemacs
# https://github.com/bbatsov/projectile/issues/1302
if test -d /usr/local/opt/gettext/bin
    set -gx PATH /usr/local/opt/gettext/bin $PATH
end

# CUSTOMIZATIONS

# increase node RAM limits... you know, it's node
set -gx NODE_OPTIONS "--max_old_space_size=4096"

# set fzf to use the fd command by default
set -gx FZF_DEFAULT_COMMAND "fd --type f"

# AUTOMATION

# set up light/dark mode in iTerm
if is-os-dark-mode
    toggle-dark-mode
end
