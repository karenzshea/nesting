"" pathogen
execute pathogen#infect()

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
filetype plugin indent on
:noremap <Space> :set hlsearch! hlsearch?<CR>

autocmd FileType c,cpp setlocal tabstop=4 shiftwidth=4 expandtab nowrap cinoptions=N-s
autocmd FileType c,cpp nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp vnoremap <buffer><Leader>cf :ClangFormat<CR>
let g:clang_format#detect_style_file=1
let g:clang_format#command="clang-format-3.8"
cmap w!! %!sudo tee > /dev/null %

" Switch between definition and implementation files.
function! SwitchSourceHeader()
  if (expand ("%:e") == "cpp")
    vert sf %:t:r.h*
  else
    vert sf %:t:r.cpp
  endif
endfunction
map <F10> :call SwitchSourceHeader()<CR>
map <C-n> :NERDTreeToggle<CR>
