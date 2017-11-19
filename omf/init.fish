## SETTINGS

# editors, pagers
set -gx BROWSER open
set -gx EDITOR vim
set -gx PAGER less
set -gx MANPAGER $PAGER

# fish greeting
set -gx fish_greeting ""

# thefuck
thefuck --alias | source

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
alias w  webpack
alias y  yarn

# GEMS

if test -d ~/.gem/ruby/2.3.0/bin
  set -gx PATH $PATH ~/.gem/ruby/2.3.0/bin
end

# NODE

if which yarn > /dev/null
  set -gx PATH $PATH (yarn global bin)
end

# ANDROID

set -gx JAVA_HOME /Library/Java/Home
set -gx ANDROID_HOME /usr/local/share/android-sdk
set -gx ANDROID_SDK_ROOT /usr/local/share/android-sdk

# PIP

if test -d ~/.local/bin
  set -gx PATH $PATH ~/.local/bin
end

# POSTGRES

if test -d /Applications/Postgres.app/Contents/Versions/latest/bin/
  set PATH /Applications/Postgres.app/Contents/Versions/latest/bin/ $PATH
end

