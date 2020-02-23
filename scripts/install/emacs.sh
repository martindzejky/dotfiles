#!/usr/bin/env sh

# installs spacemacs

if [ ! -d ~/.emacs.d/.git ]; then
    echo "cloning spacemacs into ~/.emacs.d/"
    rm -r ~/.emacs.d
    git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
fi

