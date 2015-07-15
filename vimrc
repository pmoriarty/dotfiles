" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set writebackup		" keep a backup file
" tell vim to keep a backup file
set backup
" tell vim where to put its backup files
set backupdir=/tmp
" tell vim where to put swap files
set dir=/tmp

" Don't expand tabs to spaces
set et
" Set tab-stop to 4 spaces
set ts=4
" Set shift-width (auto-indent) to 4 spaces
set sw=2
" Show matching bracket
set sm
" Don't use Ex mode, use Q for formatting
map Q gq

" This is standard pathogen and Vim setup
call pathogen#infect()
syntax on
filetype plugin indent on

" Paredit
let g:paredit_mode = 0

set background=dark
colorscheme solarized 
