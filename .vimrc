call plug#begin('~/.vim/plugged')
Plug 'tek256/simple-dark'
Plug 'w0rp/ale'
call plug#end()

colorscheme simple-dark
set hidden
set wildmenu
set wildignore+=**/node_modules/**
set path+=**
set backspace=indent,eol,start
set statusline=%f
set expandtab
set tabstop=4
set clipboard=unnamedplus

let g:ale_sign_error = 'x'
let g:ale_sign_warning = 'w'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

let g:ale_fixers = {
                        \  'javascript': ['eslint'],
                        \}

let g:ale_fix_on_save = 1
