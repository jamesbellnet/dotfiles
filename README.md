# dotfiles

Manage using a bare git repository to easily share between environments and prevent issues with symbolic links.

### Setup

```bash
# Create the dotfiles directory in $HOME - this is purely for git to use
# as a reference (we won't add any files in here)
mkdir ~/.dotfiles

# Initialize a bare repository in the directory we just created
git init --bare ~/.dotfiles

# Create a git alias that references the new bare dotfiles repository and the
# $HOME directory from which git adds and tracks files by default
echo "alias dotfiles=\"/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME\"" \
>> ~/.bashrc

# Source the contents of ~/.bashrc to make the alias available to us
source ~/.bashrc

# Configure the dotfiles bare repository to hide untracked files (prevents
# us from seeing all files and folders in $HOME in 'dotfiles status'
dotfiles config status.showUntrackedFiles no

# Add the remote location to the repository
dotfiles remote add origin git@github.com:jamesbellnet/dotfiles.git

# Pull the repository into the $HOME directory (ensure no folders/files from
# the repository currently exist in $HOME)
dotfiles pull git@github.com:jamesbellnet/dotfiles.git

# Load custom config
echo ". $HOME/.jbrc" >> ~/.bashrc && source ~/.bashrc

# Set the remote upstream for shorthand push/pull
dotfiles branch --set-upstream-to=origin/master master

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
