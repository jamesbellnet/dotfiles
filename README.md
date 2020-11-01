# dotfiles

Managed using a bare git repository to prevent issues with symlinks. [See this post.](https://martijnvos.dev/using-a-bare-git-repository-to-store-linux-dotfiles/)

```bash
# Add custom config, aliases and functions to .*rc file without
# needing to overwrite it:
echo ". ~/path/to/dotfiles/.jbrc" >> {.bashrc|.zshrc}

# Install the plugins from inside the vim editor:
:source ~/.vimrc
:PlugInstall
```
