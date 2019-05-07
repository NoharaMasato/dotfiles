function cdls() {
 \cd $1; 
 ls -G; 
}
alias cd=cdls

# confirm whem remove
alias rm='rm -i'

# less をvimの支配下にあるlessを使う
alias less='/usr/share/vim/vim80/macros/less.sh'

alias de='cd ~/Desktop'

alias hi='history'

# pagerにlessを使う　manが色付きになる
export PAGER=less

# lessのオプションをつける
export LESS='-g -i -M -R -S -W -z-4 -x2'

case "${OSTYPE}" in
  darwin*) #これはmacの場合
    disc_ratio=`df -h | sed -n 2P | awk '{print $5}'`
    echo "ディスクの使用量は${disc_ratio}です"
    
    # added by Anaconda3 5.2.0 installer
    export PATH="/Users/noharamasato/anaconda3/bin:$PATH"
    
    export LSCOLORS=gxfxcxdxbxegedabagacad #lsで表示されるディレクトリやファイル名の色を変更
    alias ls="ls -G"
    alias la="ls -aG" 
    alias ll="ls -lG"
    alias lal="ls -laG"

    alias "rails_dk"="docker-compose run web bin/rails"
    alias "rails_dks"="docker-compose run --rm --service-ports web"
    
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
    alias ls='ls --color'
    alias ll='ls -l --color'
    alias la='ls -la --color'
    alias vi='vim' # mac の場合は最初からvimになる
    ;;
esac
