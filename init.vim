" Disable the default Vim startup message.
" set shortmess+=I
set encoding=UTF-8
" Cursor position
set ruler
set cursorline

" Show line numbers.
set number
set relativenumber

set expandtab
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2
set backspace=indent,eol,start
set hidden
" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch
set nohlsearch
set hidden
set noerrorbells visualbell t_vb=

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set scrolloff=8
set signcolumn=yes

" Unbind some useless/annoying default key bindings.
" 'Q' in normal mode enters Ex mode. You almost never want this.
nmap Q <Nop> 


" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
set mouse+=a
set clipboard=unnamedplus "copy and paste to other 

call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
" Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'christoomey/vim-tmux-navigator'
"NERDTree
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/nerdcommenter'
"One-Dark
Plug 'joshdick/onedark.vim'

call plug#end()

set nocompatible

" Turn on syntax highlighting.
syntax on
set showmatch
colorscheme onedark

" Leader key
let mapleader=","

" Visual Setting
"""""""""""""""""
let g:goyo_width=85

let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'
let g:limelight_bop = '%.*$'
"' let g: limelight_eop = '\n'
let g:limelight_paragraph_span = 0


" Splitting
set splitbelow splitright

"COC
set nobackup
set nowritebackup
command! -nargs=0 Prettier :CocComnnad prettier.formatFile

let g:coc_global_extensions = [
    \ 'coc-snippets',
    \ 'coc-pairs',
    \ 'coc-tsserver',
    \ 'coc-eslint',
    \ 'coc-prettier',
    \ 'coc-json',
    \ ]

" set working directory to current file 
autocmd BufEnter * lcd %:p:h
" remaps for vscode functions
nmap <F2> <Plug>(coc-rename)
nmap <silent> gd <Plug>(coc-definition)
inoremap <silent><expr> <c-space> coc#refresh()
" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate escape
nnoremap <C-c> <Esc>
" Open terminal at current file directory
map <F6> :let $VIM_DIR=expand('%:p:h')<CR>:terminal<CR>cd $VIM_DIR<CR>


" NERDTree configs
" automatically starts NERDTree
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
nmap <C-n> :NERDTreeToggle<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" Find current directory
map <leader>f :NERDTreeFind<CR>
" Window Navigation
" nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l

let g:NERDTreeGitStatusWithFlags = 1
" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

