#!/usr/bin/env sh

# installs brew if it is not yet installed

if which brew; then
    echo "brew is already installed"
    exit 0
else
    # copied from https://brew.sh
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

