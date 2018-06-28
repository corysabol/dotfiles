#!/usr/bin/env sh

echo "Sprinkling dotfiles around wherever..."

# add some wal stuff to .bashrc
echo "(cat ~/.cache/wal/sequences &)" | tee -a ~/.bashrc
