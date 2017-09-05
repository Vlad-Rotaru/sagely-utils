# Utils
1. In momentul in care un task este gata pentru release, trebuie sa-l trecem in "Needs Test", sa le dam link-ul catre pull request si sa-l adignam pe Keith pe task

2. For all of the sagely-* lambda projects Jenkins runs grunt test first.
Then it will run either grunt jasmine_node:accept (most cases) or grunt protractor (if the lambda returns HTML, as in the case of newsletter, reports, and calendar print).

3. The sagely-sign-web project is kind of a special case. It runs grunt webdriver.

4. For the sagely the list of grunt targets are
- grunt test
- grunt protractor:web

5. There is also protractor:facility and protractor:family but don't worry about those until you get to the mobile apps

#