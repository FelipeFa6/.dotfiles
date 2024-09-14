#!/bin/sh

# generate symlinks for dotfiles

ln -s $(pwd)/.zshenv $HOME/

mkdir -p $HOME/.config
for dir in $(ls -d $(pwd)/.config/*/); do
  ln -s "$dir" "$HOME/.config/"
done

mkdir -p $HOME/.local/share/
ln -s $(pwd)/.local/share/wallpapers $HOME/.local/share/
ln -s $(pwd)/.local/bin/ $HOME/.local/
