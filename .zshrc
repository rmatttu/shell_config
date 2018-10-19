# test

# source ~/.bashrc
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

if [ -f ~/.bash_profile ]; then
    source ~/.bash_profile
fi


export EDITORP=vim #エディタをvimに設定
export LANG=ja_JP.UTF-8 #文字コードをUTF-8に設定
setopt IGNOREEOF # Ctrl+Dでログアウトしてしまうことを防ぐ

# 色を使用
autoload -Uz colors
colors

# プロンプトを2行で表示、時刻を表示
PROMPT="%(?.%{${fg[green]}%}.%{${fg[red]}%})%n${reset_color}@${fg[blue]}%m${reset_color}(%*%) %~
  %# "

# エイリアス
if [ "$(uname)" = 'Darwin' ]; then
    alias ls='ls -FG'
    alias l='ls -lFGk'
    alias ll='ls -laFG'
    alias lst='ls -ltrFG'
    alias la='ls -laFG'
else
    alias ls='ls --color=auto'
    alias l='ls -lF --color=auto'
    alias ll='ls -laF --color=auto'
    alias lst='ls -ltrF --color=auto'
    alias la='ls -laF --color=auto'
fi
alias so='source'
alias soz='source ~/.zshrc'
alias v='vim'
alias vi='vim'
alias vz='vim ~/.zshrc'
alias c='cdr'
# historyに日付を表示
alias h='fc -lt '%F %T' 1'
alias cp='cp -i'
alias rm='rm -i'
alias mkdir='mkdir -p'
alias ..='c ../'
alias back='pushd'
alias diff='diff -U1'
alias gs='git status'


bindkey -e
autoload -U compinit; compinit
setopt auto_cd
alias ..='cd ../'
alias ...='cd ../..'
alias ....='cd ../../..'
setopt auto_pushd
setopt pushd_ignore_dups
setopt extended_glob
setopt hist_reduce_blanks
setopt hist_no_store
# setopt hist_ignore_all_dups
# setopt hist_ignore_space
zstyle ':completion:*:default' menu select=1
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

# history
HISTSIZE=1000
SAVEHIST=10000
setopt extended_history #ヒストリに実行時間も保存
setopt hist_ignore_dups #直前と同じコマンドはヒストリに追加しない
export HISTFILE=${HOME}/.zsh_history

# git設定
RPROMPT="%{${fg[blue]}%}[%~]%{${reset_color}%}"
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'

# path
