#!/bin/bash


KERNEL=$ uname -s   #Storing the uname in the KERNEL variable


if [ $KERNEL="Linux" ]; then   #Checking to see if the uname (OSname) is equal to Linux, if so then do all the following.

	mkdir -p ~/.TRASH   #Making the directory .Trash if it doesn't exist already

	FILE=~/.vimrc    #Checking to see if .vimrc is in the home directory.
	if [ -f "$FILE" ];then
        	mv ~/.vimrc ~/.bup_vimrc   #if so, change its name from .vimrc to .bup_vimrc
        	echo "Current .vimrc file was changed to .bup_vimrc" >> linuxsetup.log  #Also dump a message saying that the current .vimrc file was changed to .bup_vimrc
	fi

	cat ./etc/vimrc > ~/.vimrc     #Redirect the contents of vimrc in etc directory to .vimrc

	echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc   #Print this line at the end of .bashrc file
else    #If the uname (OSname) does not equal to Linux then do the following
	2>linuxsetup.log  #Dump an error message to the linuxsetup.log
	exit #Then exit
fi
