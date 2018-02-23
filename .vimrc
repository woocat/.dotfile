set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'fatih/vim-go'
Plugin 'valloric/youcompleteme'
Plugin 'easymotion/vim-easymotion'


call vundle#end()            " required
filetype plugin indent on    " required



if (has("gui_running")) 
   set background=light
   set guioptions-=m " 隐藏菜单栏
   set guioptions-=T " 隐藏工具栏
   set guioptions-=L " 隐藏左侧滚动条
   set guioptions-=r " 隐藏右侧滚动条
   set guioptions-=b " 隐藏底部滚动条
   set showtabline=0 " 隐藏Tab栏
   set gfn=Source\ Code\ Pro\ for\ Powerline\ 13
   colorschem molokai
endif


"set nu
syntax on
set t_Co=256
hi VertSplit cterm=None
set ts=4
set shiftwidth=4
nnoremap <C-a> 0
nnoremap <C-e> $
" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

set completeopt-=preview

" 输入第2个字符开始补全
" youcompleteme
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_key_list_select_completion = ['<c-n>']
let g:ycm_key_list_previous_completion = ['<c-p>']
