#!/usr/bin/env sh

# installs fish shell if it is not installed yet

if which fish; then
    echo "fish shell is already installed"
    exit 0
else
    # install fish shell
    brew install fish

    # add it to /etc/shells
    if ! grep fish /etc/shells; then
        echo "adding fish shell to /etc/shells"
        echo "using sudo, you will have to enter your password"
        which fish | sudo tee -a /etc/shells
    fi

    # set as the default shell
    echo "setting as default shell"
    chsh -s $(which fish)
fi

