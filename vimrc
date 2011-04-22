" Set spellcheck language to en
" and spellcheck off
set spell spelllang=en
set nospell

" Always have line numbers
set number

"Set up bundles
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Set the colour scheme
colorscheme desertEx

" Set filetype stuff to on
filetype on
filetype plugin on
filetype indent on

" Set listchars
set listchars=tab:▸\ ,eol:¬

" Set supertab
let g:SuperTabDefaultCompletionType = "context"

" Pydoc
let g:pydoc_cmd = "/usr/bin/pydoc"

" Gundo toggle mapping
map <F5> :GundoToggle<CR>

" Switch on syntax highlighting.
syntax on

" Set movement to always be in screen lines
map k gk
map j gj

" NERD_tree settings
map ,nt :NERDTreeToggle<CR>

" SnipMate settings
let g:snips_author='Rachel Armstrong'

" Tabstops are 4 spaces
set tabstop=4
set shiftwidth=4

" set the search scan to wrap lines
set wrapscan

" set the search scan so that it ignores case when the search is all lower
" case but recognizes uppercase if it's specified
set ignorecase
set smartcase

" Enable search highlighting
set hlsearch

" Incrementally match the search
set incsearch

" Make command line two lines high
set ch=2

" Set the status line (no ive no idea how this works)
set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ [%b][0x%B]

" Allow backspacing over indent, eol, and the start of an insert
set backspace=2

" Make sure that unsaved buffers that are to be put in the background are
" allowed to go in there (ie. the "must save first" error doesn't come up)
set hidden

" tell VIM to always put a status line in, even if there is only one window
set laststatus=2

" Show the current command in the lower right corner
set showcmd

" Show the current mode
set showmode

" Keep some stuff in the history
set history=100

" Allow the cursor to go in to "invalid" places
set virtualedit=all

" These things start comment lines
set comments=sl:/*://:#

" Make the command-line completion better
set wildmenu

" Set the textwidth to be 120 chars
set textwidth=72

" get rid of the silly characters in window separators
set fillchars=""

" Turn tabs into spaces
set expandtab

" Set folding to indent style
set foldmethod=indent

" If in plaintext dont expand tabs and show invisible chars
autocmd BufNew *.txt setlocal list expandtab
