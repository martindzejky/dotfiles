#
# my bash aliases
#

# navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~"
alias -- -="cd -"

# ls
alias l="ls -CFh"
alias la="l -A"
alias ll="l -l"
alias lla="l -Al"
alias lal=lla

# commonly used programs
alias a=atom
alias b=bower
alias bu=bundler
alias g=git
alias gu=gulp
alias n=npm
alias no=node
alias r=rails

# bower
alias bi="bower install"
alias bl="bower list"
alias bs="bower search"

# npm
alias ni="npm install"
alias nl="npm list"
alias ns="npm search"

# git
alias ga="git add"
alias gaa="git add --all"
alias gb="git branch"
alias gc="git commit"
alias gd="git diff"
alias gl="git log"
alias go="git checkout"
alias gp="git push"
alias gr="git rebase"
alias gri="git rebase -i"
alias gs="git status"

# ruby
alias bue="bundler exec"
alias bui="bundle install"
alias rc="rails console"
alias rg="rails generate"
alias rn="rails new"
alias rs="rails server"
