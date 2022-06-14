#!/usr/bin/env bash

set -euo pipefail

# Check for Homebrew, install if not installed
if test ! $(which brew); then
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

brew update
brew install tmux htop wget tree

# Set fast key repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0

# Enable tap-to-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1


wget https://repo.anaconda.com/archive/Anaconda3-2022.05-MacOSX-x86_64.pkg
open Anaconda3-2022.05-MacOSX-x86_64.pkg
rm Anaconda3-2022.05-MacOSX-x86_64.pkg
source ~/.zshrc

echo "Macbook setup completed!"
