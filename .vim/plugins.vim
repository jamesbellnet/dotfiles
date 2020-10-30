" Specify plugins directory (avoid names like 'plugins')
call plug#begin('~/.vim/plugged')

" List plugins
Plug 'drewtempelmeyer/palenight.vim'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'digitaltoad/vim-pug'

" Initialize plugin system
call plug#end()

" Load default matchit plugin for better % command during initialisation
if has('syntax') && has('eval')
  packadd! matchit
endif

