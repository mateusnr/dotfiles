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


call plug#begin()
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'preservim/nerdtree'
Plug 'marko-cerovac/material.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'TimUntersberger/neogit'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

lua require'lspconfig'.tsserver.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.clangd.setup{}

let g:material_style = 'lighter'
let g:airline_theme='ayu_mirage'
let g:airline_powerline_fonts = 1
colorscheme material

nmap <F3> :NERDTreeToggle<CR>

source ~/.config/nvim/cocconfig.vim
