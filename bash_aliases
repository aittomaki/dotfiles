#!/bin/bash
## Alias definitions for bash

# general shell
alias x='exit'
alias c='clear'

# ls aliases
alias ll='ls -Fhl'
alias la='ls -A'
alias l='ls -CF'

# screen
alias sr='screen -r'
alias srd='screen -rD'
alias sru='screen -rU'

# software
alias n='ncsv'

# formatted and sorted version of du
function duf {
    du -sk "$@" | sort -n | while read size fname; do for unit in k M G T P E Z Y; do if [ $size -lt 1024 ]; then echo -e "${size}${unit}\t${fname}"; break; fi; size=$((size/1024)); done; done
}

# change open to xdg-open and stop STDERR and STDOUT from printing
function open {
    xdg-open $* &> /dev/null
}

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
