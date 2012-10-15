" Visual Bell
set vb
"Backspace extension
set bs=indent,start,eol
"Syntax on
syn on
"turn on ruler on bottom row
set ruler
" Don't expand tabs to spaces
set noet
"tab stop length
set ts=4
">>length
set shiftwidth=4
"round >> cmd etc
set shiftround
"highligh searched-for words
set nohlsearch
"show 50 lines
set lines=40
"indent c-style for c & java
autocmd FileType java,c,cpp: set cindent
"auto indent for jsp
autocmd FileType jsp : set autoindent
"show matching bracket
set sm
"split & rewind:?
set sr
"turn off vi-compatibility - compat. by default
set nocompatible
"wrap text, autoformat comments, gq format comments
set formatoptions=tcqr


autocmd FileType tac : set syn=python

filetype indent on
filetype plugin on

set guifont=Monospace\ 9
set background=dark
colorscheme solarized
