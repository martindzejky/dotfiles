# GIT ALIASES
# Moved from .gitconfig to get rid of that
# once unnecessary space key in 'g sw'. .gitconfig
# is now cleaner and I save a few key presses.
#
# Also, there are some additional git shortcuts in
# fish/functions that use some additional logic.

alias ga      "git add"
alias gaa     "git add --all"
alias gaaco   "git add --all && git commit"
alias gaacoa  "git add --all && git commit --amend --no-edit"
alias gaacoae "git add --all && git commit --amend"
alias gbl     "git blame"
alias gb      "git branch"
alias gbd     "git branch --delete"
alias gbD     "git branch --delete --force"
alias gbm     "git branch --move"
alias gbs     "git bisect"
alias gbsb    "git bisect bad"
alias gbsg    "git bisect good"
alias gbsl    "git bisect log"
alias gbss    "git bisect start"
alias gbsv    "git bisect view"
alias gcl     "git clone"
alias gco     "git commit"
alias gcoa    "git commit --amend --no-edit"
alias gcoae   "git commit --amend"
alias gce     "git checkout"
alias gceb    "git checkout -b"
alias gcp     "git cherry-pick"
alias gcpc    "git cherry-pick --continue"
alias gcps    "git cherry-pick --skip"
alias gcpa    "git cherry-pick --abort"
alias gd      "git diff"
alias gds     "git diff --stat"
alias gde     "git describe --tags"
alias gf      "git fetch --prune"
alias gfpl    "git fetch --prune && git pull"
alias gl      "git log --oneline"
alias glg     "git log --graph --decorate --all --pretty=oneline --abbrev-commit"
alias gm      "git merge"
alias gma     "git switch master"
alias gmff    "git merge --ff-only"
alias gmnff   "git merge --no-ff"
alias gps     "git push -u --follow-tags"
alias gpsf    "git push -u --force-with-lease"
alias gpl     "git pull"
alias gplr    "git pull --rebase"
alias grb     "git rebase"
alias grba    "git rebase --abort"
alias grbc    "git rebase --continue"
alias grbma   "git rebase master"
alias grbi    "git rebase -i"
alias gre     "git restore"
alias gres    "git restore --staged"
alias grs     "git reset"
alias grsh    "git reset --hard"
alias grss    "git reset --soft"
alias gs      "git status"
alias gsu     "git submodule"
alias gsua    "git submodule add"
alias gsuur   "git submodule update --remote"
alias gsuui   "git submodule update --init --recursive"
alias gswb    "git switch --create"
alias gswc    "git switch --create"
alias gst     "git stash"
alias gstp    "git stash pop"
alias gt      "git tag"
alias gts     "git tag --sign"
