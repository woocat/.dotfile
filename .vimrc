set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ianva/vim-youdao-translater'
Plugin 'easymotion/vim-easymotion'
Plugin 'edkolev/tmuxline.vim'
Plugin 'rking/ag.vim'
"Plugin 'valloric/youcompleteme'
"Plugin 'rdnetto/ycm-generator'
"Plugin 'sirver/ultisnips'
call vundle#end()            " required
filetype plugin indent on    " required



if (has("gui_running")) 
   set background=light
   colorscheme desert 
   set guioptions-=m " 隐藏菜单栏
   set guioptions-=T " 隐藏工具栏
   set guioptions-=L " 隐藏左侧滚动条
   set guioptions-=r " 隐藏右侧滚动条
   set guioptions-=b " 隐藏底部滚动条
   set showtabline=0 " 隐藏Tab栏
   set guifont=Inconsolata 13
endif


"set nu
syntax on
set t_Co=256
let mapleader = "\<Space>"
nnoremap <Leader>l :bn<CR>
nnoremap <Leader>h :bp<CR>
"save file
nnoremap <Leader>w :w<CR>
nnoremap <Leader>wq :wq!<CR>
nnoremap <Leader>q :q!<CR>
"CtrlP Most recently file
nnoremap <Leader>r :CtrlPMRUFiles<CR>
"CtrlP Most recently file
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>t :NERDTreeToggle<CR>
"Sudo 
nnoremap <Leader>sudo :w !sudo tee % 
set laststatus=2
set fillchars+=vert:\|
hi vertsplit guifg=fg guibg=bg
set ts=4
set shiftwidth=4
let g:airline_powerline_fonts = 1
let g:airline_theme="base16_3024"
let g:airline#extensions#tabline#enabled = 1
let g:ctrlp_show_hidden = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
