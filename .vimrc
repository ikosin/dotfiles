" -----------------------------------
" .vimrc
" -----------------------------------

" -----------------------------------
" General
" -----------------------------------
set nocompatible
set history=50

" -----------------------------------
" Search
" -----------------------------------
set ignorecase
set smartcase
set wrapscan
set hlsearch

" -----------------------------------
" View
" -----------------------------------
colorscheme desert
syntax on
set number
set title
set ruler

" -----------------------------------
" File system
" -----------------------------------
set nobackup

" -----------------------------------
" Set neobundle.vim
" -----------------------------------
filetype off
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle'))
endif

NeoBundle 'git://github.com/Shougo/neobundle.vim.git'
NeoBundle 'git://github.com/Shougo/unite.vim.git'
NeoBundle 'git://github.com/Shougo/vimproc.git'
NeoBundle 'git://github.com/Shougo/neocomplcache.git'
NeoBundle 'git://github.com/mattn/zencoding-vim.git'
NeoBundle 'git://github.com/hallettj/jslint.vim.git'
NeoBundle 'git://github.com/tpope/vim-surround.git'
NeoBundle 'git://github.com/h1mesuke/vim-alignta.git'

" -----------------------------------
" Filetype specific settings
" Set any other file type specific settings
" in ~/.vim and ~/.vim/after
" Type :set runtimepath to see you runtime path.
" -----------------------------------
filetype plugin indent on

" -----------------------------------
" Other programming staffs
" -----------------------------------
set showmatch

" -----------------------------------
" Show file encoding and file format
" -----------------------------------
set laststatus=2
set statusline=%<%f\ %m\ %r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=\(%v,%l)/%L%8P\ 

" -----------------------------------
" Shift left
" -----------------------------------
imap {} {}<Left>
imap [] []<Left>
imap () ()<Left>
imap "" ""<Left>
imap '' ''<Left>
imap <> <><Left>

" -----------------------------------
" Change cursor color by IME mode
"  # Don't work on Terminal.app
" -----------------------------------
highlight CursorIM guibg=Purple guifg=NONE
if has('multi_byte_ime') || has('xim')
  highlight Cursor guifg=#000d18 guibg=#8faf9f gui=bold
  highlight CursorIM guifg=NONE guibg=#ecbcbc
endif

" -----------------------------------
" Use neocomplcache.
" -----------------------------------
let g:NeoComplCache_EnableAtStartup = 1
" Use smartcase.
let g:NeoComplCache_SmartCase = 1
" Use camel case completion.
let g:NeoComplCache_EnableCamelCaseCompletion = 1
" Use underbar completion.
let g:NeoComplCache_EnableUnderbarCompletion = 1
" Set minimum syntax keyword length.
let g:NeoComplCache_MinSyntaxLength = 3
" Set manual completion length.
let g:NeoComplCache_ManualCompletionStartLength = 0


