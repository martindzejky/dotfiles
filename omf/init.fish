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
alias ra rails

# GEMS

if test -d ~/.gem/ruby/2.3.0/bin
  set -gx PATH $PATH ~/.gem/ruby/2.3.0/bin
end

