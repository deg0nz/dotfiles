#!/usr/bin/env bash

echo "Installing XCode command line tools"
xcode-select --install

echo "Installing Homebrew"
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

