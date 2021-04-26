function cdls() {
 \cd $1; 
 ls -G; 
}
alias cd=cdls

function cp_to_clip_bload(){
  cat $1 | pbcopy
} 

function compile_and_run_cpp(){
  g++ -Wall -Wextra -o out $1 && ./out
}

function copy_atcoder_template_master(){
  if [ $# -ne 1 ]; then
    echo "指定された引数は$#個です。" 1>&2
    echo "実行するには1個の引数が必要です。" 1>&2
    return 1
  fi
  cp -n $HOME/Desktop/atcoder/template/master.cpp ./$1.cpp
}

function make_all_atcoder_files(){
	for x in {a..f}
	do
    copy_atcoder_template_master $x
	done
}

function go_back(){ # if command start from .. , it is "cd" command
  cd ..
}
alias '..'=go_back


alias du='du -s -m -c * | sort -n -r' # -m:MB,-c:caliculate sum
alias rm='rm -i' # confirm whem remove
alias hi='history'

case "${OSTYPE}" in
  darwin*) # mac
    alias less='/usr/share/vim/vim82/macros/less.sh' # less をvimの支配下にあるlessを使う
    alias ls="ls -G"
    alias la="ls -aG" 
    alias ll="ls -lG"
    alias lal="ls -laG"
    alias lla="ls -laG"

    alias westzoom="open $WEST_ZOOM_URL"

    alias norm="git ls-files -x *h *c | xargs norminette"

    #atcoder
    alias cpc=cp_to_clip_bload
    alias ga=compile_and_run_cpp
    alias cpt=copy_atcoder_template_master #指定したアルファベットの.cppファイルをmasterから作成
    alias acp=make_all_atcoder_files
    ;;
  linux*) # linux
    alias ls='ls --color'
    alias ll='ls -l --color'
    alias la='ls -a --color'
    alias lal='ls -la --color'
    alias lla='ls -la --color'
    alias vi='vim' # mac の場合は最初からvimになる
    ;;
esac

