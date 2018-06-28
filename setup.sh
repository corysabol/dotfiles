#!/usr/bin/env sh

if [[ ! (which wal) ]]; then
  echo "ERROR: You've not got pywal installed, m8."
  exit 1
fi

echo "Sprinkling dotfiles around wherever..."
mkdir -p ~/.i3
cp ./confg ~/.i3/
mkdir -p ~/.config/nvim
cp ./init.vim ~/.config/nvim/
cp ./.xinitrc ~/.xinitrc
cp ./.bashrc ~/.bashrc

# add some wal stuff to .bashrc
echo "(cat ~/.cache/wal/sequences &)" | tee -a ~/.bashrc
