execute pathogen#infect()
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

set number
" using only 1 column (and 1 space) while possible
set numberwidth=1

" syntax highlighting
syntax on
" using only 1 column (and 1 space) while possible
set numberwidth=1

" let g:solarized_termcolors= 16
" let g:solarized_termtrans = 16
" " let g:solarized_degrade = 1
" let g:solarized_bold = 1
" let g:solarized_underline = 1
" let g:solarized_italic = 1
" let g:solarized_contrast = "high"
" let g:solarized_visibility= "high"

" syntax enable
set background=dark

" ignore these files when completing
set wildignore+=.git,*.pyc
" show a line at column 79
if exists("&colorcolumn")
   set colorcolumn=79
endif
" have a line indicate the cursor location
set cursorline
" show the cursor position all the time
set ruler
" use spaces, not tabs, for autoindent/tab key.
set expandtab
" don't wrap text
set nowrap
" don't wrap text in the middle of a word
set linebreak
" always set auto-indenting on
set autoindent
" use smart indent if there is no indent file
set smartindent
" <tab> inserts 4 spaces
set tabstop=4
" but an indent level is 4 spaces wide.
set shiftwidth=4
" <BS> over an autoindent deletes both spaces.
set softtabstop=4
" rounds indent to a multiple of shiftwidth
set shiftround
" show matching <> (html mainly) as well
set matchpairs+=<:>
" allow us to fold on indents
set foldmethod=indent
" don't fold by default
set foldlevel=99
" don't bell or blink
set noerrorbells
set vb t_vb=
" keep our cursor in the middle of the screen
"set scrolloff=100
"set sidescrolloff=30
" show whitespace
set list
set listchars=tab:>-,trail:~
" default to using case insensitive searches ...
set ignorecase
" ... unless uppercase letters are used in the regex.
set smartcase
" handle tabs more intelligently while searching
set smarttab
" highlight searches by default.
set hlsearch
" incrementally search while typing a /regex
set incsearch
" remove trailing whitespace on <leader>S
noremap <leader>S :%s/\s\+$//<cr>:let @/=''<CR>

" load Vundle for plugin management
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage itself
Plugin 'gmarik/Vundle.vim'
Plugin 'nvie/vim-flake8'

" end loading plugins
call vundle#end()
filetype plugin indent on

set t_Co=256
silent! colorscheme molokai

" run flake8 on save
autocmd BufWritePost *.py call Flake8()

" enable spell checking
set spell spelllang=en_us

" enable pyflakes?
filetype plugin indent on
" set shortcut key and open NerdTree at start
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '\.egg-info$', '\.db$']
autocmd BufWritePre * :%s/\s\+$//e
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" disable double spacing between sentences
set nojoinspaces
set pastetoggle=<F2>
set guifont=*
" set guifont=Hack
set encoding=utf8
let g:airline_powerline_fonts = 1
