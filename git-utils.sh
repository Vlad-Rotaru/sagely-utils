#!/usr/bin/env bash

# Global vars
CHANGE_BRANCH=0;
REBASE_BRANCH=0;

print_usage () {
	echo "$0 is a wrapper script that execut git command on all projects."
	echo ""
	echo "Usage: `basename $0` [options] <command> $*" 1>&2
	echo ""
	echo "Options:"
	echo "  -h          Help (this text)"
	echo "  -c          Change branch"
	echo "Example:"
	echo "  `basename $0` -c checkout master"

	exit 0
}

fatal () {
	echo ""
  echo -e "`basename $0`: $*" 1>&2
	echo ""
  exit 1
}

###############################################################################################################
##################################################### MAIN ####################################################
###############################################################################################################

if [ $# -eq 0 ]; then
  print_usage
fi

while getopts ":c" option; do
	case ${option} in
		c)	EXECUTE_COMMAND=1;
			;;
		:)	fatal "Missing argument. Use -h option"
			;;
		\?)	fatal "-$OPTARG is an invalid option. Use -h option"
			;;
	esac
done

shift $((OPTIND-1))

# Changing directory
cd ~/Desktop/Sagely

for item in $( ls -d sagely*); do
	if [ -d $item/.git ]; then
		(
			cd $item
			echo "At item ${item}"
      echo "$*"
      git $*
			echo ""
		)
	fi
done