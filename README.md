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
- N/A
```

**sagely-audit/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-audit/src/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-authentication/package.json**
Dependencies
```
N/A
```

DEV Dependencies
```
- N/A
```

**sagely-authentication/src/package.json**
Dependencies
```
N/A
```

DEV Dependencies
```
- N/A
```

**sagely-bounced-email/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-bounced-email/src/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-cache/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-calendar-print/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-calendar-print/src/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-cli/package.json**
Dependencies
```
N/A
```

DEV Dependencies
```
- N/A
```

**sagely-client-log/package.json**
Dependencies
```
N/A
```

DEV Dependencies
```
- N/A
```

**sagely-client-log/src/package.json**
Dependencies
```
N/A
```

DEV Dependencies
```
- N/A
```

**sagely-db/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-etc/package.json**
Dependencies
```
N/A
```

DEV Dependencies
```
- N/A
```

**sagely-log/package.json**
Dependencies
```
N/A
```

DEV Dependencies
```
- N/A
```

**sagely-log/src/package.json**
Dependencies
```
N/A
```

DEV Dependencies
```
- N/A
```

**sagely-microservices/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-microservices/src/appStore/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-microservices/src/environment/package.json**
Dependencies
```
N/A
```

DEV Dependencies
```
- N/A
```

**sagely-microservices/src/familyEmail/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-microservices/src/log/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-microservices/src/lookupKey/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-microservices/src/media/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-microservices/src/readToken/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-microservices/src/resend/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-microservices/src/updateFamilyUser/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-microservices/src/validate/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-newsletter/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-newsletter/src/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-pubnub/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-pubnub/src/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-push-notifications/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-push-notifications/src/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-reporting/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-reporting/src/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-rest/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-rest/src/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-scheduled-emailer/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-scheduled-emailer/src/schedule/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-scheduled-emailer/src/send/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-sign-app/package.json**
Dependencies
```
N/A
```

DEV Dependencies
```
- N/A
```

**sagely-sign-web/package.json**
Dependencies
```
N/A
```

DEV Dependencies
```
- N/A
```

**sagely-storage/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-storage/src/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-sync/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

**sagely-sync/src/package.json**
Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```

DEV Dependencies
```
- Binary
- file
- (standard
- input)
- matches
```
