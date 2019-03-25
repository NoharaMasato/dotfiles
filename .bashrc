echo "bashrc is loaded"
disc_ratio=`df -h | sed -n 2P | awk '{print $5}'`
echo "ディスクの使用量は${disc_ratio}です"

# added by Anaconda3 5.2.0 installer
export PATH="/Users/noharamasato/anaconda3/bin:$PATH"

#始まったときにデスクトップに移動
#cd ~/Desktop

# ========= alias ==========
case "${OSTYPE}" in
darwin*) #これはmacの場合
    export LSCOLORS=gxfxcxdxbxegedabagacad #lsで表示されるディレクトリやファイル名の色を変更
    alias ls="ls -G"
    alias la="ls -aG" 
    alias ll="ls -lG"

    function cdls() {
     \cd $1; 
     ls -G; 
    }
    alias cd=cdls
    alias "rails_dk"="docker-compose run web bin/rails"
    alias "rails_dks"="docker-compose run --rm --service-ports web"
    ;;
linux*) linuxの場合
    alias ls='ls --color'
    alias ll='ls -l --color'
    alias la='ls -la --color'
    ;;
esac

#============================

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
export PS1='\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
GIT_PS1_SHOWDIRTYSTATE=true

# Go path 設定
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go

# node nodebrew path 設定
export PATH=$HOME/.nodebrew/current/bin:$PATH
