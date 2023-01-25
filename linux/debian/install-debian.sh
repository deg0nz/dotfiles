#!/usr/bin/env bash

echo "Running debian installer"


echo "Updating APT"
apt update

echo "Installing all the packages"
apt install -y \
    tmux \
    vim \
    htop \
    curl \
    fonts-powerline \
    bat \
    btop \
    bmon \
    fish \

echo "Changing default shell to fish"
chsh --shell $(which fish)