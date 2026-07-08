#!/bin/bash

# 1. Alias: check git repository status safely
alias gs='git status'

# 2. If-statement: Dynamically set the default editor based on system availability
if [ -x /usr/bin/nano ]; then
    export EDITOR='/usr/bin/nano'
else
    export EDITOR='/usr/bin/vi'
fi

# 3. Shell Function: Safely duplicate a file with a high-resolution timestamp
backup() {
    if [ -f "$1" ]; then
        cp "$1" "${1}.bak_$(date +%Y%m%d_%H%M%S)"
        echo "Backup of '$1' created successfully."
    else
        echo "Error: File '$1' does not exist."
    fi
}
