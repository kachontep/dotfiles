#!/bin/bash

data_dir=$DATA_DIR
if [ -z $DATA_DIR ] ; then
    data_dir=/data
fi

test ! -e ~/.ssh && ln -s $data_dir/.ssh ~/.ssh
test ! -e ~/.tmuxrc.conf && ln -s $data_dir/.dotfiles/tmuxconf ~/.tmuxrc.conf
test ! -e ~/.vimrc && ln -s $data_dir/.dotfiles/vimrc ~/.vimrc
test ! -d ~/.vim-go  && test -d $data_dir/.vim.go && ln -s $data_dir/.vim-go ~/.vim-go

export http_proxy=http://10.89.104.33:443
export https_proxy=http://10.89.104.33:443

export GOROOT=/usr/local/go
export GOPATH=/opt/projects

