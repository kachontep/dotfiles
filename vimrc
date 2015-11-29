set nocompatible		        " get rid of Vi compatiblity mode. SET FIRST!
set backupcopy=no
set noswapfile
filetype off

" Vundle Plugin
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" My vundles here:
Plugin 'flazz/vim-colorschemes'
Plugin 'gmarik/Vundle.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'kien/ctrlp.vim'
Plugin 'klen/python-mode'
Plugin 'mfukar/robotframework-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-scripts/Emmet.vim'
Plugin 'bling/vim-airline'

call vundle#end()

filetype plugin on 
filetype plugin indent on 	      " filetype detection[ON] plugin[ON] indent[ON]
set t_Co=256			          " Enable 256-color mode.
set t_ut=
syntax enable			          " enable syntax highlighting (previously syntax on).
colorscheme molokai		          " set colorscheme
filetype indent on		          " activate indenting for files
set hidden                        " no warning about modified file was unsaved
set number			              " show line number
set relativenumber                " show relative line number
set laststatus=2		          " last windows always have a statusline
set cursorline                    " Highlight cursor line
set nohlsearch			          " Don't continue to highlight searched phrases.
set incsearch			          " But do highlight as you type search.
set ignorecase			          " Make sarch case -insensitive.
set ruler			              " Always show info along bottom.
set autoindent			          " auto-indent
set tabstop=4			          " tab spacing
set shiftwidth=4		          " unify
set shiftround			          " always indent/outdent to the nearest tabstop
set expandtab			          " use spaces instead of tabs
set smarttab			          " use tabs as the start of a line, spaces elsewhere
set nowrap			              " don't wrap text

" Customize Gvim UI
set guifont=Monaco\ 12
set guioptions-=T               " remove toolbar
set guioptions-=r               " remove right-hand scroll bar
set guioptions-=L               " remove left-hand scroll bar

" Custom key mappings
let mapleader = ","

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

nnoremap <leader>n  :NERDTreeToggle<cr>
nnoremap <leader>b  :ls<cr>
nnoremap <leader>f  :NERDTreeFind<cr>
nnoremap <leader>p  :CtrlPBuffer<cr>
nnoremap <leader>P  :CtrlP<cr>
nnoremap <leader>v  :vert sb
nnoremap <leader>d  :bd<cr>
nnoremap <leader>#  :b#<cr>
nnoremap <leader>c  :!bash<cr>
nnoremap <leader>s  :tselect 
nnoremap <leader>z  <C-w>z

autocmd FileType go nnoremap <leader>t :GoTest<cr>
autocmd FileType go nnoremap <leader>i :GoImports<cr>

au BufEnter set list<cr>
au BufEnter *.mustache set filetype=html

" Bundle related configurations
let g:ctrlp_map = '<C-p>'

"let g:syntastic_python_checkers = ['pylint']
"autocmd FileType python let g:syntastic_check_on_wq = 0
let g:syntastic_ignore_files = ['\m\c.py$']

" NERDTree related configurations
let g:NERDTreeAutoDeleteBuffer=1
let g:NERDTreeDirArrows=0
let g:NERDTreeIgnore=['\.pyc$']
let g:NERDTreeMinimalUI=1
let g:NERDTreeWinPos='right'
let g:NERDTreeWinSize=41

" CtrlP related configuration
set wildignore+=tags,code-coverage/
let g:ctrlp_by_filename = 1
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:10,results:10'

" Invisible characters configuration
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
set listchars=tab:▸\ ,eol:¬
"set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
nmap <leader>l :set list!<cr>

let g:pymode_folding = 0
let g:pymode_lint_ignore = "E128,E501,W"
let g:pymode_options_colorcolumn = 0

" Project related configuration
set tags=$HOME/kaidee/venice/order/tags,$HOME/kaidee/venice/sms-reciever/tags
" set tags=$HOME/kaidee/venice/acceptance_tests/mrdb-to-es/tags

