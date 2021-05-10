bash_conf=~/.bash

source ~/.env
for file in $(ls -aF $bash_conf/ | grep -v /)
do
  [ "$file" = ".bashrc" ] && continue
  . $bash_conf/$file
done

