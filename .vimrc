" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set writebackup		" keep a backup file
" tell vim to keep a backup file
set backup
" tell vim where to put its backup files
set backupdir=/home/pmoriarty/tmp
" tell vim where to put swap files
set dir=/home/pmoriarty/tmp

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" Syntax on
"syn on
" Don't expand tabs to spaces
set et
" Set tab-stop to 4 spaces
set ts=4
" Set shift-width (auto-indent) to 4 spaces
set sw=4
" Show matching bracket
set sm
" Don't use Ex mode, use Q for formatting
map Q gq

set hlsearch

set enc=UTF-8

syntax on
filetype plugin indent on

let vimclojure#HighlightBuiltins = 1
let vimclojure#WantNailgun = 1
"let vimclojure#NailgunClient = "/home/pmoriarty/projects/external/vimclojure/client/ng"
let vimclojure#NailgunClient = "/home/pmoriarty/doc/dev/clojure/vimclojure-nailgun-client-2.2.0/vimclojure-nailgun-client/ng"

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

    autocmd FileType ruby : set ts=2 sw=2 noet
	autocmd FileType python : set ts=4 sw=4 noet
	autocmd FileType tac : set syn=python

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")
