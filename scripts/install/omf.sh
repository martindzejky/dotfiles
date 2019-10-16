#!/usr/bin/env sh

# installs oh my fish shell (OMF) if it is not installed yet

if ! which fish; then
    echo "fish shell not installed!"
    exit 1
elif fish -c "omf > /dev/null"; then
    echo "oh my fish shell is already installed"
    exit 0
else
    # copied from https://github.com/oh-my-fish/oh-my-fish

    downloadLocation="/tmp/omf-installer"

    # download the installer file
    echo "downloading omf installer to $downloadLocation"
    curl -L https://get.oh-my.fish > $downloadLocation

    # check its integrity
    echo "checking integrity"
    downloadedChecksum=$(shasum -a 256 /tmp/omf-installer | cut -f1 -d' ')
    correctChecksum=bbace7ef16956d87fd40bff91cd1992a90621e7931ac3055f16b7f6d679e8fff

    if [ $downloadedChecksum == $correctChecksum ]; then
        echo "checksum valid, installing omf"
        fish $downloadLocation
    else
        echo "checksum is invalid, wtf"
        exit 1
    fi

fi

