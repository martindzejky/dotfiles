#
# chuckeles ~ my bash configuration file
#
# configures options, adds autocomplete, aliases, colors, etc. for bash
#

# don't put duplicate lines or lines starting with space in the history
HISTCONTROL=ignoreboth

# set history length
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS
shopt -s checkwinsize

# append to the history file, don't overwrite it
shopt -s histappend

# case-insensitive globbing
shopt -s nocaseglob

# autocorrect typos in path names when using cd
shopt -s cdspell

# enable recursive globbing
shopt -s globstar

# enable autocd
shopt -s autocd

# add ~/Bin to the $PATH
[[ -d ~/Bin ]] && export PATH="$PATH:~/Bin"

# enable bash completion
if [ -f /usr/share/bash-completion/bash_completion ]; then
  source /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
  source /etc/bash_completion
fi

# include the other configuration files
for file in ./.bash_{aliases,colors,prompt}; do
  [[ -r "$file" ]] && source "$file"
done
