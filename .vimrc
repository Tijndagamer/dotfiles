" Enable filetype specific settings
filetype plugin on

" Excplicitly uncompatible with vi
set nocompatible

" Looks
syntax on
set ruler
colorscheme desert
set showmatch       " Highlight matching [{()}]

" Keybindings
set pastetoggle=<F2>
" Stop highlighting previous matches
nnoremap <leader><space> :nohlsearch<CR>
" Highlight last inserted text
nnoremap gV `[v`]
"set mouse=a         " Enable mouse

" Search
set ignorecase      " Ignore case when pattern contains lowercase letters only
set smartcase
set hlsearch        " highlight previous search pattern matches

" Indentation settings
filetype indent on  " load filetype-specific indent files
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab       " tabs to spaces
set autoindent
set smartindent

" Disable autowrapping
set nowrap

" Color column 79
set colorcolumn=79
highlight ColorColumn ctermbg=lightgrey

set backspace=indent,eol,start

set nobackup
set noswapfile

set updatetime=1000
