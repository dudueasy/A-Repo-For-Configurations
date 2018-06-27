"jiangmiao/auto-pairs Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')


" Plugins
" You complete me
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }

" emmet-vim
Plug 'mattn/emmet-vim'

" auto-pair plugin
Plug 'jiangmiao/auto-pairs' 

" word surround plugin
Plug 'tpope/vim-surround'

" file navigation plugin
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

" a vim status-bar plugin
Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

let g:airline_theme='sol'

" # vim obsession 
Plug 'tpope/vim-obsession'

" # fzf : a fuzzy finder
Plug '/usr/local/opt/fzf'


" # syntax neomake: a checker plugin
Plug 'neomake/neomake'

" ## enabled makers for neomake
" ### more maker options please check: https://github.com/neomake/neomake/wiki/Makers

let g:neomake_javascript_enabled_makers = ['jshint']

let g:neomake_css_enabled_makers = ['csslint']

" #tab completion plugin 
Plug 'ervandew/supertab'


" identLine plugin
 Plug 'Yggdroot/indentLine'


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


" neovim settings
"" set ignorecase
set ic 

syntax on
set hlsearch
set smartindent
set number
set cursorline
filetype on
set clipboard+=unnamedplus

" neovim setting for tab & space
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line


" python3 support
let g:pymode_python = 'python3'
" example for python2 :  
" let g:pymode_python = 'python2'

" set charset encoding
set encoding=utf-8

" ========== keybinding starts here ========== 
"" Press Ctrl+n to open NERDTree
map <C-n> :NERDTreeTabsToggle<CR>

"" Press F5 to open nvim configuration file, F6 to reload it 
nnoremap <silent> <F5> :vnew ~/.config/nvim/init.vim<CR>
nnoremap <silent> <F6> :so ~/.config/nvim/init.vim<CR>

" Press Tab/Shift+Tab to change line indentation (conflicted)
" nmap <tab> V>
" nmap <s-tab> V<
" vmap <tab> >gv
" vmap <s-tab> <gv

"" Use Alt+j/k to move line 
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<cr>==gi
inoremap <a-k> <esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Press Ctrl+i to quit insert mode (conflicted with auto-completion shortkey)
" imap <C-I> <Esc>
" disable tab key
" map <tab> <Nop>
" map <s-tab> <Nop>


" ========== keybinding ends here ========== 
