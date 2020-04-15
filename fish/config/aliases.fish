# ALIASES
# daily shortcuts for a happier life <3

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
alias k  kubectl
alias kc 'set ARG (kubectl config get-contexts -o=name | fzf); if test -n $ARG; kubectl config use-context $ARG; end;'
alias r  ranger
alias v  vim

