# dotfiles

```bash
# Add custom config, aliases and functions to .*rc file without
# needing to overwrite it:
echo ". ~/path/to/dotfiles/.jbrc" >> {.bashrc|.zshrc}

# Setup vim files and link from this location:
mkdir ~/.vim ~/.vim/autoload ~/.vim/plugged
ln /path/to/dotfiles/.vimrc ~/.vimrc
ln /path/to/dotfiles/.vim/plugins.vim ~/.vim/plugins.vim
ln /path/to/dotfiles/.vim/autoload/plug.vim ~/.vim/autoload/plug.vim

# Install the plugins from inside the vim editor:
:source ~/.vimrc
:PlugInstall
```
