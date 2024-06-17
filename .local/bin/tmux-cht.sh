#!/bin/sh

languages=`echo "bash php golang c lua" | tr ' ' '\n'`
utils=`echo "grep xargs find git mv awk" | tr ' ' '\n'`

selected=`printf "$languages\n$utils" | fzf`
read -p "query: " query

if printf '%s' "$languages" | grep -qs "$selected"; then
    tmux neww bash -c "curl cht.sh/$selected/`echo $query | tr ' ' '+'` & while [ : ]; do sleep 1; done"
else
    curl cht.sh/$selected~$query & while [ : ]; do sleep 1; done
fi
