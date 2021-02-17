"---------------------"
"-------- JB ---------"
"---------------------"

" Load defaults.vim 
source $VIMRUNTIME/defaults.vim

" Enable syntax highlighting
syntax enable

" Set theme
set background=dark
colorscheme default

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

" Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

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

