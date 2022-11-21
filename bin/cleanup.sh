#!/bin/bash

rm -f ~/.vimrc  #Removing the .vimrc file in the home directory

sed -i '/source ~\/\.dotfiles\/etc\/bashrc_custom/d' ~/.bashrc  #Removing the line we previously added at the end of .bashrc file

rm -rf ~/.TRASH  #Removing the .TRASH directory we created from linux.sh
