#!/usr/bin/env fish

# installs fisher
# https://github.com/jorgebucaran/fisher#bootstrap-installation

if not functions --query fisher
    echo "installing fisher"

    # https://github.com/jorgebucaran/fisher
    curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
end

echo "updating fisher packages"
fisher

