# bashrcはインタラクティブシェルが起動した時に呼び出される
# ログインしたときはbash_profileが呼び出され、vimの:terminlaや/bin/bashで起動した時などはインタラクティブシェルなので、bashrcが呼び出される。sudo suした時なども
if [ -f .bash/.prompt.bash ]; then
  . .bash/.prompt.bash
fi

case "${OSTYPE}" in
  darwin*) 
      # tabtab source for serverless package
      # uninstall by removing these lines or running `tabtab uninstall serverless`
      [ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
      # tabtab source for sls package
      # uninstall by removing these lines or running `tabtab uninstall sls`
      [ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash
      # tabtab source for slss package
      # uninstall by removing these lines or running `tabtab uninstall slss`
      [ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash
    ;;
  linux*)
    ;;
esac
