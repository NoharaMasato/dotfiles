# bashrcはインタラクティブシェルが起動した時に呼び出される

# ログインしたときはbash_profileが呼び出され、vimの:terminlaや/bin/bashで起動した時などはインタラクティブシェルなので、bashrcが呼び出される。sudo suした時なども
if [ -f .bash/.prompt.bash ]; then
  . .bash/.prompt.bash
fi

