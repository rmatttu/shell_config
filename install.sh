#!/bin/bash

# zsh
# 履歴ファイルを作成
touch ~/.zsh_history
chmod 666  ~/.zsh_history

echo "source ~/.shell/bash/bash_profile" > ~/.bash_profile
echo "source ~/.shell/zsh/zshrc" > ~/.zshrc
echo "source-file ~/.shell/tmux/tmux.conf" > ~/.tmux.conf
