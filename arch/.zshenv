#!/bin/bash
if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
    source "$HOME/.bashrc"
    fi
fi

export EDITOR=nvim
export LESSHISTFILE="-"
export NO_COLOR=1
export XAUTHORITY=$HOME/.config/x11/Xauthority
export XINITRC=$HOME/.config/x11/xinitrc

export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/go/bin

# xdg
XDG_CACHE_HOME=$HOME/.cache
XDG_CONFIG_HOME=$HOME/.config
XDG_DATA_HOME=$HOME/.local/share
XDG_STATE_HOME=$HOME/.local/state
