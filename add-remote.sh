#!/bin/bash

# Changing directory
cd ~/Desktop/Sagely

for item in $( ls -d sagely*); do
	if [ -d $item/.git ]; then
	  URL="https://github.com/Vlad-Rotaru/${item}.git"
		(
			cd $item
			git remote add Vlad-Rotaru ${URL}
		)
	else
	  echo "The project ${item} does not have a .git repo"
	fi
done
