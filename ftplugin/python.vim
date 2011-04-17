" strips trailing whitespace before saving
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

" Execute file being edited with <Shift> + e:
map <buffer> <S-e> :w<CR>:!/usr/bin/env python % <CR>

" Shows line numbers
set number

" Set text width to 72
set textwidth=72

" Makes sure folds work nicely
set foldmethod=indent

set complete+=k~/.vim/syntax/python.vim isk+=.,(

" Omnicompletion
set omnifunc=pythoncomplete#Complete

" Remaps ` to hash as not on keyboard
imap ` #

" Sets pydoc location
let g:pydoc_cmd = "/usr/bin/pydoc"
