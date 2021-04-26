bash_conf=~/.bash

for file in $(ls -aF $bash_conf/ | grep -v /)
do
  [ "$file" = ".bashrc" ] && continue
  . $bash_conf/$file
done

source ~/.env

