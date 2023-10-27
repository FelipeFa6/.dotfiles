#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
set -o vi
set -o vi

alias grep='grep --color=auto'
alias startx='startx $HOME/.config/X11/xinitrc'

PS1='[\u@\h \W]\$ '
