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
Plugin 'ycm-core/YouCompleteMe'
Bundle 'Omnisharp/omnisharp-vim'

call vundle#end()
filetype plugin indent on

nmap <F3> :NERDTreeToggle<CR>
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:multi_cursor_exit_from_visual_mode=1
let g:loaded_youcompleteme = 1

" ominsharp stuff

inoremap <expr> <Tab> pumvisible() ? '<C-n>' :
\ getline('.')[col('.')-2] =~# '[[:alnum:].-_#$]' ? '<C-x><C-o>' : '<Tab>'
nnoremap <C-o><C-u> :OmniSharpFindUsages<CR>
nnoremap <C-o><C-d> :OmniSharpGotoDefinition<CR>
nnoremap <C-o><C-d><C-p> :OmniSharpPreviewDefinition<CR>
nnoremap <C-o><C-r> :!dotnet run
