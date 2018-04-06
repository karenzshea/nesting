set colorcolumn=80
set expandtab
set hlsearch
set ignorecase
set lcs=tab:├─,trail:☃,extends:»,precedes:«,nbsp:&
set list
set nottimeout
set number
set ruler
set shiftwidth=4
set showcmd
set smartcase
set smartindent
set softtabstop=4

syntax on
:noremap <Space> :set hlsearch! hlsearch?<CR>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

autocmd FileType c,cpp setlocal tabstop=4 shiftwidth=4 expandtab nowrap cinoptions=N-s
autocmd FileType c,cpp nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp vnoremap <buffer><Leader>cf :ClangFormat<CR>
let g:clang_format#detect_style_file=1
let g:clang_format#command="clang-format"
cmap w!! %!sudo tee > /dev/null %

set nocompatible              " be iMproved, required
filetype off                  " required

let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_global_ycm_extra_conf = '/home/karen/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
