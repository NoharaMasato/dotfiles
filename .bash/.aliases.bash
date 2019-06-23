echo "alias"
function cdls() {
 \cd $1; 
 ls -G; 
}
alias cd=cdls
alias rm='rm -i' # confirm whem remove
alias de='cd ~/Desktop'
alias hi='history'
alias dc='docker'
alias l='ls'

case "${OSTYPE}" in
  darwin*) #これはmacの場合
    alias less='/usr/share/vim/vim80/macros/less.sh' # less をvimの支配下にあるlessを使う
    alias ls="ls -G"
    alias la="ls -aG" 
    alias ll="ls -lG"
    alias lal="ls -laG"
    alias "rails_dk"="docker-compose run web bin/rails"
    alias "rails_dks"="docker-compose run --rm --service-ports web"
    ;;
  linux*) #linuxの場合
    alias ls='ls --color'
    alias ll='ls -l --color'
    alias la='ls -a --color'
    alias lal='ls -la --color'
    alias vi='vim' # mac の場合は最初からvimになる
    ;;
esac
