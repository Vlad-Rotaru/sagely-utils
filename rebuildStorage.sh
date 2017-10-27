#!/usr/bin/env bash

# Changing directory
cd ~/Desktop/Sagely/sagely-storage
grunt copy:build
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

cd ~/Desktop/Sagely/utils
./Servers.sh nec
