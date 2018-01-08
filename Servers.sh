#!/usr/bin/env bash

ALL_SERVICES=true
if [ $1 ]
  then
	if [ $1 == "nec" ]
	  then
		echo "Starting only those that are necessary"
		ALL_SERVICES=false
	fi

	# check for allowed params
	if [ $1 != "nec" ] && [ $1 != "stop" ]
	  then
		echo "Allowed params are: nec, stop"
		exit 0
	fi
fi

# Kill Sagely
PROC=$(ps aux | grep "server.js --port 3000" | grep -v grep | awk '{print $2}')
SAGELY=true
if [ "$PROC" != "" ]
  then
	if $ALL_SERVICES
	  then
		kill -9 $PROC
		echo "Closed Sagely"
	else
		echo "Sagely already started, no need to start it again"
		SAGELY=false
	fi
fi

# Kill API Gateway server
PROC=$(ps aux | grep "server.js ../sagel" | grep -v grep | awk '{print $2}')
SAGELY_API=true
if [ "$PROC" != "" ]
  then
	if $ALL_SERVICES
	  then
		kill -9 $PROC
		echo "Closed API Gateway server"
	else
		echo "API Gateway server already started, no need to start it again"
		SAGELY_API=false
	fi
fi

# Kill Fake SNS
PROC=$(ps aux | grep "fake_sns --port 9666 --region us-west-2" | grep -v grep | awk '{print $2}')
SAGELY_SNS=true
if [ "$PROC" != "" ]
  then
	if $ALL_SERVICES
	  then
		kill -9 $PROC
		echo "Closed Fake SNS"
	else
		echo "Fake SNS already started, no need to start it again"
		SAGELY_SNS=false
	fi
fi

# Kill Lambda
PROC=$(ps aux | grep "server.js --port 9777" | grep -v grep | awk '{print $2}')
SAGELY_LAMBDA=true
if [ "$PROC" != "" ]
  then
	if $ALL_SERVICES
	  then
		kill -9 $PROC
		echo "Closed Lambda"
	else
		echo "Lambda already started, no need to start it again"
		SAGELY_LAMBDA=false
	fi
fi

# Kill Fake S3
PROC=$(ps aux | grep "fakes3 --root ./ --port 9444" | grep -v grep | awk '{print $2}')
SAGELY_S3=true
if [ "$PROC" != "" ]
  then
	if $ALL_SERVICES
	  then
		kill -9 $PROC
		echo "Closed Fake S3"
	else
		echo "Fake S3 already started, no need to start it again"
		SAGELY_S3=false
	fi
fi

# Kill DynamoDB
PROC=$(ps aux | grep "java -D:java.library.path=./DynamoDBLocal_lib/ -jar DynamoDBLocal.jar" | grep -v grep | awk '{print $2}')
SAGELY_DYNAMO=true
if [ "$PROC" != "" ]
  then
	if $ALL_SERVICES
	  then
		kill -9 $PROC
		echo "Closed DynamoDB"
	else
		echo "DynamoDB already started, no need to start it again"
		SAGELY_DYNAMO=false
	fi
fi

# Kill Ses
PROC=$(ps aux | grep "server.js --port 9555" | grep -v grep | awk '{print $2}')
SAGELY_SES=true
if [ "$PROC" != "" ]
  then
	if $ALL_SERVICES
	  then
		kill -9 $PROC
		echo "Closed Ses"
	else
		echo "Ses already started, no need to start it again"
		SAGELY_SES=false
	fi
fi

# Kill Redis server
PROC=$(ps aux | grep "redis-server" | grep -v grep | awk '{print $2}')
SAGELY_REDIS=true
if [ "$PROC" != "" ]
  then
	if $ALL_SERVICES
	  then
		kill -9 $PROC
		echo "Closed Redis server"
	else
		echo "Redis server already started, no need to start it again"
		SAGELY_REDIS=false
	fi
fi

# Kill Sign Web
PROC=$(ps aux | grep "node etc/server.js --port 7112" | grep -v grep | awk '{print $2}')
SAGELY_SIGN_WEB=true
if [ $PROC ]
  then
	if $ALL_SERVICES
	  then
		kill $PROC
		echo "Closed Sign Web server"
	else
		echo "Sign web server already started, no need to start it again"
		SAGELY_SIGN_WEB=false
	fi
