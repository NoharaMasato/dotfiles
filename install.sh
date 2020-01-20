# ln -snfv ~/dotfiles/.tmux.conf ~/.tmux.conf

DOTPATH=~/dotfiles

for file in .??*
do
  [ "$file" = ".git" ] && continue
  ln -snfv "$DOTPATH/$file" "$HOME"/"$file"
done
