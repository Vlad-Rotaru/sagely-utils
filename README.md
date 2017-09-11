# Utils
## Descusions
1. In momentul in care un task este gata pentru release, trebuie sa-l trecem in "Needs Test", sa le dam link-ul catre pull request si sa-l adignam pe Keith pe task

2. For all of the sagely-* lambda projects Jenkins runs grunt test first.
Then it will run either grunt jasmine_node:accept (most cases) or grunt protractor (if the lambda returns HTML, as in the case of newsletter, reports, and calendar print).

3. The sagely-sign-web project is kind of a special case. It runs grunt webdriver.

4. For the sagely the list of grunt targets are
- grunt test
- grunt protractor:web

5. There is also protractor:facility and protractor:family but don't worry about those until you get to the mobile apps

## Dependencies
**sagely/package.json**
- SagelyCalendarPrint
- sagely-cli
- sagely-db
- sagely-etc
- SagelyRest

**sagely-audit/package.json**
- sagely-db
- sagely-etc
- sagely-cli

**sagely-audit/src/package.json**
- sagely-db
- sagely-etc

**sagely-authentication/package.json**
- sagely-cli

**sagely-authentication/src/package.json**
N/A

**sagely-bounced-email/package.json**
- sagely-etc
- SagelyStorage
- sagely-cli
- sagely-db

**sagely-bounced-email/src/package.json**
- sagely-etc

**sagely-cache/package.json**
- sagely-etc

**sagely-calendar-print/package.json**
- sagely-etc
- sagely-cli
- sagely-db
- SagelyStorage

**sagely-calendar-print/src/package.json**
- sagely-etc

**sagely-cli/package.json**
N/A

**sagely-client-log/package.json**
N/A

**sagely-client-log/src/package.json**
N/A

**sagely-db/package.json**
- sagely-etc

**sagely-etc/package.json**
N/A

**sagely-log/package.json**
- sagely-cli

**sagely-log/src/package.json**
N/A

**sagely-microservices/package.json**
- sagely-etc
- Sagely
- sagely-cli
- sagely-db
- SagelyStorage

**sagely-microservices/src/appStore/package.json**
- sagely-etc

**sagely-microservices/src/environment/package.json**
N/A

**sagely-microservices/src/familyEmail/package.json**
- sagely-etc

**sagely-microservices/src/log/package.json**
- sagely-etc

**sagely-microservices/src/lookupKey/package.json**
- sagely-etc

**sagely-microservices/src/media/package.json**
- sagely-etc

**sagely-microservices/src/readToken/package.json**
- sagely-etc

**sagely-microservices/src/resend/package.json**
- sagely-etc

**sagely-microservices/src/updateFamilyUser/package.json**
- sagely-etc

**sagely-microservices/src/validate/package.json**
- sagely-etc

**sagely-newsletter/package.json**
- sagely-etc
- sagely-cli
- sagely-db
- SagelyRest
- SagelyStorage

**sagely-newsletter/src/package.json**
- sagely-etc

**sagely-pubnub/package.json**
- sagely-db
- sagely-etc
- sagely-cli

**sagely-pubnub/src/package.json**
- sagely-db
- sagely-etc

**sagely-push-notifications/package.json**
- sagely-etc
- sagely-cli
- sagely-db
- SagelyStorage

**sagely-push-notifications/src/package.json**
- sagely-etc

**sagely-reporting/package.json**
- sagely-etc
- sagely-cli
- sagely-db
- SagelyRest
- SagelyStorage

**sagely-reporting/src/package.json**
- sagely-etc

**sagely-rest/package.json**
- sagely-etc
- sagely-cli

**sagely-rest/src/package.json**
- sagely-etc

**sagely-scheduled-emailer/package.json**
- sagely-etc
- sagely-cli
- sagely-db
- SagelyStorage

**sagely-scheduled-emailer/src/schedule/package.json**
- sagely-etc

**sagely-scheduled-emailer/src/send/package.json**
- sagely-etc

**sagely-sign-app/package.json**
N/A

**sagely-sign-web/package.json**
- sagely-cli

**sagely-storage/package.json**
- sagely-cache
- sagely-db
- sagely-etc

**sagely-storage/src/package.json**
- sagely-cache
- sagely-db
- sagely-etc

**sagely-sync/package.json**
- sagely-etc
- sagely-cli
- sagely-db
- SagelyStorage

**sagely-sync/src/package.json**
- sagely-etc

