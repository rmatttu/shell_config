#!/usr/bin/env bash

set -e
set -u

# Main script
now_text="$(date +%Y-%m-%d_%H-%M-%S)"
old_dir="$HOME/old-shell-conf-$now_text"

mkdir -p "$HOME/.config"

# zsh
# 履歴ファイルを作成
if type zsh >/dev/null 2>&1 ; then
  touch "$HOME/.zsh_history"
  chmod 666  "$HOME/.zsh_history"

  # Backup if exists
  if [[ -e "$HOME/.config/zsh" ]]; then
    mkdir -p "$old_dir"
    mv "$HOME/.config/zsh" "$old_dir"
    mv "$HOME/.zshrc" "$old_dir"
  fi
  cp -r zsh "$HOME/.config"
  echo "source ~/.config/zsh/zshrc" >"$HOME/.zshrc"
fi

# bash
if type bash >/dev/null 2>&1 ; then
  # Backup if exists
  if [[ -e "$HOME/.config/bash" ]]; then
    mkdir -p "$old_dir"
    mv "$HOME/.config/bash" "$old_dir"
    mv "$HOME/.bash_profile" "$old_dir"
  fi
  cp -r bash "$HOME/.config"
  echo "source ~/.config/bash/bash_profile" >"$HOME/.bash_profile"
fi

if type tmux >/dev/null 2>&1 ; then
  # Backup if exists
  if [[ -e "$HOME/.config/tmux" ]]; then
    mkdir -p "$old_dir"
    mv "$HOME/.config/tmux" "$old_dir"
    mv "$HOME/.tmux.conf" "$old_dir"
  fi
  cp -r tmux "$HOME/.config"
  echo "source-file ~/.config/tmux/tmux.conf" >"$HOME/.tmux.conf"
fi
