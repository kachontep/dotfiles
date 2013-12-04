set nocompatible		" get rid of Vi compatiblity mode. SET FIRST!
filetype plugin indent on 	" filetype detection[ON] plugin[ON] indent[ON]
set t_Co=256			" Enable 256-color mode.
syntax enable			" enable syntax highlighting (previously syntax on).
colorscheme desert		" set colorscheme
set number			" show line number
set laststatus=2		" last windows always have a statusline
filetype indent on		" activate indenting for files
set nohlsearch			" Don't continue to highlight searched phrases.
set incsearch			" But do highlight as you type search.
set ignorecase			" Make sarch case -insensitive.
set ruler			" Always show info along bottom.
set autoindent			" auto-indent
set tabstop=2			" tab spacing
set shiftwidth=2		" unify
set shiftround			" always indent/outdent to the nearest tabstop
set expandtab			" use spaces instead of tabs
set smarttab			" use tabs as the start of a line, spaces elsewhere
set nowrap			" don't wrap text
