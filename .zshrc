# path to oh-my-zsh
export ZSH=$HOME/.oh-my-zsh

# oh-my-zsh settings
ZSH_THEME="agnoster"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# plugins
plugins=(extract git node npm z)

# load oh-my-zsh
export PATH=$HOME/bin:/usr/local/bin:$PATH
source $ZSH/oh-my-zsh.sh

# load my aliases
source $HOME/.aliases
