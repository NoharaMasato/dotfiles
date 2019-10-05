disc_ratio=`df -h | sed -n 2P | awk '{print $5}'`
echo "ディスクの使用量は${disc_ratio}です"

case "${OSTYPE}" in
  darwin*)
    DOTFILE_HOME=/Users/noharamasato2
    ;;
  linux*)
    DOTFILE_HOME=/home/nohara
    ;;
esac

# git補間とプロンプト表示にブランチ名を出すかつ、短くする
source $DOTFILE_HOME/.git-completion.bash
source $DOTFILE_HOME/.git-prompt.sh
export PS1='\[\033[35m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
GIT_PS1_SHOWDIRTYSTATE=true
