#!/usr/bin/env sh

# installs fish shell if it is not yet installed

if which fish; then
    echo "fish is already installed"
    exit 0
elif ! which brew; then
    echo "brew is not installed! install it first and then call this script"
    exit 1
else
    brew install fish
fi

