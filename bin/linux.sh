#!/bin/bash

#check the operating system type is ‘Linux’.
unamestr=$(uname)
if [ $(uname) != "Linux" ]; then
echo "ERROR: this script only works on linux systems" ./linuxsetup.log
	exit
	fi
	#Create the ‘.TRASH’ directory in your home directory if it doesn’t exist already.
	mkdir -p ~/".TRASH"

	# If the '.nanorc' file exist in the home directory, change its name to '.bup_nanorc'
	if [[ -f ~/.nanorc ]]; then
	mv ~/.nanorc ~/.bup_nanorc
	echo "The current nanorc file was changed to '.bup_nanorc'."
	fi

	#Redirect (overite) the contents of the etc/nanorc file to a file called '.nanorc' (with the dot in the front) in your home directory
	cp /etc/nanorc ~/.nanorc

	#Add the statement ‘source ∼/.dotfiles/etc/bashrc custom’ to the end of the .bashrc
	echo "source /dotfiles/etc/bashrc.custom" >> ~/.bashrc

