#!/bin/sh

# Changing directory
cd ~/Desktop/Sagely

FILES="sagely/package.json sagely-audit/package.json sagely-audit/src/package.json sagely-authentication/package.json sagely-authentication/src/package.json sagely-bounced-email/package.json sagely-bounced-email/src/package.json sagely-cache/package.json sagely-calendar-print/package.json sagely-calendar-print/src/package.json sagely-cli/package.json sagely-client-log/package.json sagely-client-log/src/package.json sagely-db/package.json sagely-etc/package.json sagely-log/package.json sagely-log/src/package.json sagely-microservices/package.json sagely-microservices/src/appStore/package.json sagely-microservices/src/environment/package.json sagely-microservices/src/familyEmail/package.json sagely-microservices/src/log/package.json sagely-microservices/src/lookupKey/package.json sagely-microservices/src/media/package.json sagely-microservices/src/readToken/package.json sagely-microservices/src/resend/package.json sagely-microservices/src/updateFamilyUser/package.json sagely-microservices/src/validate/package.json sagely-newsletter/package.json sagely-newsletter/src/package.json sagely-pubnub/package.json sagely-pubnub/src/package.json sagely-push-notifications/package.json sagely-push-notifications/src/package.json sagely-reporting/package.json sagely-reporting/src/package.json sagely-rest/package.json sagely-rest/src/package.json sagely-scheduled-emailer/package.json sagely-scheduled-emailer/src/schedule/package.json sagely-scheduled-emailer/src/send/package.json sagely-sign-app/package.json sagely-sign-web/package.json sagely-storage/package.json sagely-storage/src/package.json sagely-sync/package.json sagely-sync/src/package.json"
for item in $FILES; do
  echo "**${item}**"
	echo "Dependencies"
	echo "\`\`\`"
	DEPENDACIES="`grep -Ezo '"dependencies": {[^}]*}' ${item} | grep -ia '"sagely.*": ".*"' | sed -e 's/"\(sagely.*\)": ".*",/\1/ig'`"

  if [ "${DEPENDACIES}" ]; then
      echo ${DEPENDACIES} | sed -e 's/ /\n/g' | sed -e 's/^/- /g'
  else
	  echo "N/A"
	fi
	echo "\`\`\`"
	echo ""

	echo "DEV Dependencies"
	echo "\`\`\`"
	DEV_DEPENDACIES="`grep -Ezo '"devDependencies": {[^}]*}' ${item} | grep -ia '"sagely.*": ".*"' | sed -e 's/"\(sagely.*\)": ".*",/\1/ig'`"
	if [ "${DEV_DEPENDACIES}" ]; then
      echo ${DEV_DEPENDACIES} | sed -e 's/ /\n/g' | sed -e 's/^/- /g'
  else
	  echo "- N/A"
	fi
	echo "\`\`\`"
	echo ""
done
