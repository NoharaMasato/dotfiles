# ln -snfv ~/dotfiles/.tmux.conf ~/.tmux.conf

DOTPATH=~/dotfiles

for file in .??*
do
  ([ "$file" = ".git" ] || [ "$file" = ".vscode" ]) && continue
  ln -snfv "$DOTPATH/$file" "$HOME"/"$file"
done

bash .vscode/vscode_install.sh
