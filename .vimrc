set nocompatible
filetype off
filetype plugin indent on
 
syntax on
set ruler

" do this before you paste stuff, unless it's like a one-liner
set pastetoggle=<F2>
 
" search settings
set hlsearch
set ignorecase
set smartcase
 
" tabs to spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set smartindent
 
" line length
"match Error '\%>79v.\+'
"set tw=79
"set wm=2
" set colorcolumn=79
"set formatprg=par\ -w79

"" when you get vim8 uncomment the liner under
" set breakindent
"" uncomment above when vim8
" Disable autowrapping
set nowrap


" colorscheme
colorscheme desert
 
" zsh-like auto-completion
" use arrow keys to nav
set wildmenu
set wildmode=full
 
" Completion - http://vimdoc.sourceforge.net/htmldoc/spell.html
set dictionary+=/usr/share/dict/words
set complete+=kspell
set omnifunc=syntaxcomplete#Complete
au bufnewfile,bufreadpost *.md set filetype=markdown
au FileType txt,markdown set spell
" zg: add word to dict
" z=: look at the suggestions
" ]s / [s: next/previous spelling error

" leader-key
let mapleader = "\<Space>"
nnoremap <Leader>o :open .<CR> " space o to open new file
nnoremap <Leader>w :w<CR> " space w to save
nnoremap <Leader>q :q<CR> " space q to quit
 
" remember last 200 commands run in ex mode
set history=200
 
" vim8 needs this if you want your backspace to work properly
set backspace=indent,eol,start
 
" move around the windows
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
 
" use jk to <esc> so you don't have to stretch your left hand
inoremap jk <esc>
 
" better indentation of visual blocks
vnoremap < <gv
vnoremap > >gv
 
" disable swap and backup files
set nobackup
set noswapfile
 
" reduce time you have to react from 4s to 1s
set updatetime=1000

"" SUPER CLEVER TAB
" [s/]s to browse wrongly spelled words
" z= to open suggestions
" <C-x><C-k> while typing a word to suggest words
"function! SuperCleverTab()
"  if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
"    return "\<Tab>"
"  else
"    if &omnifunc != ''
"      return "\<C-x>\<C-o>"
"    elseif &dictionary != ''
"      return "\<C-x>\<C-p>"
"    endif
"  endif
"endfunction
"inoremap <Tab> <C-R>=SuperCleverTab()<cr>
