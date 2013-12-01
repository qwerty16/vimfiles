" Set the colour scheme
colorscheme desertEx

" GUI settings
set go-=T

" Disable macvim alt-movement mappings
if has("gui_macvim")
    let macvim_skip_cmd_opt_movement = 1
    " Map swipe left and right to go through buffers
    nmap <SwipeLeft> :bN<CR>
    nmap <SwipeRight> :bn<CR>
endif


" MacVim Settings
" Disable macvim alt-movement mappings
if has("gui_macvim")
    let macvim_skip_cmd_opt_movement = 1
    " Map swipe left and right to go through buffers
    nmap <SwipeLeft> :bN<CR>
    nmap <SwipeRight> :bn<CR>
endif

" Make the 81st column stand out
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)
