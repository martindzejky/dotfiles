## SETTINGS

# editors, pagers
set -gx BROWSER open
set -gx EDITOR vim
set -gx PAGER less
set -gx MANPAGER $PAGER

# fish greeting
set -gx fish_greeting ""

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
alias g  git
alias gu gulp
alias r  rails

# GEM

set -gx PATH $PATH ~/.gem/ruby/2.3.0/bin

