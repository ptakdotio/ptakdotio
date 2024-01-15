#!/bin/sh

for dotfile in .*
do
  if [ -L "$HOME/$dotfile" ]
  then
    rm "$HOME/$dotfile"
  fi

  if [ ! -e "$HOME/$dotfile" ]
  then
    echo "Symlinking ~/$dotfile"
    ln -s "$(pwd)/$dotfile" "$HOME/$dotfile"
  fi
done

