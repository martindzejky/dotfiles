# changelog

Update the CHANGELOG.md file in the project with the changes implemented on the current feature branch. If the user is on `master`, do not do anything and report that this only works on feature branches. Similarly, stop and report if the `CHANGELOG.md` file is missing.

You must:

- check all commits on the current feature branch
- check the git branch name, it should contain the name of the feature and also the jira ticket number, i.e. EPIK-1234-feature-name-here
- use the same format of changelog entries as you already see in the CHANGELOG.md file
- usually one line is enough, followed by the jira ticket number and optionally with an external ticket ID (if provided, this is often from azure)
- when the external ticket ID is not already known, ask the user whether they have one
- if the user has an external ticket ID, include it as the second number at the end of the changelog line
- if the user does not have an external ticket ID, omit it and include only the jira ticket number
- if you are appending to an existing section in the changelog (i.e. Fixed), add the new changelog lines at the end of the section below the existing entries

If it is not clear what message to use, or what ticket numbers to use, use the ask tool to ask the user. If the jira ticket number is known but the external ticket ID is not, explicitly ask whether the user has an external ticket ID before writing the changelog entry. If the user responds with nothing, do not write any jira ticket number, just the message.
After you update the changelog, commit the file changes with git. The commit message should follow the format of the previous commit messages, but generally it should equal to this: `EPIK-1234 changelog` (use the correct jira ticket number). If there's no jira ticket, a simple commit message `changelog` is enough.
