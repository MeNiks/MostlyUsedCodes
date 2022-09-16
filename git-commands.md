git public/private key
```
Single account
>ssh-keygen
```

```
>ssh-keygen -t rsa -b 4096 -C "name@example.com" -f ~/.ssh/company_name
enter enter 
1. Add public key on server.
2. Use private on client machine.
For other location
>ssh-keygen -f /locationpath/id_rsa
```

Manage SSH for multiuser login
```
Add to /.ssh/config
#Account - name@personal.com github
Host github.com
    HostName github.com
    User github_username
    IdentityFile ~/.ssh/id_rsa

#Account - name@company.com github
Host company.github.com #company.github.com is custom domain you are creating at local
    HostName github.com
    User github_username
    IdentityFile ~/.ssh/company_id_rsa
```

Now clone by 
```
git@company.github.com:company/reponame.git // company.github.com - is local custom domain you used earlier

And add below in config file in .git folder
[user]
	email = XXX@abc.com
	name = username
```


For adding to new repository
```
git init
git remote add origin https://github.com/MeNiks/MyFragmentCommunication.git
git pull -u origin master
git add README.md
git commit -m "first commit"
git push -u origin master
```

For adding remote repo
```
git remote add origin https://github.com/MeNiks/abcd_repository.git

git config --global core.editor "'C:\Program Files (x86)\Program\program.exe' -n -w"
git config --global push.default upstream
git config --global merge.conflictstyle diff3

git log
git log -n 1
git log --graph --oneline master easy-mode

git status

```

To fetch all remote branches
```
git fetch --all
```

To check list of branches
```
git branch
```

To create new branch
```
git branch easy-mode
```

To change to a branch
```
git checkout easy-mode
```

git checkout -b branch_name
```
[Same as :
git branch new_branch
git checkout new_branch]
```

Pull git branch to server:
```
git pull origin branch-name
```

Push git branch to server:
```
git push origin branch-name
```

Commit file with message
```
git commit -m "first commit"
```

Checking changed files
```
git diff
git diff -staged
```

Merging The files:
```
git merge branch_name master
```

To delete a branch from local :
```
git branch -d easy-mode
```

To delete a branch from server :
```
git push origin --delete <branch_name>
```

After deleting local branch, push to also remove deleted local branch from remote:
```
git push origin :branch_name
```

To delete all local branches
```
git branch | grep -v "master" | xargs git branch -D
```

To know the branch name of remote:
```
git remote
```

To know url:
```
git remote -v
```

To push changes/newly created branch to remote repository:
```
git push -u origin master
```

To pull changes from server:
```
git pull origin master
```

Delete all untracked files & Directory
```
git clean -fd
-f : Force
-d : Remove untracked directories in addition to untracked files
```

Discard All Files
```
git reset --hard
```

Discard One folder changes
```
git checkout folder_name/
```

Discard One file changes
```
git checkout filename.txt
git checkout HEAD -- filename.txt
```

To undo last commit & discard all local changes
```
git reset --hard HEAD~1
```

To undo last commit and changes in stagged area
```
git reset --soft HEAD~
```

To remove all current changes
```
git reset --hard
```

Rename Local branch name:
```
git branch -m <newname>
```

Stash your changes away with:
```
git stash
```

Save stash with name
```
git stash save "stash Name"
```

Apply saved stash with id :

Bring your work back with:
```
git stash apply
```

To check stash list :
```
git stash list
```

Apply stash id :
```
git stash apply stash@{1}
```

POP Stash :
```
git stash pop
```

Drop Stash:
```
git stash drop <id>
```

Delete all of the stored stashes with:
```
git stash clear
```

Rebase
```
git rebase development
go on resolving conflicts do not commit then
git rebase --continue
git push origin -f branch_name
```


Delete any file from git
```
git rm /abc/file_name.txt
```

Filesystem Check
```
git fsck --full
```

How to quickly remove those?
```
git reflog expire --expire=now --all
git gc --prune=now
```

Creating patch :
```
git diff HEAD~2..HEAD > patch_name.diff
git diff commit_id1..commit_id2 > patch_name.diff
```

Apply patch [Patch can only be applied if previous file state matches then it applies patch to that file for new changes]
```
git apply --ignore-space-change --ignore-whitespace patch_name.patch
```

Git Dont show changes due to newline character mismatch of linux & windows
```
git config --global core.autocrlf input
```

To add deleted folder to staging area
```
git rm -r folder-name
```

To combine some of the commits together
```
git reset --soft HEAD~3 && git commit -m "Squash last 3 commits"
```

To squash some commits
```
git rebase -i HEAD~3
After executing below will be the text displayed to you,use squash to merge it and pick to use it as final commit,change commit message if you want
pick fb554f5 This is commit 1
squash 2bd1903 This is commit 2
squash d987ebf This is commit 3
ctrl+x -> Type some message ->Enter
```

To create tag of release after commit
```
git tag <tagname>
git push origin --tags
git push origin <tag>
```

To delete tag
```
git push --delete origin tagname (To delete from server)
git tag --delete tagname (To delete locally)
```

