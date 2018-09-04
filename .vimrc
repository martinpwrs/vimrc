set nocompatible              " required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path to include Vundle and initialize
call vundle#begin()

Plugin 'gmarik/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'vim-scripts/indentpython.vim' " better python indentation
Plugin 'tmhedberg/SimpylFold' " better folding
Plugin 'vim-syntastic/syntastic' " syntax
Plugin 'nvie/vim-flake8'
Plugin 'tpope/vim-fugitive' " git integration
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'} " powerline status bar
Plugin 'Valloric/YouCompleteMe'  " youcompleteme


call vundle#end()           " required *All of your Plugins must be added before this line
filetype plugin indent on   " required
" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set foldmethod=indent       " enable folding
set foldlevel=99

" fold with spacebar
nnoremap <space> za

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

let python_highlight_all=1  " syntax checking/highlighting
syntax on

let g:ycm_autoclose_preview_window_after_insertion = 1 " youcomplete me closes preview window after completion

set nu              " Line numbers on
set hlsearch        " Search highlighting on
set nowrap          " Don't wrap lines
set smartcase       " Ignore case if searching all lowercase
set incsearch       " Show search matches while typing
set title           " Change the terminal's title
set noerrorbells    " don't beep
set backspace=indent,eol,start  " backspace works over end and start of line
set noswapfile      " Don't make a swapfile
set nobackup        " Don't make a backup
" save my pinky some work 
nnoremap ; :
" use comma as leader
let mapleader = ","
map <silent> <leader>h :set hlsearch!<cr>
set lazyredraw " don't update the display while executing macros
set termencoding=utf-8
set encoding=utf-8
set cmdheight=1
" make p in Visual mode replace the selected text with the yank register
vnoremap p <Esc>:let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>
" Quote words under cursor
nnoremap <leader>" viW<esc>a"<esc>gvo<esc>i"<esc>gvo<esc>3l
" Use shift-H and shift-L for move to beginning/end of line
nnoremap H 0
nnoremap L $
