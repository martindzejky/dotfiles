## SETTINGS

# editors, pagers
set -gx BROWSER open
set -gx EDITOR vim
set -gx PAGER less
set -gx MANPAGER $PAGER

# fish greeting
set -gx fish_greeting ""

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
alias a  atom
alias bo bower
alias bu bundler
alias d  docker
alias g  git
alias gu gulp
alias k  kubectl
alias kc 'set ARG (kubectl config get-contexts -o=name | fzf); if test -n $ARG; kubectl config use-context $ARG; end;'
alias ra rails
alias w  webpack
alias y  yarn

# PATH

# node/nvm
if test -d ~/.nvm
    set -gx NVM_DIR ~/.nvm
end

# yarn
if which yarn > /dev/null
    set -gx PATH $PATH (yarn global bin)
end

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

# NODE

set -gx NODE_OPTIONS "--max_old_space_size=4096"

