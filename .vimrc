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
Plugin 'bling/vim-airline'
Plugin 'easymotion/vim-easymotion'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'valloric/youcompleteme'
Plugin 'rdnetto/ycm-generator'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'fatih/vim-go'
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
hi VertSplit cterm=None
set ts=4
set shiftwidth=4
nnoremap <C-a> 0
nnoremap <C-e> $
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme="molokai"
let g:ctrlp_show_hidden = 1
let g:clang_library_path='/usr/lib/libclang.so.3.9'
let g:airline_powerline_fonts = 1
let g:ctrlp_use_caching = 0
" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
let g:ycm_server_python_interpreter = '/usr/bin/python'
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:clang_snippets_engine='clang_complete' 
let g:ycm_global_ycm_extra_conf = '/home/woocat/.ycm_extra_conf.py'
let g:ycm_auto_trigger = 1
set relativenumber
set cursorline
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=Black guibg=#589A5D
