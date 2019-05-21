set tabstop=4
set showmatch
set mouse=a
syntax on
set textwidth=80
set shiftwidth=4
set softtabstop=4
set matchpairs+=<:>
set number
set encoding=utf-8
set smartindent
set autoindent

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

autocmd vimenter * NERDTree
nmap <F3> :NERDTreeToggle<CR>
