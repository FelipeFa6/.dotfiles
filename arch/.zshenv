# .zshenv

export EDITOR=nvim
export LESSHISTFILE="-"
export NO_COLOR=1
export XAUTHORITY=$HOME/.config/x11/Xauthority
export XINITRC=$HOME/.config/x11/xinitrc
export ZDOTDIR="$HOME/.config/zsh"

export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/go/bin
export PROMPT='%F{green}%n@%m%f %F{blue}%~%f %# '

# xdg
XDG_CACHE_HOME=$HOME/.cache
XDG_CONFIG_HOME=$HOME/.config
XDG_DATA_HOME=$HOME/.local/share
XDG_STATE_HOME=$HOME/.local/state
