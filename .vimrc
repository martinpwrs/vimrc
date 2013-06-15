"vundle commands
filetype off		"required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"vundle manages vundle
Bundle 'gmarik/vundle'

"Vundle Bundles
Bundle 'tpope/vim-fugitive'
Bundle 'vim-scripts/Better-Javascript-Indentation'
Bundle 'jelera/vim-javascript-syntax'


set nocompatible	"vim not compatible with vi
set number		"numbers the lines
set cursorline		"horizontal line indicating cursor
set wildmenu		"auto complete menu
set wildmode=list:longest	"act like bash completion
set syntax=on		"highlights syntax

colorscheme railscasts	"colorscheme, maybe font control
