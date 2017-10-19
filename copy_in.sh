#!/bin/bash

for file in $(ls -a | grep "^\.\w")
do
  if "$file" -eq ".git"
  then
    continue
  fi

  echo "$file"
  #cp "../$file" .
  #mv "../$file" "../$file.bak"
  ln -s "/home/jbavari/dotfiles/$file" "/home/jbavari/$file"
  #rm "../$file"
done
