#!/bin/sh

mkdir -p $HOME/.config

# link config
ln -s $(pwd)/.kshrc $HOME/
ln -s $(pwd)/.profile $HOME/
ln -s $(pwd)/.config/* $HOME/.config/

mkdir -p $HOME/.local/share/
ln -s $(pwd)/.local/share/wallpapers $HOME/.local/share/
ln -s $(pwd)/.local/bin/ $HOME/.local/
