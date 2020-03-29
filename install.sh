# ln -snfv ~/dotfiles/.tmux.conf ~/.tmux.conf

DOTPATH=~/dotfiles

for file in .??*
do
  ([ "$file" = ".git" ] || [ "$file" = ".vscode" ]) && continue
  ln -snfv "$DOTPATH/$file" "$HOME"/"$file"
done

case "${OSTYPE}" in
  darwin*) # mac
    bash .vscode/vscode_install.sh
    ;;
esac
