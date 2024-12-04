#!/bin/bash
#This script is meant to reverse anything that was done in the ‘linux.sh’ script.

#Remove the .nanorc file in your home directory
rm -f ~/.nanorc

#Remove the line ‘source ∼/.dotfiles/etc/bashrc custom’ in your .bashrc file in your home directory
sed -i '/source \/\.dotfiles\/bashrc_custom/d' ~/.bashrc

#Remove the .TRASH directory inside of your home directory.
rm -rf ~/".TRASH"
