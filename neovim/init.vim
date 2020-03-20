set nocompatible
filetype off

set encoding=utf-8

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

" init Vundle
Plugin 'VundleVim/Vundle.vim'
" Plugins will be installed after running :PluginInstall
" enter plugins here
Plugin 'ncm2/ncm2'
Plugin 'roxma/nvim-yarp'
Plugin 'HansPinckaers/ncm2-jedi'
Plugin 'ncm2/ncm2-bufword'
Plugin 'ncm2/ncm2-path'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'davidhalter/jedi-vim'

" now start them
call vundle#end()
filetype plugin indent on
" let g:SuperTabDefaultCompletionType = "context"

let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

let python_highlight_all=1
syntax on

set number

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-DOWN> <C-W><C-J>
nnoremap <C-UP> <C-W><C-K>
nnoremap <C-RIGHT> <C-W><C-L>
nnoremap <C-LEFT> <C-W><C-H>

"ncm2 setup
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=menuone,noselect,noinsert
set shortmess+=c
inoremap <c-c> <ESC>

"inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

set tabstop=4
set softtabstop=4
set shiftwidth=4
"set textwidth=79
set expandtab
set autoindent
set fileformat=unix



let ncm2#popup_delay = 5
let ncm2#complete_length = [[1, 1]]
" fuzzy based matches
"let g:ncm2#matcher = 'substrfuzzy'

" Disable Jedi-vim autocompletion and enable call-signatures options
let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#popup_on_dot = 0 
let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = "1"

" PEP 8 indention
au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
"    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

set background=dark
let g:zenburn_high_Contrast=1
colorscheme zenburn

call togglebg#map("<F5>")
