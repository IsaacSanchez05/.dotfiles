# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .nanorc
This is my custom .nanorc configuration for Nano.
the nanorc autobolds the text and auto indents. it also sets the tabsize to 4 and changes the color. it also allows mouse support
## .bashrc
This is my custom .bashrc configuration for Bash.
the bashrc sets the promt and names  for commonly used commands 


this repository contains scripts for setting up a linux developement envirnment 
it has files that include linux.sh which creates a .trash directory in the home directory if it doesnt already exist. it also backs any existing .nanorc file to .bup_nanorc ny replacing it in the etc/nanorc file in the repository. 
cleanup.sh undoes the changes made in linux.sh. it removes nanorc file removes the source ~/.dotfiles/etc/bashrc.custom statement
the makefile provides two targets for running the linuc.sh and cleanup.sh. the linux.sh has a dependency on th clean target which runs the cleanup.sh script. 
