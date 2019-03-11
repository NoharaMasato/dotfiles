echo "bashrc is loaded"

# added by Anaconda3 5.2.0 installer
export PATH="/Users/noharamasato/anaconda3/bin:$PATH"

#始まったときにデスクトップに移動
#cd ~/Desktop

# ========= alias ==========
alias aws="ssh -i ~/.ssh/practice-aws3.pem ec2-user@18.191.16.146"
alias keio_ssh="ssh ua199796@logex00.educ.cc.keio.ac.jp"
alias ls="ls -a" 
function cdls() {
 \cd $1; 
 ls; 
}
alias cd=cdls
alias "rails_dk"="docker-compose run web bin/rails"
alias "rails_dks"="docker-compose run --rm --service-ports web"
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
