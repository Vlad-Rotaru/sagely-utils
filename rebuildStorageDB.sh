#!/usr/bin/env bash

# Changing directory
cd ~/Desktop/Sagely

./utils/Servers.sh stop
echo ""

# Update package.json files
./utils/update-package.json.sh
echo ""

# Changing directory
cd ./sagely-storage

# Delete node_modules
rm -rf ./node_modules/sagely-db
rm -rf ./build/package/node_modules/sagely-db

npm install
(cd ./build/package; npm install --production)
cd ..

# Kill API Gateway server
PROC=$(ps aux | grep "server.js ../sagel" | grep -v grep | awk '{print $2}')
if [ $PROC ]; then
	kill $PROC
	echo "Closed API Gateway server"
fi

# Kill Lambda
PROC=$(ps aux | grep "server.js --port 9777" | grep -v grep | awk '{print $2}')
if [ $PROC ]; then
	kill $PROC
	echo "Closed Lambda"
fi

./utils/Servers.sh nec
echo ""
