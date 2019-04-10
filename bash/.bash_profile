#!/bin/sh

source ~/.shell/bash/alias_common.inc

if [[ "$OSTYPE" == "darwin"* ]]; then
    # MacOS
    source ~/.shell/bash/alias_mac.inc

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

    # nodebrew
    export PATH=$PATH:~/.nodebrew/current/bin

else
    # msys, linux-gnu
    source ~/.shell/bash/alias_linux.inc
fi

