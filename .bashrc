# Return immediately if not interactive
[[ $- != *i* ]] && return

[[ -f ~/.config/bash/bashrc ]] && source ~/.config/bash/bashrc
