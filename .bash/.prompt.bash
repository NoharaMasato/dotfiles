function git_prompt(){
  # git補間とプロンプト表示にブランチ名を出すかつ、短くする
  source $1/.git-completion.bash
  source $1/.git-prompt.sh
  GIT_PS1_SHOWDIRTYSTATE=true
}

case "${OSTYPE}" in
  darwin*)
    git_prompt /Users/noharamasato2
    export PS1='\[\033[35m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
    disc_ratio=`df -h | sed -n 2P | awk '{print $5}'`
    ;;
  linux*)
    git_prompt `pwd`
    export PS1='\[\033[35m\]\h:\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
    disc_ratio=`df -h | sed -n 4P | awk '{print $5}'`
    ;;
esac

echo "ディスクの使用量は${disc_ratio}です"

