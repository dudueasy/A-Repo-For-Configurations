" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Plugins
Plug 'tpope/vim-surround'

Plug 'scrooloose/nerdtree'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

let g:airline_theme='sol'

" #========== syntastic and it's setting starts here ==========#
" Plugin syntastic and it's setting
Plug 'vim-syntastic/syntastic'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs=1
let g:syntastic_javascript_checkers = ['jshint']

" #========== syntastic and setting ends here ==========#

" Initialize plugin system
call plug#end()

" vim settings
syntax on
set hlsearch
""" tabstop : size of tab key
set ts=2
""" shiftwidth : size of an indent
set sw=2
set expandtab
set smartindent
set cursorline
set cursorcolumn 

" set charset encoding
set encoding=utf-8

" use deoplete

