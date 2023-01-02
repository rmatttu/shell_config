#!/usr/bin/env bash

set -e
set -u

# Main script
now_text=`date +%Y-%m-%d_%H-%M-%S`
old_dir=~/old-shell-conf-$now_text

mkdir -p ~/.config

# zsh
# 履歴ファイルを作成
if type zsh > /dev/null 2>&1 ; then
  touch ~/.zsh_history
  chmod 666  ~/.zsh_history

  # Backup if exists
  if [[ -e ~/.config/zsh ]]; then
    mkdir -p $old_dir
    mv ~/.config/zsh $old_dir
    mv ~/.zshrc $old_dir
  fi
  cp -r zsh ~/.config
  echo "source ~/.config/zsh/zshrc" > ~/.zshrc
fi

# bash
if type bash > /dev/null 2>&1 ; then
  # Backup if exists
  if [[ -e ~/.config/bash ]]; then
    mkdir -p $old_dir
    mv ~/.config/bash $old_dir
    mv ~/.bash_profile $old_dir
  fi
  cp -r bash ~/.config
  echo "source ~/.config/bash/bash_profile" > ~/.bash_profile
fi

if type tmux > /dev/null 2>&1 ; then
  # Backup if exists
  if [[ -e ~/.config/tmux ]]; then
    mkdir -p $old_dir
    mv ~/.config/tmux $old_dir
    mv ~/.tmux.conf $old_dir
  fi
  cp -r tmux ~/.config
  echo "source-file ~/.config/tmux/tmux.conf" > ~/.tmux.conf
fi
