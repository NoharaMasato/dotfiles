echo "env"
case "${OSTYPE}" in
  darwin*) 
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

    export LSCOLORS=gxfxcxdxbxegedabagacad #lsで表示されるディレクトリやファイル名の色を変更

    # aws-cliが使えるようにする
    #export PATH=~/Library/Python/3.7/bin:$PATH

    # g++を最新のにするために読み込む
    export PATH=/usr/local/bin:$PATH

    # set path for command making for myself
    export PATH=/Users/noharamasato2/mycommand:$PATH

    # added by Anaconda3 5.2.0 installer
    # export PATH="/Users/noharamasato2/anaconda3/bin:$PATH"

    # node nodebrew path 設定
    # export PATH=$HOME/.nodebrew/current/bin:$PATH

    # Go path 設定
    export PATH=$PATH:/usr/local/go/bin
    # export GOPATH=$HOME/go

    # Setting PATH for Python 3.7
    export PATH=/Library/Frameworks/Python.framework/Versions/3.7/bin:$PATH
    ;;
  linux*) 
    ;;
esac
