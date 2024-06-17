#!/bin/sh

# generate symlinks for dotfiles

ln -s $(pwd)/.zshenv $HOME/

mkdir -p $HOME/.config
ln -s $(pwd)/.config/fontconfig $HOME/.config/
ln -s $(pwd)/.config/git $HOME/.config/
ln -s $(pwd)/.config/latexmk $HOME/.config/
ln -s $(pwd)/.config/picom $HOME/.config/
ln -s $(pwd)/.config/redshift $HOME/.config/
ln -s $(pwd)/.config/x11 $HOME/.config/
ln -s $(pwd)/.config/zathura $HOME/.config/
ln -s $(pwd)/.config/zsh $HOME/.config/
ln -s $(pwd)/.config/tmux $HOME/.config/

mkdir -p $HOME/.local/share/
ln -s $(pwd)/.local/share/wallpapers $HOME/.local/share/
ln -s $(pwd)/.local/bin/ $HOME/.local/
