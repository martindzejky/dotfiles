# load antigen
source $HOME/antigen.zsh

# oh-my-zsh settings
COMPLETION_WAITING_DOTS="true"
DEFAULT_USER=chuckeles
ENABLE_CORRECTION="true"
ZSH_THEME="agnoster"

# load oh-my-zsh
antigen use oh-my-zsh

# load bundles
antigen bundles <<EOBUNDLES

  # extracting archives
  extract

  # development stuff
  git
  node
  npm

  # navigation
  rupa/z

  # more autocomplete
  zsh-users/zsh-completions src

EOBUNDLES

# load theme
antigen theme agnoster

# tell antigen I'm done
antigen apply

# load my aliases
source $HOME/aliases.zsh
