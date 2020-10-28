" Specify a directory for plugins
" Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'drewtempelmeyer/palenight.vim'

" Initialize plugin system
call plug#end()

" Reload .vimrc and :PlugInstall to install plugins
