# Executables
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

## Use nvm for node/npm installs
## See https://stackoverflow.com/a/11178106 if node.js & npm are already
## installed & https://github.com/nvm-sh/nvm for nvm installation.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash completion

# Colours
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Tidy prompt
export PS1='\w $ '

# Easy edit jbrc
alias jbrc="vi ~/Repos/dotfiles/.jbrc"

# Virtualbox
if command -v VBoxManage &> /dev/null; then
    alias startvm="VboxManage startvm \"20i Fedora\" --type headless"
    alias stopvm="VboxManage controlvm \"20i Fedora\" poweroff --type headless"
fi

# Pull in custom config
. ~/Repos/dotfiles/.jbrc
