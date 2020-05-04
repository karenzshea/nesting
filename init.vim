set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', { 'do': 'yes \| ./install' }
Plug 'sbdchd/neoformat'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
call plug#end()

let g:neoformat_enabled_cpp = ['clang-format']
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_rust_src_path = '${rustc --print sysroot}'

autocmd FileType rs nnoremap <Leader>] :YcmCompleter GoTo<CR>
autocmd FileType c,cpp setlocal tabstop=4 shiftwidth=4 expandtab nowrap cinoptions=N-s
