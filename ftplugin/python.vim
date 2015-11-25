" Tries to ignore pyc files
set su+=.pyc

" Shows line numbers
set number

" Set text width to 72
set textwidth=72

" Makes sure folds work nicely
set foldmethod=marker

set complete+=k~/.vim/syntax/python.vim

" Omnicompletion
set omnifunc=pythoncomplete#Complete

" Sets pydoc location
let g:pydoc_cmd = "/usr/bin/pydoc"
compiler nose
