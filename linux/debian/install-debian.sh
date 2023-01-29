#!/usr/bin/env bash

echo "Running debian installer"


echo "Updating APT"
apt update

echo "Installing all the packages"
apt-cache --generate pkgnames \
| grep --line-regexp --fixed-strings \
    -e tmux \
    -e vim \
    -e htop \
    -e curl \
    -e fonts-powerline \
    -e bat \
    -e btop \
    -e bmon \
    -e fish \
| xargs apt install --yes

echo "Changing default shell to fish"
chsh --shell $(which fish)