set nocompatible
colorscheme torte
" colorscheme desert

" L&F
set transparency=25
set lines=40 columns=120

" font
set guifont=Andale\ Mono:h24

" vim-indent-guides
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=110
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=140
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1
