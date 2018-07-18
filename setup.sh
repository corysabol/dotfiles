#!/bin/bash

if [[ ! $(which wal) ]]; then
  echo "ERROR: You've not got pywal installed, m8."
  exit 1
fi

echo "Sprinkling dotfiles around wherever..."
mkdir -p ~/.i3
cp ./config ~/.i3/config
mkdir -p ~/.config/nvim
cp ./init.vim ~/.config/nvim/
cp ./.xinitrc ~/.xinitrc

# add some wal stuff to .bashrc
echo "(cat ~/.cache/wal/sequences &)" | tee -a ~/.bashrc
