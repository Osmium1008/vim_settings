packadd termdebug

set number
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set cursorline
set whichwrap=b,s,h,l,<,>,[,],~
set hidden
set clipboard+=unnamedplus

nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk
inoremap jk <ESC>

syntax enable

let g:termdebug_wide=163
let mapleader = " "

" read toml
let s:dein_cache_dir = $XDG_CACHE_HOME . '/dein'

if &compatible
  set nocompatible
endif

augroup MyAutoCmd
  autocmd!
augroup END

set runtimepath+=$XDG_CACHE_HOME/dein/repos/github.com/Shougo/dein.vim
	
if dein#load_state(s:dein_cache_dir)
	call dein#begin(s:dein_cache_dir)

	let s:toml      =  './toml/dein.toml'
	let s:lazy_toml =  './toml/dein_lazy.toml'

	call dein#load_toml(s:toml, {'lazy': 0})
	call dein#load_toml(s:lazy_toml , {'lazy': 1})

	call dein#end()
	call dein#save_state()
endif

filetype plugin indent on
if dein#check_install()
  call dein#install()
endif


