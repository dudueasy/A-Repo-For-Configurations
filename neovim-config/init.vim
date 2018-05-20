" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Plugins

" word surround plugin
Plug 'tpope/vim-surround'

" file navigation plugin
Plug 'scrooloose/nerdtree'

" a vim status-bar plygin
Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

let g:airline_theme='sol'

" # syntax checker plugin
Plug 'neomake/neomake'

" ## enabled makers for neomake
" ### more maker options please check: https://github.com/neomake/neomake/wiki/Makers

let g:neomake_javascript_enabled_makers = ['jshint']
let g:neomake_javascript_enabled_makers = ['jsxhint']





" #tab completion plugin 
Plug 'ervandew/supertab'

" #========== deoplete and it's completion plugin settings starts here ==========#
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" #========== deoplete configuration starts here ==========#

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1


" #========== deoplete dependency & configuration ends here ==========#

" dependency
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }


" completion for javascript
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

" Use tern_for_vim.
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]


" ##========== deoplete-ternjs configuration starts here ==========##   
" Whether to include the types of the completions in the result data. Default: 0
let g:deoplete#sources#ternjs#types = 1

" Whether to include the distance (in scopes for variables, in prototypes for 
" properties) between the completions and the origin position in the result 
" data. Default: 0
let g:deoplete#sources#ternjs#depths = 1

" Whether to include documentation strings (if found) in the result data.
" Default: 0
let g:deoplete#sources#ternjs#docs = 1

" When on, only completions that match the current word at the given point will
" be returned. Turn this off to get all results, so that you can filter on the 
" client side. Default: 1
let g:deoplete#sources#ternjs#filter = 0

" Whether to use a case-insensitive compare between the current word and 
" potential completions. Default 0
let g:deoplete#sources#ternjs#case_insensitive = 1

" When completing a property and no completions are found, Tern will use some 
" heuristics to try and return some properties anyway. Set this to 0 to 
" turn that off. Default: 1
let g:deoplete#sources#ternjs#guess = 0

" Determines whether the result set will be sorted. Default: 1
let g:deoplete#sources#ternjs#sort = 0

" When disabled, only the text before the given position is considered part of 
" the word. When enabled (the default), the whole variable name that the cursor
" is on will be included. Default: 1
let g:deoplete#sources#ternjs#expand_word_forward = 0

" Whether to ignore the properties of Object.prototype unless they have been 
" spelled out by at least two characters. Default: 1
let g:deoplete#sources#ternjs#omit_object_prototype = 0

" Whether to include JavaScript keywords when completing something that is not 
" a property. Default: 0
let g:deoplete#sources#ternjs#include_keywords = 1

" If completions should be returned when inside a literal. Default: 1
let g:deoplete#sources#ternjs#in_literal = 0

" ##========== deoplete-ternjs configuration ends here ==========##   


" completion for python
Plug 'zchee/deoplete-jedi'


" ##========== deoplete and it's completion plugin settings ends here ==========##


" Initialize plugin system
call plug#end()

" ## neomake configuration
" ### more info please check: https://github.com/neomake/neomake#setup 

" # examples: 
" ## When writing a buffer (no delay).
" call neomake#configure#automake('w')

" ## When writing a buffer (no delay), and on normal mode changes (after 750ms).
" call neomake#configure#automake('nw', 750)

" ## When reading a buffer (after 1s), and when writing (no delay).
" #call neomake#configure#automake('rw', 1000)

" ## normal mode (after 1s; no delay when writing).
call neomake#configure#automake('nrwi', 500)

" ### neomake window configuration
let g:neomake_open_list=2


" vim settings
syntax on
set hlsearch
set ts=4
set sw=4
set expandtab
set smartindent

" python3 support
let g:pymode_python = 'python3'
" example for python2 :  
" let g:pymode_python = 'python2'

" set charset encoding
set encoding=utf-8

" use deoplete

" test
