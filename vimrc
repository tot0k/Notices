" Minimize compatibilities with vi
set nocompatible

execute pathogen#infect()
syntax on
filetype plugin indent on

set laststatus=2
set t_Co=256

" Map save on ctrl + s
noremap <silent> <C-S> :update<CR>
:nmap <c-s> :w<cr>
:imap <c-s> <esc>:w<cr>a

" Set color to correspond to a dark background
set background=dark

" Enable use of mouse
set ttymouse=xterm2
set mouse=a

" Enable number of lines
set number

" Show the command use at the bottom
set showcmd

" Enable a line on the cursor line and column
set cursorline
"set cursorcolumn

" Vim can find the type of file and change the syntax
filetype on

" Automatic indentation
set autoindent

" Number of column when reindent
set shiftwidth=3
" change

" Number of column for a tab
" set tabstop=3

" Line break
set lbr

" Display the status bar at the bottom
set laststatus=2

" Number of columns when I hit tab
" set softtabstop=3
" change

" Tab is check to be used only with indentation
set smarttab

" In insert mode tab produce the appropriate number of space
" set expandtab

" Smart delete in insertion mode
set backspace=2

" Avoid problem with utf-8 sometimes
set encoding=utf-8
set fileencoding=utf-8

" Remove white space at the end of each line
"autocmd BufWritePre * :%s/\s\+$//e

" Change thing
set listchars=nbsp:¤,tab:>-,trail:¤,extends:>,precedes:<
set list

 " Highlight 80 column if I got far on the line
 "highlight OverLength ctermbg=red ctermfg=white guibg=#592929
 "match OverLength /\%81v.\+/
highlight ColorColumn ctermbg=32
set colorcolumn=72

" Set relative number (to the cursor)
"set relativenumber

" Highlight search
set hlsearch

" map <C-n> :NERDTreeToggle<CR>

" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

