#!/usr/bin/env bash

set -e
set -u

# Main script
now_text=$(date +%Y-%m-%d_%H-%M-%S)
old_dir=~/old-shell-conf-$now_text

mkdir -p ~/.config

# bash
if type bash >/dev/null 2>&1; then
  # Backup if exists
  if [[ -e ~/.config/bash ]]; then
    mkdir -p "$old_dir"
    mv ~/.config/bash "$old_dir"
    mv ~/.bashrc "$old_dir"
  fi
  cp -r bash ~/.config
  curl -o ~/.config/bash/key-bindings.bash "https://raw.githubusercontent.com/junegunn/fzf/6fb41a202a97ad3f2437f6e5aee8890268560412/shell/key-bindings.bash"
  cat <<EOS >~/.bashrc
source ~/.config/bash/bashrc
export LANG=ja_JP.UTF-8
EOS
fi
