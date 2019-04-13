set nocompatible
filetype off

set encoding=utf-8

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

" init Vundle
Plugin 'VundleVim/Vundle.vim'
" Plugins will be installed after running :PluginInstall
" enter plugins here
Plugin 'vim-syntastic/syntastic'
Plugin 'ervandew/supertab'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'davidhalter/jedi-vim'

" now start them
call vundle#end()
filetype plugin indent on
let g:SuperTabDefaultCompletionType = "context"


let python_highlight_all=1
syntax on

set number

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

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
