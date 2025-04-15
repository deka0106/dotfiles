#!/bin/sh
set -euo pipefail

# Xcode
xcode-select --install

# Homebrew
if
    [ ! -x "$(command -v brew)" ]
then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "Installing packages..."
    brew bundle --global
    echo "Done."
fi
