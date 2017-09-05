 #!/bin/bash

# Log user session
LOG_DISABLED=0
LOG_START_SESSION=0
LOG_FILE_NAME="$0.$(date +%Y%m%d-%H%M%S).log"
INFO_COLOR="\e[44m"
COMMAND_COLOR="\e[92m"

fatal () {
	echo ""
  echo -e "`basename $0`: $*" 1>&2
	echo ""
  exit 1
}

print_usage () {
	echo "$0 is a wrapper script."
	echo ""
	echo "Usage: `basename $0` [options] <targets> $*" 1>&2
	echo ""
	echo "Options:"
	echo "  -h          Help (this text)"
	echo "  -a          do it all"
	echo "  -i          remove node_modules and do npm install"
	echo "  -p          git pull"
	echo "  -g          grunt development"
	echo "  -s          Load staging"
	echo "  -u          Update sagely modules"
	echo "  -L          disable logging the session to a file"

	exit 0
}

# Start rebuild process and log the session
start_main_with_logging () {
	echo "--- Started $0 session at:" > $LOG_FILE_NAME
	echo "$(date)" >> $LOG_FILE_NAME
	echo "" >> $LOG_FILE_NAME
	echo "--- Started the command \"$0 $@\"" >> $LOG_FILE_NAME
	echo "" >> $LOG_FILE_NAME

	# Test if we have execute rights on the file and build command line accordingly
	if [ -x "$0" ]; then
		COMMAND="$0 -l $@"
	else
		COMMAND="bash $0 -l $@"
	fi

	# Start the installation with logging enabled
	script -a -q -f -c "$COMMAND" $LOG_FILE_NAME

	exit 0
}

###############################################################################################################
##################################################### MAIN ####################################################
###############################################################################################################

if [ $# -eq 0 ]; then
  print_usage
fi

while getopts ":aipgsuhLl" option; do
	case ${option} in
		a)	UPDATE=1;INSTALL=0;GIT_PULL=1;GRUNT_DEVELOPMENT=1;LOAD_STAGING=1
			;;
		i)	INSTALL=1; UPDATE=0
			;;
		p)	GIT_PULL=1
			;;
		g)	GRUNT_DEVELOPMENT=1
			;;
		s)	LOAD_STAGING=1
			;;
		u)	UPDATE=1
			;;
		h) 	print_usage
			;;
		l)	LOG_START_SESSION=1
			;;
		L)	LOG_DISABLED=1
			;;
		:)	fatal "Missing argument. Use -h option"
			;;
		\?)	fatal "-$OPTARG is an invalid option. Use -h option"
			;;
	esac
done

COMMAND_OPTS=$@

shift $((OPTIND-1))

# Start the user session logging
if [ $LOG_DISABLED -eq 0 ] && [ $LOG_START_SESSION -eq 0 ]; then
	start_main_with_logging $COMMAND_OPTS
fi

# Changing directory
cd ~/Desktop/Sagely

