How does tracking and adding changes make developers' lives easier?
This helps a developer monitor the status of a project. By seeing what files have been changed and what changes have been made, a developer can avoid accidentally merging or deleting something.

What is a commit?
This takes all the files that have been added to your local repo with git and saves them, like a snapshot of those bits of the project at that moment. This the last thing to be done before pushing the commit to Github.

What are the best practices for commit messages?
Messages should be specific and clear, and they should be in the imperative, to mirror what the commit contributes to the project, not what the developer did to the file.

What does the HEAD^ argument mean?
HEAD.. allows you to change files once they've been commited before pushing. HEAD^ specifically selects the last commit.

What are the 3 stages of a git change and how do you move a file from one stage to the other?
Getting a forked file from remote repo, making edits, then pushing it back to the repo. A file is first forked from the master on Github, then cloned to your local repo. On a separate 'feature branch' edits are made then added to staging on the local repo. When ready, the files are committed then pushed to the remote repo and given a pull request.

Write a handy cheatsheet of the commands you need to commit your changes?
The git commands are in this order: 'checkout (-b if creating new branch)', 'add', 'commit -m', 'push origin branch', then after doing a pull request and merging 'checkout' again, 'pull (origin master)'

What is a pull request and how do you create and merge one?
After pushing your commit to Github, a pull request alerts team members etc that there are files to be reviewed and merged with the project. On the projects repo url on Github there is a button that appears after pushing that initiates a pull request, then another one to merge.

Why are pull requests preferred when working with teams?
Instead of just merging your work into the master branch it's preferable to keep code isolated for review by team members. This ensures your code won't interfere with another part of the project someone else is working on but still submits it for review and collaboration before eventually merging.