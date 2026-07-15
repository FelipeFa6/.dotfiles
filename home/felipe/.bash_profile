# Load login configuration
[[ -f ~/.config/bash/profile ]] && source ~/.config/bash/profile

# Load interactive configuration
[[ $- == *i* ]] && [[ -f ~/.bashrc ]] && source ~/.bashrc
