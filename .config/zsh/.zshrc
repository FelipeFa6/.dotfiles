# .zshrc

alias ga='git add'
alias gb='git branch'
alias gc='git commit -m'
alias gd='git diff'
alias gi='git init'
alias gl='git log --all --decorate --oneline --graph'
alias gs='git status'

alias update='doas pacman -Syyu --noconfirm'
alias orphans='doas pacman -Qdtq | doas pacman -Rns -'

