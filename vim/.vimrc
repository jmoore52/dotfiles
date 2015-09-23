set number

let mapleader=","

" Save file
map <Leader>w :w<CR>

" Reload
map <Leader>r :so $MYVIMRC<CR>
 
" Open header file
map <Leader>h :badd %<.h<CR>

" Open C file
map <Leader>c :badd %<.c<CR>

" Split current window
map <Leader>ss :split<CR>

" Split header file
map <Leader>sh :split %<.h<CR>

" Split C file
map <Leader>sc :split %<.c<CR>

" Permanently set statusline
set laststatus=2

" Turn Paste on and off
nnoremap <Leader>p :set invpaste paste?<CR>
set pastetoggle=<Leader>p
set showmode

" indentation -- http://vim.wikia.com/wiki/Indenting_source_code
set expandtab
set shiftwidth=2
set softtabstop=2

syntax on
" copy or change search hit --
" http://vim.wikia.com/wiki/Copy_or_change_search_hit
" Make a simple "search" text object.
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
     \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
"NeoBundle 'tpope/vim-fugitive' " integrate vim with git
NeoBundle 'flazz/vim-colorschemes' " different colorschemes

" original repos on github
NeoBundle 'kien/ctrlp.vim' " Ctrl+P to open file by name in different buffer
NeoBundle 'tpope/vim-unimpaired' " makes switching between tabs easier
NeoBundle 'majutsushi/tagbar' " use <Leader>tb to look at functions within file
" Bundle 'fholgado/minibufexpl.vim'
NeoBundle 'MarcWeber/vim-addon-mw-utils' " dependancy for vim-snipmate
NeoBundle 'tomtom/tlib_vim' " dependancy for vim-snipmate
NeoBundle 'garbas/vim-snipmate' " automatic insertion of code blocks by leading keywords
" Optional package exposes the snippets
NeoBundle 'honza/vim-snippets' " database of snippets for vim-snipmate

NeoBundle 'ludovicchabant/vim-gutentags' " manages ctags files

NeoBundle 'bling/vim-airline' " statusline

NeoBundle 'Valloric/YouCompleteMe' " command completion

" vim-scripts repos
" Bundle 'FuzzyFinder' " alternative to CtrlP
" Plugin 'buftabs' " shows the buffers you have open in status bar (airline
" can do the the same)

" non github repos
" Bundle 'git://git.wincent.com/command-t.git' " yet another alternative to
                                               " Ctrl P

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

let g:airline#extensions#tabline#enabled = 1

" buftabs configs
"let g:buftabs_only_basename=1
"let g:buftabs_in_statusline=1

" Custom highlight group
"hi Buftabs ctermfg=Yellow ctermbg=Blue

"let g:buftabs_active_highlight_group="Buftabs"

" Tagbar
map <Leader>tb :TagbarToggle<CR>
let g:tagbar_autoclose=1

" Ctags
set tags=./tags;/

" enable 256 colors in vim
set t_Co=256
syntax on
colorscheme candycode
