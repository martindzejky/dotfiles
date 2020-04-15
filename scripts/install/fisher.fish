#!/usr/bin/env fish

# installs fisher
# https://github.com/jorgebucaran/fisher#bootstrap-installation

if not functions --query fisher
    echo "installing fisher"
    curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
end

echo "updating fisher packages"
fisher

