# Kill DynamoDB
PROC=$(ps aux | grep "java -D:java.library.path=./DynamoDBLocal_lib/ -jar DynamoDBLocal.jar" | grep -v grep | awk '{print $2}')
if [ $PROC ]
  then
		kill $PROC
		echo "Closed DynamoDB"
fi

sleep 2

# Changing directory
cd ~/Desktop/Sagely

if [ ! -d  ./dynamodb-databases/backup ]; then
  mkdir -p ./dynamodb-databases/backup
fi

if [ "$1" = "-b" -a "$2" != "" ]; then
  if [ -f ./dynamodb-databases/test_us-west-2.db ]; then
    FILE_NAME="$(date +%Y%m%d-%H%M%S)-${2}.db"
    rm -f ./dynamodb-databases/backup/${FILE_NAME}
    cp ./dynamodb-databases/test_us-west-2.db ./dynamodb-databases/backup/${FILE_NAME}
    echo "Database was backed up into ${FILE_NAME}"
    exit 1
  else
    echo "Database file does not exist"
    exit 1
  fi
elif [ "$1" != "-b" -a "$1" != "" -a "$2" = "" ]; then
  if [ -f ./dynamodb-databases/backup/${1}.db ]; then
    rm -f ./dynamodb-databases/test_us-west-2.db
    cp ./dynamodb-databases/backup/${1}.db ./dynamodb-databases/test_us-west-2.db
  else
    echo "Backup file does not exist"
    exit 1
  fi
else
	echo "Usage: `basename $0` [options] <name>" 1>&2
	echo ""
	echo "Options:"
	echo "  -b          backup"
	ls ./dynamodb-databases/backup | grep '.db'

	exit 0
fi

sleep 2

./Servers.sh nec
