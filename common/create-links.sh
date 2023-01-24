#!/usr/bin/env bash

CWD=$(pwd)

echo "Creating symlinks..."
echo""

echo "vimrc"
ln -s $CWD/.vimrc $HOME/.vimrc

echo "fish"
ln -s $CWD/fish $HOME/config/fish

