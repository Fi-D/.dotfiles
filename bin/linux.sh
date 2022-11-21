#!/bin/bash

KERNEL=$ uname -s

if [ "$KERNEL" != "Linux" ]; then
	2>linuxsetup.log
	exit
fi

mkdir -p /~/.TRASH

FILE=/~/.vimrc
if [ -f "$FILE" ];then
        mv /~/.vimrc /~/.bup_vimrc
        echo "Current .vimrc file was changed to .bup_vimrc" >> linuxsetup.log
fi

cat ./etc/vimrc > /~/.vimrc

echo "source ~/.dotfiles/etc/bashrc_custom" >> /~/.bashrc
