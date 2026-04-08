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

> You'll need to generate a Personal Access Token (PAT) 
https://github.com/settings/personal-access-tokens

You will use the PAT as your password when you login.

- Give it Read and Write access to Contents for Commits

### SSH

```sh
git clone git@github.com:wew226/GitHub-Examples.git
cd GitHub-Examples
```

We will need to create our own SSH Ed25519 key pair using our email address as a label.
```sh
ssh-keygen -t ed25519 -C "your_email@example.com"
```

For PowerShell users you will need to launch the ssh-agent in an *admin-elevated* PowerShell window and add the SSH private key to the ssh-agent.
```sh
Get-Service -Name ssh-agent | Set-Service -StartupType Manual
Start-Service ssh-agent
```

In a terminal window without elevated permissions, add the SSH private key to the ssh-agent.
```sh
ssh-add C:/Users/YOU/.ssh/id_ed25519
```

We can test our connection here:
```sh
ssh -T git@github.com
```

### GitHub CLI

Install the CLI

eg. Windows
https://github.com/cli/cli/blob/trunk/docs/install_windows.md

To install: 
```sh
winget install --id GitHub.cli
```

To upgrade:
```sh
winget upgrade --id GitHub.cli
```

eg. Linux (Ubuntu)
https://github.com/cli/cli/blob/trunk/docs/install_linux.md

To install:
```sh
(type -p wget >/dev/null || (sudo apt update && sudo apt install wget -y)) \
	&& sudo mkdir -p -m 755 /etc/apt/keyrings \
	&& out=$(mktemp) && wget -nv -O$out https://cli.github.com/packages/githubcli-archive-keyring.gpg \
	&& cat $out | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
	&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
	&& sudo mkdir -p -m 755 /etc/apt/sources.list.d \
	&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
	&& sudo apt update \
	&& sudo apt install gh -y
```

To upgrade:
```sh
sudo apt update
sudo apt install gh
```

Once installed, to login and clone your repo:
```sh
gh auth login
gh repo clone owner/repo
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

Make a commit and commit message without opening an editor.
```sh
git commit -m "Add another exclamation mark"
```

## Branches

List of branches

```sh
git branch
```

Create a new branch
```sh
git branch branch-name
```

Checkout the branch
```sh
git checkout dev
```

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

## Log

git log will show recent git commits to the git tree.


## Push

When we want to push a repo to our remote origin.

```sh
git push
```
