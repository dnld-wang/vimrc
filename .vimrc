set hlsearch
highlight Search ctermbg=red ctermfg=white
set incsearch
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set number
"set relativenumber
set mouse=a
set backupcopy=yes
set noswapfile
set encoding=utf-8
set fileencoding=utf-8
set fileformat=dos


call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'mileszs/ack.vim'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'ludovicchabant/vim-gutentags'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

call plug#end()

"nnoremap <C-p> :Files<CR>
"nnoremap <C-b> :Buffers<CR>
"nnoremap <C-f> :Rg<CR>

nmap <F8> :TagbarToggle<CR>
let g:tagbar_ctags_bin = 'ctags'
let g:gutentags_ctags_executable = 'ctags'
let g:gutentags_cache_dir = expand('~/.vim/tags')
let g:gutentags_add_default_project_roots = 1

