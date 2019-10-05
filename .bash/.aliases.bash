function cdls() {
 \cd $1; 
 ls -G; 
}
alias cd=cdls

function cp_to_clip_bload(){
  cat $1 | pbcopy
} 
alias cpc=cp_to_clip_bload

function compile_and_run_c(){
  g++ $1 && ./a.out
}
alias ga=compile_and_run_c

# if command start from .. , it is a cd command
function go_back(){
  cd ..
}
alias '..'=go_back


alias rm='rm -i' # confirm whem remove
alias de='cd ~/Desktop'
alias hi='history'
alias dc='docker'
alias l='ls'

case "${OSTYPE}" in
  darwin*) # mac
    alias less='/usr/share/vim/vim80/macros/less.sh' # less をvimの支配下にあるlessを使う
    alias ls="ls -G"
    alias la="ls -aG" 
    alias ll="ls -lG"
    alias lal="ls -laG"
    alias lla="ls -laG"
    alias "rails_dk"="docker-compose run web bin/rails"
    alias "rails_dks"="docker-compose run --rm --service-ports web"
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

