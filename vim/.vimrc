set number

let mapleader=","

" Save file
map <Leader>w :w<CR>

" Reload
map <Leader>r :so $MYVIMRC<CR>

" Open header file
map <Leader>h :badd %<.h<CR>

" Open C file
map <Leader>h :badd %<.c<CR>

" Split current window
map <Leader>ss :split<CR>

" Split header file
map <Leader>sh :split %<.h<CR>

" Split C file
map <Leader>sc :split %<.c<CR>

" Permanently set statusline
set laststatus=2

" indentation -- http://vim.wikia.com/wiki/Indenting_source_code
set expandtab
set shiftwidth=2
set softtabstop=2

" copy or change search hit -- http://vim.wikia.com/wiki/Copy_or_change_search_hit
" Make a simple "search" text object.
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

" Vundle config 
set nocompatible               " be iMproved
filetype off                   " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'

" My Bundles here:
"

" original repos on github
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-unimpaired'
Plugin 'majutsushi/tagbar'
" Bundle 'fholgado/minibufexpl.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" Optional package exposes the snippets
Plugin 'honza/vim-snippets'

" vim-scripts repos
" Bundle 'FuzzyFinder'
Plugin 'buftabs'

" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" ...

call vundle#end()
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

" Tagbar
map <Leader>tb :TagbarToggle<CR>
let g:tagbar_autoclose=1

" Ctags
set tags=./tags;/
