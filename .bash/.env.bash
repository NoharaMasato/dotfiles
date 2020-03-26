# historyの設定
export HISTCONTROL=ignoredups:erasedups #重複した履歴を残さない
HISTTIMEFORMAT='%F %T ' #履歴を日付とともに残す
shopt -s histappend #bashの履歴をflushしないでappend
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# for displaying japanese
export LANG=ja_JP.UTF-8

# pagerにlessを使う　manが色付きになる
export PAGER=less

# lessのオプションをつける
export LESS='-g -i -M -R -S -W -z-4 -x2'

# coloring less
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

#lsで表示されるディレクトリやファイル名の色を変更
export LSCOLORS=gxfxcxdxbxegedabagacad

export EDITOR=vim

case "${OSTYPE}" in
  darwin*) 
    export AWS_REGION=ap-northeast-1

    # g++を最新のにするために読み込む
    export PATH=/usr/local/bin:$PATH

    # set path for command making for myself
    export PATH=/Users/noharamasato2/mycommand:$PATH

    # Go path 設定
    export PATH=/usr/local/go/bin:$PATH
    # export GOPATH=$HOME/go

    # set path for mysql5.7
    export PATH=/usr/local/opt/mysql@5.7/bin:$PATH
    
    # for anyenv
    export PATH="$HOME/.anyenv/bin:$PATH"
    eval "$(anyenv init -)"

    # load bash_completion
    if [ -f `brew --prefix`/etc/bash_completion ]; then
          . `brew --prefix`/etc/bash_completion
    fi
    ;;
  linux*) 
    ;;
esac
