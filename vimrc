set nocompatible		        " get rid of Vi compatiblity mode. SET FIRST!
filetype off

" Vundle Plugin
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" My vundles here:
Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'vim-scripts/Emmet.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'flazz/vim-colorschemes'

call vundle#end()
filetype plugin on 

filetype plugin indent on 	" filetype detection[ON] plugin[ON] indent[ON]
set t_Co=256			          " Enable 256-color mode.
syntax enable			          " enable syntax highlighting (previously syntax on).
colorscheme wombat256		      " set colorscheme
filetype indent on		      " activate indenting for files
set number			            " show line number
set laststatus=2		        " last windows always have a statusline
set nohlsearch			        " Don't continue to highlight searched phrases.
set incsearch			          " But do highlight as you type search.
set ignorecase			        " Make sarch case -insensitive.
set ruler			              " Always show info along bottom.
set autoindent			        " auto-indent
set tabstop=4			          " tab spacing
set shiftwidth=4		        " unify
set shiftround			        " always indent/outdent to the nearest tabstop
set expandtab			          " use spaces instead of tabs
set smarttab			          " use tabs as the start of a line, spaces elsewhere
set nowrap			            " don't wrap text

" Custom key mappings
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

nmap <C-N>f :NERDTreeFind<CR>
nmap <C-N><space> :NERDTreeToggle<CR>
nmap <C-N> :NERDTree
nmap <C-N>c :NERDTreeClose<CR>

" Bundle related configurations
let g:ctrlp_map = '<C-p>'

" NERDTree related configurations
let g:NERDTreeDirArrows=0

" Custom tags file
set tags=$HOME/.tags
