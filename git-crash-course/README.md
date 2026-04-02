## Git Hidden Folder

There is a hidden folder called `.git` that tells you that our project is a git repo.

If we wanted to create a git repo in a new project we'd create the folder and then initialize that repo using `git init`

```sh
mkdir /workspaces/tmp/new-project
cd /workspaces/tmp/new-project
git init
touch README.md
code README.md
git status
git add README.md
# makes changes to README.md
git commit -a -m "Add README file"
```

## Cloning

We can clone three ways: HTTPS, SSH, GitHub CLI

Since we are using GitHub Codespaces we'll create temporary directory in our workspace.

```sh
mkdir /workspaces/tmp
cd /workspaces/tmp
```

### HTTPS

```sh
git clone https://github.com/wew226/GitHub-Examples.git
cd GitHub-Examples
```

## Commits

When we want to commit code we can write `git commit` which will open up the commit edit message in the editor of choice.

```sh
git commit
```

Set the global editor
```sh
git config --global core.editor emacs
```

## Branches

## Remotes

## Stashing

## Merging

## Adding

When we want to stage changes that will be included in the commit we can use the . to add all possible files. 

```sh
git add README.md
git add .
```

## Reset

Reset allows you to move Staged changes to be Unstaged.
This is useful when you want to revert all files to be not committed.

```sh
git add .
git reset
```

> git reset will revert a git add .

## Status

Git status shows you what files will or will not be committed.

```sh
git status
```

## Gitconfig file

The gitconfig file is what stores your global configurations for git such as name, email, editor and more.

```sh
git config --list
```

When you first install Git on a machine you are supposed to set up your name and email.

```sh
git config --global user.name "John Doe"
git config --global user.email johndoe@example.com
```
