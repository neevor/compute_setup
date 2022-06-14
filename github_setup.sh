#!/usr/bin/env bash

set -euo pipefail

# The following page is a good resource:
# https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

read -e -p "What email do you want to use for your ssh key? " SSH_KEY_EMAIL

ssh-keygen -t ed25519 -C "$SSH_KEY_EMAIL"

