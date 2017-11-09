### Create a submodule repo from a folder and keep its git commit history

#### Detailed solution is the link above.
https://stackoverflow.com/questions/17413493/create-a-submodule-repository-from-a-folder-and-keep-its-git-commit-history

#### Another simple way
The solution by @GabLeRoux squashes the branches, and the related commits.

A simple way to clone and keep all those extra branches and commits:

1 - Make sure you have this git alias
```
git config --global alias.clone-branches '! git branch -a | sed -n "/\/HEAD /d; /\/master$/d; /remotes/p;" | xargs -L1 git checkout -t'
```
2 - Clone the remote, pull all branches, change the remote, filter your directory, push
```
git clone git@github.com:user/existing-repo.git new-repo
cd new-repo
git clone-branches
git remote rm origin
git remote add origin git@github.com:user/new-repo.git
git remote -v
git filter-branch --subdirectory-filter my_directory/ -- --all
git push --all
git push --tags
```
