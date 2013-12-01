" Set the colour scheme
colorscheme default

" Always have line numbers
set number

" Keep some stuff in the history
set history=100

" These things start comment lines
set comments=sl:/*://:#

" Set the textwidth to be 72 chars
set textwidth=72

" Set folding to indent style
set foldmethod=marker

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

" MacVim Settings
" Disable macvim alt-movement mappings
if has("gui_macvim")
    let macvim_skip_cmd_opt_movement = 1
    " Map swipe left and right to go through buffers
    nmap <SwipeLeft> :bN<CR>
    nmap <SwipeRight> :bn<CR>
endif

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

" Set spellcheck language to en
" and spellcheck off
set spell spelllang=en
set nospell

" Set filetype stuff to on
filetype on
filetype plugin on
filetype indent on

" Switch on syntax highlighting.
syntax on

" get rid of the silly characters in window separators
set fillchars=""

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
" }}}

" =====================================================
" Plugin settings
" =====================================================
" {{{
"Set up bundles
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype on

" Set supertab
" let g:SuperTabDefaultCompletionType = "context"

" Pydoc
let g:pydoc_cmd = "/usr/bin/pydoc"

" Gundo toggle mapping
map <F5> :GundoToggle<CR>

" NERD_tree settings
map ,nt :NERDTreeToggle<CR>

" SnipMate settings
let g:snips_author='Rachel Armstrong'

" Latex-suite settings
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Imap_UsePlaceHolders = 0

" Autoswap_mac only works with setting below
set title titlestring=
" }}}
