" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin()

" Make sure you use single quotes
Plug 'valloric/youcompleteme'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'bling/vim-airline'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
Plug 'majutsushi/tagbar'
Plug 'ervandew/supertab'
Plug 'justinmk/vim-syntax-extra'

" Initialize plugin system
call plug#end()

" neocomplete like
set completeopt+=noinsert
" deoplete.nvim recommend
set completeopt+=noselect

let g:airline#extensions#tabline#enabled = 1
let g:deoplete#sources#go#gocode_binary='~/programming/go/bin/gocode'
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#sort_class=['package', 'func', 'type', 'var', 'const']

au FileType go set noexpandtab
au Filetype go set shiftwidth=4
au Filetype go set softtabstop=4
au Filetype go set tabstop=4

set background=dark
colorscheme gruvbox

let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_varible = 1
let g:go_auto_sameids = 1
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck', "go build"]
let g:go_metalinter_autosave = 1
let g:go_metalinter_deadline = "5s"

let mapleader = "\<Space>"
au FileType go nmap <leader>gt :GoDeclsDir<cr><Paste>
au FileType go nmap <leader>jd <Plug>(go-def)


let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

map <leader>tn :NERDTreeToggle<CR>
map <leader>tt :Tagbar<CR>
map <leader>fr :CtrlPMRUFiles<CR>
map <leader>bb :CtrlPBuffer<CR>

" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

set cursorline

syntax on
set number
set relativenumber
