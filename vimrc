set colorcolumn=80
set expandtab
set hlsearch
set ignorecase
set lcs=tab:··,trail:·,extends:»,precedes:«,nbsp:&
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

cmap w!! %!sudo tee > /dev/null %

set nocompatible              " be iMproved, required
filetype off                  " required
