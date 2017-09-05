#!/bin/bash

# Changing directory
cd ~/Desktop/Sagely

# File list
FILES="./sagely/package.json ./sagely-audit/package.json ./sagely-audit/src/package.json ./sagely-authentication/package.json ./sagely-authentication/src/package.json ./sagely-bounced-email/package.json ./sagely-bounced-email/src/package.json ./sagely-cache/package.json ./sagely-calendar-print/package.json ./sagely-calendar-print/src/package.json ./sagely-cli/package.json ./sagely-client-log/package.json ./sagely-client-log/src/package.json ./sagely-db/package.json ./sagely-etc/package.json ./sagely-log/package.json ./sagely-log/src/package.json ./sagely-microservices/package.json ./sagely-microservices/src/appStore/package.json ./sagely-microservices/src/environment/package.json ./sagely-microservices/src/familyEmail/package.json ./sagely-microservices/src/log/package.json ./sagely-microservices/src/lookupKey/package.json ./sagely-microservices/src/media/package.json ./sagely-microservices/src/readToken/package.json ./sagely-microservices/src/resend/package.json ./sagely-microservices/src/updateFamilyUser/package.json ./sagely-microservices/src/validate/package.json ./sagely-newsletter/package.json ./sagely-newsletter/src/package.json ./sagely-pubnub/package.json ./sagely-pubnub/src/package.json ./sagely-push-notifications/package.json ./sagely-push-notifications/src/package.json ./sagely-reporting/package.json ./sagely-reporting/src/package.json ./sagely-rest/package.json ./sagely-rest/src/package.json ./sagely-scheduled-emailer/package.json ./sagely-scheduled-emailer/src/schedule/package.json ./sagely-scheduled-emailer/src/send/package.json ./sagely-sign-app/package.json ./sagely-sign-web/package.json ./sagely-storage/package.json ./sagely-storage/src/package.json ./sagely-sync/package.json ./sagely-sync/src/package.json"
#find . -not -path '*node_modules*' -not -path '*bower_components*' -not -path '*build*' -type f -name '*package.json'

if [ "$1" = "--reset" ]; then
  for item in $FILES; do
    echo -e "\e[31mReseting ${item}\e[0m"
    if [ -f ${item} ]; then
      DIR=$(dirname "${item}")
      FILE=$(basename "${item}")
      (
        cd $DIR
        git checkout -- ${FILE}
      )
    fi
  done
else
  for item in $FILES; do
    echo -e "\e[31mReplacing ${item}\e[0m"
    if grep -q '"sagely": ".*"' ${item}; then
      sed -i 's/"sagely": ".*",/"sagely": "\/home\/sagely\/Desktop\/Sagely\/sagely",/' $item
    fi

    if grep -q '"Sagely": ".*"' ${item}; then
      sed -i 's/"Sagely": ".*",/"Sagely": "\/home\/sagely\/Desktop\/Sagely\/sagely",/' $item
    fi

    if grep -q '"sagely-etc": ".*"' ${item}; then
      sed -i 's/"sagely-etc": ".*",/"sagely-etc": "\/home\/sagely\/Desktop\/Sagely\/sagely-etc",/' $item
    fi

    if grep -q '"sagely-db": ".*"' ${item}; then
      sed -i 's/"sagely-db": ".*",/"sagely-db": "\/home\/sagely\/Desktop\/Sagely\/sagely-db",/' $item
    fi

    if grep -q '"sagely-cli": ".*"' ${item}; then
      sed -i 's/"sagely-cli": ".*",/"sagely-cli": "\/home\/sagely\/Desktop\/Sagely\/sagely-cli",/' $item
    fi

    if grep -q '"sagely-cache": ".*"' ${item}; then
      sed -i 's/"sagely-cache": ".*",/"sagely-cache": "\/home\/sagely\/Desktop\/Sagely\/sagely-cache",/' $item
    fi

    if grep -q '"SagelyRest": ".*"' ${item}; then
      sed -i 's/"SagelyRest": ".*",/"SagelyRest": "\/home\/sagely\/Desktop\/Sagely\/sagely-rest",/' $item
    fi

    if grep -q '"SagelyStorage": ".*"' ${item}; then
      sed -i 's/"SagelyStorage": ".*",/"SagelyStorage": "\/home\/sagely\/Desktop\/Sagely\/sagely-storage",/' $item
    fi

    if grep -q '"SagelyCalendarPrint": ".*"' ${item}; then
      sed -i 's/"SagelyCalendarPrint": ".*",/"SagelyCalendarPrint": "\/home\/sagely\/Desktop\/Sagely\/sagely-calendar-print",/' $item
    fi
  done
fi


