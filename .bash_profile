bash_conf=~/.bash

if test -f "$HOME/.env"; then
  source ~/.env
fi

for file in $(ls -aF $bash_conf/ | grep -v /)
do
  [ "$file" = ".bashrc" ] && continue
  . $bash_conf/$file
done

