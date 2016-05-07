" GUI settings
if has('gui_running')
    set background=dark
    colorscheme solarized
    set go-=T
else
    colorscheme zenburn
endif

" Show the current command in the lower right corner
set showcmd

" Show the current mode
set showmode

" Make the command-line completion better
set wildmenu

" Make command line two lines high
set ch=2

" Set the status line
" %f - path to file in buffer
" %m modified flag
" %r readonly flag
" %l/%L current line no/total no of lines
" [%p%%] percent through file in lines
" %c column number
" %h shows help flag
set stl=%f\ %y\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ %h

" tell VIM to always put a status line in, even if
" there is only one window
set laststatus=2

" Search settings
" set the search scan to wrap lines
set wrapscan

" set the search scan so that it ignores case when the
" search is all lower case but recognizes uppercase if
" it's specified
set ignorecase
set smartcase

" Enable search highlighting
set hlsearch

" Incrementally match the search
set incsearch

"Set up bundles
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype on

" Set supertab
let g:SuperTabDefaultCompletionType = "context"

" Pydoc
let g:pydoc_cmd = "/usr/bin/pydoc"

" Spelling settings
set nospell

" Turn tabs into spaces
set expandtab

" Allow the cursor to go in to "invalid" places
set virtualedit=all

" Allows switching buffers without saving
set hidden

" Set movement to always be in screen lines
map k gk
map j gj

" Tabstops are 4 spaces
set tabstop=4
set shiftwidth=4

" Allow backspacing over indent, eol, and the start of
" insert
set backspace=2

" Set filetype stuff to on
filetype on
filetype plugin on
filetype indent on

" Switch on syntax highlighting.
syntax on

" Always have line numbers
set number

" Keep some stuff in the history
set history=100

" These things start comment lines
set comments=sl:/*://:#

" Set the textwidth to be 72 chars
set textwidth=80