# Making project list
PROJECT_LIST="`ls -d sagely*`"
if [ $# -gt 0 ]; then
  PROJECT_LIST=""
  for item in $*; do
    if [ -d "${item}" ]; then
      PROJECT_LIST+="${item} "
    else
      echo "The project ${item} does not exist, please review the list"
      exit 1
    fi
  done
fi

echo -e "${INFO_COLOR}Project list:\e[0m"
for item in $PROJECT_LIST; do
  echo ${item};
done
echo ""

# Stoping all servers
echo -e "${COMMAND_COLOR}./Servers.sh stop\e[0m";
./utils/Servers.sh stop
echo ""

echo -e "${INFO_COLOR}Replace all package.json with the local projects paths\e[0m";
echo -e "${COMMAND_COLOR}./update-package.json.sh\e[0m";
./utils/update-package.json.sh
echo ""

for item in $PROJECT_LIST; do
  (
    echo -e "${INFO_COLOR}Starting ${item}\e[0m";

    # Changing directory to item
    echo -e "${COMMAND_COLOR}cd ${item}\e[0m";
    cd ${item}
    echo ""

    # If we have git repo, pull
    if [ "${GIT_PULL}" = "1" -a -d ./.git ]; then
      echo -e "${INFO_COLOR}Pulling changes from github\e[0m";

      echo -e "${COMMAND_COLOR}git pull\e[0m";
      git pull
      echo ""
    fi

    NPM_COMMAND="npm install --no-optional"
    if [ "$item" = "sagely-calendar-print" -o "$item" = "sagely-newsletter" -o "$item" = "sagely-reporting" -o "$item" = "sagely-sign-web" ]; then
      NPM_COMMAND="npm install --no-optional"
    else
      NPM_COMMAND="npm install"
    fi

    # If we have package.json reset all modules
    if [ "${INSTALL}" = "1" -a "${UPDATE}" != "1" -a -f ./package.json ]; then
      echo -e "${INFO_COLOR}Removing node_modules and do npm install\e[0m";

      echo -e "${COMMAND_COLOR}rm -rf ./node_modules\e[0m";
      rm -rf ./node_modules

      echo -e "${COMMAND_COLOR}${NPM_COMMAND}\e[0m";
      $NPM_COMMAND
      echo ""
    fi

    # If we have package.json update only sagely-* inside node_modules
    if [ "${INSTALL}" != "1" -a "${UPDATE}" = "1" -a -f ./package.json ]; then
      echo -e "${INFO_COLOR}Removing node_modules/sagely* and do npm update\e[0m";

      echo -e "${COMMAND_COLOR}rm -rf ./node_modules/sagely*\e[0m";
      rm -rf ./node_modules/sagely*

      echo -e "${COMMAND_COLOR}rm -rf ./node_modules/Sagely*\e[0m";
      rm -rf ./node_modules/Sagely*

      echo -e "${COMMAND_COLOR}${NPM_COMMAND}\e[0m";
      $NPM_COMMAND
      echo ""
    fi

    # If we have Gruntfile.js build project
    if [ "${GRUNT_DEVELOPMENT}" = "1" -a -f ./Gruntfile.js ]; then
      if [ "$item" = "sagely-db" -o "$item" = "sagely-etc" -o "$item" = "sagely-cache" ]; then
        echo -e "${INFO_COLOR}Exdecuting grunt build\e[0m";

        echo -e "${COMMAND_COLOR}grunt build\e[0m";
        grunt build
      elif [ "$item" = "sagely-sign-web" -o "$item" = "sagely" ]; then
        echo -e "${INFO_COLOR}Exdecuting grunt buildDev\e[0m";

        echo -e "${COMMAND_COLOR}grunt buildDev\e[0m";
        grunt buildDev
      else
        echo -e "${INFO_COLOR}Exdecuting grunt development\e[0m";

        echo -e "${COMMAND_COLOR}grunt development\e[0m";
        grunt development
      fi
    fi

    # Some separators
    echo -e "${INFO_COLOR}"
    echo ""
    echo "--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
    echo "--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
    echo "--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
    echo ""
    echo -e "\e[0m"
  )
done

echo -e "${INFO_COLOR}Restore all package.json files to repo state\e[0m";
echo -e "${COMMAND_COLOR}./update-package.json.sh\e[0m";
./utils/update-package.json.sh --reset
echo ""

# If database in file remove it
if [ "${LOAD_STAGING}" = "1" ]; then
  if [ -f ./dynamodb-databases/test_us-west-2.db ]; then
    echo -e "${COMMAND_COLOR}rm -f ./dynamodb-databases/test_us-west-2.db\e[0m";
    rm -f ./dynamodb-databases/test_us-west-2.db
  fi

  # Restart all servers
  echo -e "${COMMAND_COLOR}./Servers.sh\e[0m";
  ./utils/Servers.sh
  echo ""

  while ! nc -z localhost 7111; do
    echo -e "${COMMAND_COLOR}Waiting application to launch on 7111... sleep 5s\e[0m";
    sleep 5
  done

  while ! nc -z localhost 3000; do
    echo -e "${COMMAND_COLOR}Waiting application to launch on 3000... sleep 5s\e[0m";
    sleep 5
  done

  echo "Application launched"
  echo ""

  # Load staging data
  echo -e "${INFO_COLOR}Load Staging Data\e[0m";

  echo -e "${COMMAND_COLOR}( cd sagely && ./etc/loadStaging.sh )\e[0m";
  ( cd sagely && ./etc/loadStaging.sh )
  echo ""

  # Backup database
  if [ -f ./dynamodb-databases/test_us-west-2.db ]; then
    echo -e "${COMMAND_COLOR}./resetDB.sh -b sagely\e[0m";
    ./utils/resetDB.sh -b sagely
    echo ""
    ./utils/Servers.sh nec
  fi
fi