" reset to vim-defaults (instead of vi)
set nocompatible

" change colorscheme
"set t_Co=256
"set background=dark
"let g:solarized_termtrans=1 " transparent bg for solarized theme
"colorscheme desert256

" Display settings
syntax on               " syntax hilite
set nowrap              " dont wrap lines
set scrolloff=4         " 2 lines above/below cursor when scrolling
"set number              " show linenumbers
set showmode            " show mode in status bar
set showcmd             " show typed command in status bar
set showmatch           " show matching parenthesis
set ruler               " show cursor position in status bar
set title               " show file in titlebar
set hlsearch            " hilite searching
set incsearch           " incremental searching

" Editor settings
set ignorecase          " case insensitive searching
set smartcase           " but case sensitive if uppercase typed
set bs=indent,eol,start " allow backspacing over everything in INSERT

set smartindent         " smart auto indenting
set smarttab            " smart tab handling for indenting
set shiftwidth=4        " num of spaces for indenting tab
set expandtab           " turn tabs into spaces
set tabstop=4           " num of spaces for normal tab

set nojoinspaces        " dont add two spaces after ., ?, !
set fileformat=unix     " file mode unix
filetype plugin on      " enable filetype specific settings
filetype indent on      " enable filetype specific indenting
set confirm             " Confirm saving
set mouse=v             " use mouse in visual mode

" Shortcut remaps
" remove highlighting with enter
nnoremap <CR> :noh<CR><CR>
" reflow text with Q
nnoremap Q gqap
vnoremap Q gq
" rapidly flick through multiple files
nnoremap <C-N> :next<Enter>
nnoremap <C-P> :prev<Enter>
" paste mode toggle (needed when using autoindent)
set pastetoggle=<F2>
" make F3 shortcut for Taglist plugin
let Tlist_Inc_Winwidth = 0
map <F3> :Tlist<CR>

" syntax highlighting for AndurilScript
"au BufRead,BufNewFile *.and setf java "just use java hilite
au! Syntax anduril source ~/.vim/anduril.vim
au BufRead,BufNewFile *.and set filetype=anduril

" syntax highlighting for Stan model files
au! Syntax stan source ~/.vim/stan.vim
au BufRead,BufNewFile *.stan set filetype=stan

" jump to last edited position in file if known
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

