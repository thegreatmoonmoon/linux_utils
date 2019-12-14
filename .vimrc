set nocompatible
set laststatus=2 "always show status bar
set foldmethod=indent "automatic fold on indents
set foldlevel=99
set nu "show line numbers
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'davidhalter/jedi-vim' "python linter

Plugin 'itchyny/lightline.vim' "status bar
"Plugin 'Lokaltog/powerline' "status bar
Plugin 'tmhedberg/SimpylFold' "works with automatic indents
Plugin 'vim-syntastic/syntastic' "syntax checker
Plugin 'nvie/vim-flake8' "PEP8 checker
Plugin 'morhetz/gruvbox'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()

colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark='medium'
let g:gruvbox_termcolors=16
let g:solarized_termcolors=256

let g:python3_host_prog = 'usr/bin/python3'
let myvar="MY VIMRC LOADED"
let g:jedi#auto_initialization = 1
let g:jedi#auto_vim_configuration = 1

filetype plugin indent on

nnoremap <space> za
map <C-a> <esc>ggVG<CR>

let python_highlight_all=1
syntax on
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix