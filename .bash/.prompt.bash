disc_ratio=`df -h | sed -n 2P | awk '{print $5}'`
echo "ディスクの使用量は${disc_ratio}です"

# git補間とプロンプト表示にブランチ名を出すかつ、短くする
source $HOME/.git-completion.bash
source $HOME/.git-prompt.sh
export PS1='\[\033[35m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
GIT_PS1_SHOWDIRTYSTATE=true
