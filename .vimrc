"---------------------"
"-------- JB ---------"
"---------------------"

" Load defaults.vim 
source $VIMRUNTIME/defaults.vim

" Load plugins
source $HOME/.vim/plugins.vim

" Enable syntax highlighting
syntax enable

" Set theme
set background=dark

silent! colorscheme palenight

if (has("termguicolors"))
  set termguicolors
endif

let g:palenight_terminal_italics=1
highlight Comment cterm=italic

" Set tab and auto-indenting sizes
set tabstop=2
set shiftwidth=2

" Tab inserts as spaces
set expandtab

" Always show current position
set ruler

" Split window defaults to the right and below
set splitright
set splitbelow

" Search behaves like browser searching
set ignorecase
set smartcase
set hlsearch
set incsearch

" Turn backup off
set nobackup
set nowb
set noswapfile

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Set to auto read when a file is changed from the outside
set autoread

" Automatically source the vimrc file on save
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