fi

# there is no need to continue
if [ $1 ]
  then
	if [ $1 == "stop" ]
	  then
		echo "Stoping"
		exit 0
	fi
fi

# Start Fake SNS
if $SAGELY_SNS
  then
	echo "Starting Fake SNS"
	gnome-terminal --title="Fake SNS" --working-directory="/home/sagely/Desktop/Sagely/fake_sns" -e "./fake_sns --port 9666 --region us-west-2" --geometry 55x28+510+10 &
	sleep 2
fi

# Start API Gateway server
if $SAGELY_API
  then
	echo "Starting API Gateway server"
	gnome-terminal --title="API Gateway" --working-directory="/home/sagely/Desktop/Sagely/api-gateway-server" -e "node server.js ../sagely-calendar-print/etc/swagger.yaml ../sagely-reporting/etc/swagger.yaml ../sagely-microservices/etc/swagger.yaml ../sagely-newsletter/etc/swagger.yaml ../sagely-rest/etc/swagger.yaml ../sagely-rest/etc/publicSwagger.yaml ../sagely-rest/etc/validateSwagger.yaml ../sagely-client-log/etc/swagger.yaml" --geometry 55x28+10+10 &
fi

# Start Lambda
if $SAGELY_LAMBDA
  then
	echo "Starting Lambda"
	gnome-terminal --title="Lambda" --working-directory="/home/sagely/Desktop/Sagely/lambda-mock" -e "node server.js --port 9777" --geometry 55x28+960+10 &
fi

# Start Fake S3
if $SAGELY_S3
  then
	echo "Starting Fake S3"
	gnome-terminal --title="Fake S3" --working-directory="/home/sagely/Desktop/Sagely/fakes3" -e "fakes3 --root ./ --port 9444" --geometry 55x28+1410+10 &
fi

# Start DynamoDB
if $SAGELY_DYNAMO
  then
	echo "Starting DynamoDB"
	(
	  cd /home/sagely/Desktop/Sagely
    if [ ! -d ./dynamodb-databases/backup ]; then
      mkdir -p ./dynamodb-databases/backup
    fi
  )

	gnome-terminal --title="DynamoDB" --working-directory="/home/sagely/Desktop/Sagely/dynamodb" -e "java -D:java.library.path=./DynamoDBLocal_lib/ -jar DynamoDBLocal.jar -dbPath /home/sagely/Desktop/Sagely/dynamodb-databases" --geometry 55x31+10+500 &
	#gnome-terminal --title="DynamoDB" --working-directory="/home/sagely/Desktop/Sagely/dynamodb" -e "java -D:java.library.path=./DynamoDBLocal_lib/ -jar DynamoDBLocal.jar -inMemory" --geometry 55x31+10+500 &
fi

# Start Ses
if $SAGELY_SES
  then
	echo "Starting Ses"
	gnome-terminal --title="Ses" --working-directory="/home/sagely/Desktop/Sagely/ses-mock" -e "node server.js --port 9555" --geometry 55x31+510+500 &
fi

# Start Redis server
if $SAGELY_REDIS
  then
	echo "Starting Redis server"
	gnome-terminal --title="Redis" --working-directory="/home/sagely/Desktop/Sagely" -e "redis-server" --geometry 55x31+960+500 &
fi

sleep 2

# Start Sagely
if $SAGELY
  then
	echo "Starting Sagely"
	gnome-terminal --title="Sagely" --working-directory="/home/sagely/Desktop/Sagely/sagely" -e "node server.js --port 3000" --geometry 55x31+1410+500 &
fi

# Start Sign Web server
if $SAGELY_SIGN_WEB
  then
	echo "Starting Sign Web server"
	gnome-terminal --title="Sign Web" --working-directory="/home/sagely/Desktop/Sagely/sagely-sign-web" -e "node etc/server.js --port 7112" --geometry 55x31+510+500 &
fi


sleep 1
echo "Finished"
