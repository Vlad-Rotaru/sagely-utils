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
Dependencies
```
N/A
```

DEV Dependencies
```
- SagelyCalendarPrint
- sagely-cli
- sagely-db
- sagely-etc
- SagelyRest
```

**sagely-audit/package.json**
Dependencies
```
- sagely-db
- sagely-etc
```

DEV Dependencies
```
- sagely-cli
```

**sagely-audit/src/package.json**
Dependencies
```
- sagely-db
- sagely-etc
```

DEV Dependencies
```
N/A
```

**sagely-authentication/package.json**
Dependencies
```
N/A
```

DEV Dependencies
```
- sagely-cli
```

**sagely-authentication/src/package.json**
Dependencies
```
N/A
```

DEV Dependencies
```
N/A
```

**sagely-bounced-email/package.json**
Dependencies
```
- sagely-etc
```

DEV Dependencies
```
- SagelyStorage
- sagely-cli
- sagely-db
```

**sagely-bounced-email/src/package.json**
Dependencies
```
- sagely-etc
```

DEV Dependencies
```
N/A
```

**sagely-cache/package.json**
Dependencies
```
- sagely-etc
```

DEV Dependencies
```
N/A
```

**sagely-calendar-print/package.json**
Dependencies
```
- sagely-etc
```

DEV Dependencies
```
- sagely-cli
- sagely-db
- SagelyStorage
```

**sagely-calendar-print/src/package.json**
Dependencies
```
- sagely-etc
```

DEV Dependencies
```
N/A
```

**sagely-cli/package.json**
Dependencies
```
N/A
```

DEV Dependencies
```
N/A
```

**sagely-client-log/package.json**
Dependencies
```
N/A
```

DEV Dependencies
```
N/A
```

**sagely-client-log/src/package.json**
Dependencies
```
N/A
```

DEV Dependencies
```
N/A
```

**sagely-db/package.json**
Dependencies
```
- sagely-etc
- sagely-etc
```

DEV Dependencies
```
N/A
```

**sagely-etc/package.json**
Dependencies
```
N/A
```

DEV Dependencies
```
N/A
```

**sagely-log/package.json**
Dependencies
```
N/A
```

DEV Dependencies
```
- sagely-cli
```

**sagely-log/src/package.json**
Dependencies
```
N/A
```

DEV Dependencies
```
N/A
```

**sagely-microservices/package.json**
Dependencies
```
- sagely-etc
```

DEV Dependencies
```
- Sagely
- sagely-cli
- sagely-db
- SagelyStorage
```

**sagely-microservices/src/appStore/package.json**
Dependencies
```
- sagely-etc
```

DEV Dependencies
```
N/A
```

**sagely-microservices/src/environment/package.json**
Dependencies
```
N/A
```

DEV Dependencies
```
N/A
```

**sagely-microservices/src/familyEmail/package.json**
Dependencies
```
- sagely-etc
```

DEV Dependencies
```
N/A
```

**sagely-microservices/src/log/package.json**
Dependencies
```
- sagely-etc
```

DEV Dependencies
```
N/A
```

**sagely-microservices/src/lookupKey/package.json**
Dependencies
```
- sagely-etc
```

DEV Dependencies
```
N/A
```

**sagely-microservices/src/media/package.json**
Dependencies
```
- sagely-etc
```

DEV Dependencies
```
N/A
```

**sagely-microservices/src/readToken/package.json**
Dependencies
```
- sagely-etc
```

DEV Dependencies
```
N/A
```

**sagely-microservices/src/resend/package.json**
Dependencies
```
- sagely-etc
```

DEV Dependencies
```
N/A
```

**sagely-microservices/src/updateFamilyUser/package.json**
Dependencies
```
- sagely-etc
```

DEV Dependencies
```
N/A
```

**sagely-microservices/src/validate/package.json**
Dependencies
```
- sagely-etc
```

DEV Dependencies
```
N/A
```

**sagely-newsletter/package.json**
Dependencies
```
- sagely-etc
```

DEV Dependencies
```
- sagely-cli
- sagely-db
- SagelyRest
- SagelyStorage
```

**sagely-newsletter/src/package.json**
Dependencies
```
- sagely-etc
```

DEV Dependencies
```
N/A
```

**sagely-pubnub/package.json**
Dependencies
```
- sagely-db
- sagely-etc
```

DEV Dependencies
```
- sagely-cli
```

**sagely-pubnub/src/package.json**
Dependencies
```
- sagely-db
- sagely-etc
```

DEV Dependencies
```
N/A
```

**sagely-push-notifications/package.json**
Dependencies
```
- sagely-etc
```

DEV Dependencies
```
- sagely-cli
- sagely-db
- SagelyStorage
```

**sagely-push-notifications/src/package.json**
Dependencies
```
- sagely-etc
```

DEV Dependencies
```
N/A
```

**sagely-reporting/package.json**
Dependencies
```
- sagely-etc
```

DEV Dependencies
```
- sagely-cli
- sagely-db
- SagelyRest
- SagelyStorage
```

**sagely-reporting/src/package.json**
Dependencies
```
- sagely-etc
```

DEV Dependencies
```
N/A
```

**sagely-rest/package.json**
Dependencies
```
- sagely-etc
```

DEV Dependencies
```
- sagely-cli
```

**sagely-rest/src/package.json**
Dependencies
```
- sagely-etc
```

DEV Dependencies
```
N/A
```

**sagely-scheduled-emailer/package.json**
Dependencies
```
- sagely-etc
```

DEV Dependencies
```
- sagely-cli
- sagely-db
- SagelyStorage
```

**sagely-scheduled-emailer/src/schedule/package.json**
Dependencies
```
- sagely-etc
```

DEV Dependencies
```
N/A
```

**sagely-scheduled-emailer/src/send/package.json**
Dependencies
```
- sagely-etc
```

DEV Dependencies
```
N/A
```

**sagely-sign-app/package.json**
Dependencies
```
N/A
```

DEV Dependencies
```
N/A
```

**sagely-sign-web/package.json**
Dependencies
```
N/A
```

DEV Dependencies
```
- sagely-cli
```

**sagely-storage/package.json**
Dependencies
```
- sagely-cache
- sagely-db
- sagely-etc
- sagely-cache
- sagely-db
- sagely-etc
```

DEV Dependencies
```
N/A
```

**sagely-storage/src/package.json**
Dependencies
```
- sagely-cache
- sagely-db
- sagely-etc
- sagely-cache
- sagely-db
- sagely-etc
```

DEV Dependencies
```
N/A
```

**sagely-sync/package.json**
Dependencies
```
- sagely-etc
```

DEV Dependencies
```
- sagely-cli
- sagely-db
- SagelyStorage
```

**sagely-sync/src/package.json**
Dependencies
```
- sagely-etc
```

DEV Dependencies
```
N/A
```
