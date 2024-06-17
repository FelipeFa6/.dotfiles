# .zshrc

alias ga='git add'
alias gb='git branch'
alias gc='git commit -m'
alias gd='git diff'
alias gi='git init'
alias gl='git log --oneline'
alias gs='git status'

alias update='doas pacman -Syyu --noconfirm'
alias orphans='doas pacman -Qdtq | doas pacman -Rns -'

