# Kill Sagely
PROC=$(ps aux | grep "server.js --port 3000" | grep -v grep | awk '{print $2}')
if [ $PROC ]
  then
	kill $PROC
	echo "Closed Sagely"
fi

# Changing directory
cd ~/Desktop/Sagely/sagely && grunt buildWeb && cd .. && ./Servers.sh nec
