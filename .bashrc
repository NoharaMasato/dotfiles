# pagerにlessを使う　manが色付きになる
export PAGER=less

# lessのオプションをつける
export LESS='-g -i -M -R -S -W -z-4 -x2'

case "${OSTYPE}" in
  darwin*) #これはmacの場合
    disc_ratio=`df -h | sed -n 2P | awk '{print $5}'`
    echo "ディスクの使用量は${disc_ratio}です"

    if [ "~/.bash_aliases" ]; then
      source ~/.bash_aliases
    fi

    # added by Anaconda3 5.2.0 installer
    export PATH="/Users/noharamasato/anaconda3/bin:$PATH"

    export LSCOLORS=gxfxcxdxbxegedabagacad #lsで表示されるディレクトリやファイル名の色を変更
    # node nodebrew path 設定
    export PATH=$HOME/.nodebrew/current/bin:$PATH

    #sublime textをterminalから開くためのコマンド設定
    subl(){
      if [ $# -ge 1 ] ; then
        subli -b $@
      else
        subli & exit
      fi  
    }

    eval "$(rbenv init -)" 

    # git補間とプロンプト表示にブランチ名を出すかつ、短くする
    source /usr/local/git/contrib/completion/git-prompt.sh
    source /usr/local/git/contrib/completion/git-completion.bash
    export PS1='\[\033[35m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
    GIT_PS1_SHOWDIRTYSTATE=true

    # Go path 設定
    export PATH=$PATH:/usr/local/go/bin
    export GOPATH=$HOME/go

    # anaconda path
    export PATH=/Users/user_name/anaconda3/bin:$PATH
    ;;
  linux*) linuxの場合
    ;;
esac
