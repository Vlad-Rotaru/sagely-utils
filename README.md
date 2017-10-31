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
- sagely-calendar-print#cbf4900
- sagely-cli#a671af4
- sagely-db#afaccb2
- sagely-etc#16dd096
- sagely-rest#d1e1ea5
```

**sagely-audit/package.json**
Dependencies
```
- sagely-db#ec690d0
- sagely-etc#ae3ff4e
```

DEV Dependencies
```
- sagely-cli#1cc548d
```

**sagely-audit/src/package.json**
Dependencies
```
- sagely-db#ec690d0
- sagely-etc#ae3ff4e
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
- sagely-cli#930818e
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
- sagely-etc#8fdf5e4
```

DEV Dependencies
```
- sagely-storage#1ab80f6
- sagely-cli#1cc548d
- sagely-db#3a70a6a
```

**sagely-bounced-email/src/package.json**
Dependencies
```
- sagely-etc#8fdf5e4
```

DEV Dependencies
```
N/A
```

**sagely-cache/package.json**
Dependencies
```
N/A
```

DEV Dependencies
```
N/A
```

**sagely-calendar-print/package.json**
Dependencies
```
- sagely-etc#8fdf5e4
- sagely-styles
```

DEV Dependencies
```
- sagely-cli#a6041c0
- sagely-db#3a70a6a
- sagely-storage#1ab80f6
```

**sagely-calendar-print/src/package.json**
Dependencies
```
- sagely-etc#8fdf5e4
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
- sagely-etc#ae3ff4e
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
N/A
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
- sagely-etc#8fdf5e4
```

DEV Dependencies
```
- sagely#d3b5d32
- sagely-cli#1cc548d
- sagely-db#3a70a6a
- sagely-storage#1ab80f6
```

**sagely-microservices/src/appStore/package.json**
Dependencies
```
- sagely-etc#8fdf5e4
```

DEV Dependencies
```
N/A
```

**sagely-microservices/src/environment/package.json**
Dependencies
```
- "sagely-etc":
- +ssh:/hub.com:TeamPraxis/sagely-etc#8fdf5e4"
```

DEV Dependencies
```
N/A
```

**sagely-microservices/src/familyEmail/package.json**
Dependencies
```
- sagely-etc#8fdf5e4
```

DEV Dependencies
```
N/A
```

**sagely-microservices/src/log/package.json**
Dependencies
```
- "sagely-etc":
- +ssh:/hub.com:TeamPraxis/sagely-etc#8fdf5e4"
```

DEV Dependencies
```
N/A
```

**sagely-microservices/src/lookupKey/package.json**
Dependencies
```
- sagely-etc#8fdf5e4
```

DEV Dependencies
```
N/A
```

**sagely-microservices/src/media/package.json**
Dependencies
```
- "sagely-etc":
- +ssh:/hub.com:TeamPraxis/sagely-etc#8fdf5e4"
```

DEV Dependencies
```
N/A
```

**sagely-microservices/src/readToken/package.json**
Dependencies
```
- sagely-etc#8fdf5e4
```

DEV Dependencies
```
N/A
```

**sagely-microservices/src/resend/package.json**
Dependencies
```
- sagely-etc#8fdf5e4
```

DEV Dependencies
```
N/A
```

**sagely-microservices/src/updateFamilyUser/package.json**
Dependencies
```
- sagely-etc#8fdf5e4
```

DEV Dependencies
```
N/A
```

**sagely-microservices/src/validate/package.json**
Dependencies
```
- sagely-etc#8fdf5e4
```

DEV Dependencies
```
N/A
```

**sagely-newsletter/package.json**
Dependencies
```
- sagely-etc#ae3ff4e
- sagely-styles
```

DEV Dependencies
```
- sagely-cli#aba27a5
- sagely-db#ec690d0
- sagely-rest#d887df9
- sagely-storage#f9b814c
```

**sagely-newsletter/src/package.json**
Dependencies
```
- sagely-etc#ae3ff4e
```

DEV Dependencies
```
N/A
```

**sagely-pubnub/package.json**
Dependencies
```
- sagely-db#ec690d0
- sagely-etc#ae3ff4e
```

DEV Dependencies
```
- sagely-cli#a433e04
```

**sagely-pubnub/src/package.json**
Dependencies
```
- sagely-db#ec690d0
- sagely-etc#ae3ff4e
```

DEV Dependencies
```
N/A
```

**sagely-push-notifications/package.json**
Dependencies
```
- sagely-etc#ae3ff4e
```

DEV Dependencies
```
- sagely-cli#1cc548d
- sagely-db#ec690d0
- sagely-storage#f9b814c
```

**sagely-push-notifications/src/package.json**
Dependencies
```
- sagely-etc#ae3ff4e
```

DEV Dependencies
```
N/A
```

**sagely-reporting/package.json**
Dependencies
```
- sagely-etc#ae3ff4e
```

DEV Dependencies
```
- sagely-cli#1cc548d
- sagely-db#ec690d0
- sagely-rest#d887df9
- sagely-storage#f9b814c
```

**sagely-reporting/src/package.json**
Dependencies
```
- sagely-etc#ae3ff4e
```

DEV Dependencies
```
N/A
```

**sagely-rest/package.json**
Dependencies
```
- sagely-etc#16dd096
```

DEV Dependencies
```
- sagely-cli#aba27a5
```

**sagely-rest/src/package.json**
Dependencies
```
- sagely-etc#16dd096
```

DEV Dependencies
```
N/A
```

**sagely-scheduled-emailer/package.json**
Dependencies
```
- sagely-etc#ae3ff4e
```

DEV Dependencies
```
- sagely-cli#1cc548d
- sagely-db#ec690d0
- sagely-storage#f9b814c
```

**sagely-scheduled-emailer/src/schedule/package.json**
Dependencies
```
- sagely-etc#ae3ff4e
```

DEV Dependencies
```
N/A
```

**sagely-scheduled-emailer/src/send/package.json**
Dependencies
```
- sagely-etc#ae3ff4e
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
- sagely-cli#aba27a5
```

**sagely-storage/package.json**
Dependencies
```
- sagely-cache
- sagely-db#ec690d0
- sagely-etc#ae3ff4e
```

DEV Dependencies
```
N/A
```

**sagely-storage/src/package.json**
Dependencies
```
- sagely-cache
- sagely-db#ec690d0
- sagely-etc#ae3ff4e
```

DEV Dependencies
```
N/A
```

**sagely-sync/package.json**
Dependencies
```
- sagely-etc#ae3ff4e
```

DEV Dependencies
```
- sagely-cli#1cc548d
- sagely-db#ec690d0
- sagely-storage#f9b814c
```

**sagely-sync/src/package.json**
Dependencies
```
- sagely-etc#ae3ff4e
```

DEV Dependencies
```
N/A
```
