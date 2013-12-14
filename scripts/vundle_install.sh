#!/usr/bin/env bash

if [ -z `which git`  ]; then
  echo "git command is required to install vundle plugin"
  exit 1
fi

if [ -d "$HOME/.vim/bundle/vundle" ]; then
  echo "Existing vundle has been installed. To re-install, please remove it"
  exit 0
fi

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

echo "Success install vundle plugin. Don't forget to update vim configuraiton file"
