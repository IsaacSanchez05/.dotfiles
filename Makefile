#Set the default targets  to 'lunix'
.DEFAULT_GOAL := linux

#Define the targets and their dependencies 
linux: cleanup
	bash ./bin/linux.sh
	
cleanup:
 # Set the permissions of the scripts to be executbale
	chmod +x ./bin/linux.sh
	chmod +x ./bin/cleanup.sh

	bash ./bin/cleanup.sh
