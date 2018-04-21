#!/bin/bash

for file in $(ls -a | grep "^\.\w")
do
  if [ "$file" == ".git" ]
  then
    continue
  fi

  echo "Symlinking: $file"
  ln -s "/home/jbavari/dotfiles/$file" "/home/jbavari/$file"
done
