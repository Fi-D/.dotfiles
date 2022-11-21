#!/bin/bash

rm -f ~/.vimrc

sed -e 's,source ~/.dotfiles/bashrc_custom, ,' ~/.bashrc

rm -f ~/.TRASH
