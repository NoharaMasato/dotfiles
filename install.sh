# ln -s ~/dotfiles/.bash_profile ~/
# ln -s ~/dotfiles/.bashrc ~/
# ln -s ~/dotfiles/.vimrc ~/
# ln -s ~/dotfiles/.tmux.conf ~/
# ln -s ~/dotfiles/.bash_aliases ~/
# ln -s ~/dotfiles/.gitconfig ~/

DOTPATH=~/.dotfiles

for f in .??*
do
  [ "$f" = ".git" ] && continue
  ln -snfv "$DOTPATH/$f" "$HOME"/"$f"
done
