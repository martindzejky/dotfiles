#!/usr/bin/env sh

# installs brew if it is not installed yet

if which brew; then
  echo "brew is already installed"
  exit 0
else
  # copied from https://brew.sh

  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

