#!/bin/bash

# Changing directory
cd ~/Desktop/Sagely

printf " %-32s%15s\t%15s\t%15s\n" "Project" "Config object" "Old val" "New val"
for item in $( ls ); do
	if [ -d $item/.git ]; then
		(
			cd $item
			old=$(git config core.fileMode)
			git config --unset core.fileMode false
			printf " %-32s%15s\t%15s\t%15s\n" "${item}" "core.fileMode" "${old}" "$(git config core.fileMode)"
		)
	fi
done
