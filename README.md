# dotfiles

Manage using a bare git repository to easily share between environments and prevent issues with symbolic links.

### Setup

```bash
# Create the dotfiles directory in $HOME - this is purely for git to use
# as a reference (no files will be added in here)
mkdir ~/.dotfiles

# Initialize a bare repository in the directory we just created
git init --bare ~/.dotfiles

# Create a git alias that references the git dotfiles repository and the $HOME
# directory from which git adds and tracks files by default
echo "alias dotfiles=\"/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME\"" \
>> {~/.bashrc|~/.zshrc}

# Source the contents of {.bashrc/.zshrc} to make the alias available to us
source {~/.bashrc|~/.zshrc}

# Configure the dotfiles bare repository to hide untracked files
dotfiles config status.showUntrackedFiles no

# Add the remote location to the repository
dotfiles remote add origin git@github.com:jamesbellnet/dotfiles.git

# Pull the repository into the $HOME directory (ensure no folders/files from
# the repository currently exist in $HOME)
dotfiles pull git@github.com:jamesbellnet/dotfiles.git master

# Load custom config
echo ". $HOME/.jbrc" >> {~/.bashrc|~/.zshrc} && source {~/.bashrc|~/.zshrc}

# Configure vim
vi ~/.vimrc # or just vimrc if using .jbrc aliases
:so % # Source the .vimrc file
:PlugInstall # Install the plugins
:so % # Source the .vimrc again for good measure

# OPTIONAL - use the .gitignore file from this repository as a global .gitignore
git config --global core.excludesFile '~/.gitignore'

# Finished!
```

### Making Changes

```bash
# Edit one of the files
vi ~/.jbrc # or just jbrc if using .jbrc aliases

# Check the git status of the $HOME directory dotfiles
# If you're adding a new file to this repository it won't show up here
# as it's an untracked file. Just use the filename of the new file in the
# next command
dotfiles status

# Stage changes
# WARNING: Never use 'dotfiles add .' or you will stage the entire contents of
# your $HOME!
dotfiles add .jbrc

# Commit changes
dotfiles commit -m "Update .jbrc"

# Push to master (after running this command for the first time
# just use 'dofiles push')
dotfiles push -u origin master
```
