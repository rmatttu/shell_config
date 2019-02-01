#!/bin/sh

source ~/.shell/bash/alias_common.inc

if [[ "$OSTYPE" == "darwin"* ]]; then
    # MacOS

    alias ls='ls -FG'
    alias l='ls -lFGk'
    alias ll='ls -laFG'
    alias lst='ls -ltrFG'
    alias la='ls -laFG'

    # vim
    if [ -d /Applications/MacVim.app/Contents/MacOS/ ]; then
        alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim -u $HOME/.vimrc "$@"'
        alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
        alias ctags='/Applications/MacVim.app/Contents/MacOS/ctags "$@"'
        alias gvim='open -a "MacVim" "$@"'
    fi;

    # bash
    # export PS1='\h:\W \u\$ '  # default
    export PS1='\[\e[35m\]\u@\h \w\[\e[0m\]\n  \$ '

else
    # msys, linux-gnu

    alias ls='ls --color=auto'
    alias l='ls -lF --color=auto'
    alias ll='ls -laF --color=auto'
    alias lst='ls -ltrF --color=auto'
    alias la='ls -laF --color=auto'

fi

