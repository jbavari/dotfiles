#!/bin/bash

for file in $(ls -a | grep "^\.\w")
do
  if [ "$file" = ".git" ]
  then
    continue
  fi

  echo "Symlinking: $file"
  ln -s "$HOME/dotfiles/$file" "$HOME/$file"
done
