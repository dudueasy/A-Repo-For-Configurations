" Specify a directory for plugins 
" - For Neovim: ~/.local/share/nvim/plugged 
" - Avoid using standard Vim directory names like 'plugin' 
call plug#begin('~/.vim/plugged') 
 
" Plugins 

"vim  Comment plugin
Plug 'scrooloose/nerdcommenter'
" nerdcommenter configuration (use ,+c to comment in normal mode & insert mode)
nnoremap ,c :call NERDComment(0,"toggle")<CR>
vnoremap ,c :call NERDComment(0,"toggle")<CR>

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" Plug 'scrooloose/nerdtree'
" Plug 'jistr/vim-nerdtree-tabs'
" configuration for nerdtree_tabs_on_startup
" Enable nerdtree_tabs_on_startup
let g:nerdtree_tabs_open_on_console_startup=0
let g:nerdtree_tabs_meaningful_tab_names=1
let g:nerdtree_tabs_focus_on_files=1


" You complete me
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }

" emmet-vim
" shortcut: ctrl+y ,
" Plug 'mattn/emmet-vim'

" auto-pair plugin
" Plug 'jiangmiao/auto-pairs'

" word surround plugin
" Plug 'tpope/vim-surround'

let g:airline_theme='sol'

" # vim obsession 
" Plug 'tpope/vim-obsession'

" # fzf : a fuzzy finder
" Plug '/usr/local/opt/fzf'

 
" a vim status-bar plugin
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
 
let g:airline_theme='sol' 

" identLine plugin
" Plug 'Yggdroot/indentLine'

" Basic tmux support for Vim
" Plug 'tpope/vim-tbone'
" Initialize plugin system

 
" #========== syntastic and it's setting starts here ==========# 
" Plugin syntastic and it's setting 
" Plug 'vim-syntastic/syntastic'
 
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
set autoindent
set copyindent      " copy indent from the previous line
set smartindent 
set number
set cursorline 
 
set ignorecase
set smartcase

" set charset encoding 
set encoding=utf-8 

set clipboard=unnamed

" python3 support
let g:pymode_python = 'python3'


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

" use d to replace "_d (yank to black hole register)
nnoremap _ "_
vnoremap _ "_

" for inserting vim buffer into tmux buffer
vnoremap ,y :Tyank<ENTER>

" vnoremap ,c :call NERDComment(0,"toggle")<CR>

" Press Ctrl+i to quit insert mode (conflicted with auto-completion shortkey)
" imap <C-I> <Esc>
" disable tab key
" map <tab> <Nop>
" map <s-tab> <Nop>


" ========== keybinding ends here ========== 


