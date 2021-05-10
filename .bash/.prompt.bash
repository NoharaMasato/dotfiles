# ctlr-sをスクリーンロックではなく、コマンドの履歴を戻る際に使う
stty stop undef

source $HOME/.git-completion.bash
source $HOME/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true

case "${OSTYPE}" in
  darwin*)
    export PS1='\[\033[35m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

    # autocomplete .ssh/config
    function _compreply_ssh(){
      COMPREPLY=(`cat ~/.ssh/config | grep -i -e '^host' | cut -d " " -f 2 | grep -E "$2"`)
    }
    complete -F _compreply_ssh ssh
    complete -F _compreply_ssh scp
    ;;
  linux*)
    export PS1='\[\033[35m\]\h:\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
    ;;
esac

