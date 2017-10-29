#!/bin/bash

PATH_TO_FILE="$(cd `dirname $0` && pwd)";
export		RED="[0;31m"
export		GREEN="[0;32m"
export		DEFAULT="[0;39m"

# Vim
if which vim >/dev/null; then
  rm -rf ~/.vimrc ~/.vim 
  ln -s ${PATH_TO_FILE} ~/.vim && mkdir -p ~/.vim/backup ~/.vim/swap 
  ln -s ${PATH_TO_FILE}/vimrc ~/.vimrc 

  vim +PlugUpdate +PlugUpgrade

  echo "For markdown rendering, go read https://github.com/suan/vim-instant-markdown"
else
  echo "${RED}Attention: ${DEFAULT} Vim not found"
fi 
