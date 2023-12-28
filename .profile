#/bin/bash
[[ -f ~/.bashrc ]] && . ~/.bashrc

PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/var/lib/snapd/snap/bin

export PATH HOME TERM
export XAUTHORITY=$HOME/.config/X11/Xauthority
export XINITRC=$HOME/.config/X11/xinitrc
export LESSHISTFILE="-"
export EDITOR=nvim
