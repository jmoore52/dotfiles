set number

let mapleader=","
map <Leader>w :w<CR>

" Reload
map <Leader>r :so $MYVIMRC<CR>

" Open header file
map <Leader>h :badd %<.h<CR>

" Split current window
map <Leader>s :split<CR>

" Split header file
map <Leader>sh :split %<.h<CR>

" Permanently set statusline
set laststatus=2

" indentation -- http://vim.wikia.com/wiki/Indenting_source_code
set expandtab
set shiftwidth=2
set softtabstop=2

" Vundle config 
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"

" original repos on github
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-unimpaired'
" Bundle 'fholgado/minibufexpl.vim'

" vim-scripts repos
" Bundle 'FuzzyFinder'
Bundle 'buftabs'

" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" buftabs configs
let g:buftabs_only_basename=1
let g:buftabs_in_statusline=1

" Custom highlight group
hi Buftabs ctermfg=Yellow ctermbg=Blue

let g:buftabs_active_highlight_group="Buftabs"

" Ctags
set tags=./tags;/
