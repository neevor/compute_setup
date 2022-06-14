#!/usr/bin/env bash

set -euo pipefail

echo "Installing cask..."CASKS=(
    slack
    visual-studio-code
    1password
)echo "Installing cask apps..."
brew cask install ${CASKS[@]}
