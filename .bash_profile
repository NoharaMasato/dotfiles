bash_conf=~/.bash

# load all files inside bash_conf
for file in $(ls -aF $bash_conf/ | grep -v /)
do
  . $bash_conf/$file
done

