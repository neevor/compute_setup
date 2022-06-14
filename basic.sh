#!/usr/bin/env bash

set -euo pipefail

# Check for Homebrew, install if not installed
if test ! $(which brew); then
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

brew update
brew install tmux htop wget tree visual-studio-code

wget https://repo.anaconda.com/archive/Anaconda3-2022.05-MacOSX-x86_64.pkg
open Anaconda3-2022.05-MacOSX-x86_64.pkg
rm Anaconda3-2022.05-MacOSX-x86_64.pkg
source ~/.zshrc

pip install awscli

echo "Macbook setup completed!"
