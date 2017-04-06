" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %
" enter the current version
set nocompatible


" --------------------------- VUNDLE START --------------------------------------------------!!
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" For Auto complete
Plugin 'Valloric/YouCompleteMe'
" For Syntax Color
Plugin 'NLKNguyen/papercolor-theme'
" NerdTree
Plugin 'scrooloose/nerdtree'
" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Easy motion
Plugin 'easymotion/vim-easymotion'
"jedi python auto complete
Plugin 'davidhalter/jedi-vim'
" snipmate for auto complete python
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-fugitive'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" --------------------------- VUNDLE END --------------------------------------------------!!

" --------------------------- PATHOGEN START --------------------------------------------------!!
" Pathogen load
execute pathogen#infect()
syntax on
filetype plugin indent on

" --------------------------- PATHOGEN END --------------------------------------------------!!

" --------------------------- SYNTASTIC START --------------------------------------------------!!
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs=1
let g:syntastic_aggregate_errors=1
let g:syntastic_loc_list_height=5
let g:syntastic_error_symbol='X'
let g:syntastic_style_error_symbol='X'
let g:syntastic_warning_symbol='x'
let g:syntastic_style_warning_symbol='x'
let g:syntastic_python_checkers=['flake8', 'pydocstyle', 'python']

" --------------------------- SYNTASTIC END --------------------------------------------------!!

" --------------------------- PYMODE START --------------------------------------------------!!
" Pymode configuration

let g:pymode_rope = 0
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_autoimport = 0

" for pymode virtualenv
let g:pymode_virtualenv = 1

" for syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_slow_sync=1
let g:pymode_syntax_all=1
let g:pymode_syntax_print_as_function=g:pymode_syntax_all
let g:pymode_syntax_highlight_async_await=g:pymode_syntax_all
let g:pymode_syntax_highlight_equal_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_stars_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_self=g:pymode_syntax_all
let g:pymode_syntax_indent_errors=g:pymode_syntax_all
let g:pymode_syntax_string_formatting=g:pymode_syntax_all
let g:pymode_syntax_space_errors=g:pymode_syntax_all
let g:pymode_syntax_string_format=g:pymode_syntax_all
let g:pymode_syntax_string_templates=g:pymode_syntax_all
let g:pymode_syntax_doctests=g:pymode_syntax_all
let g:pymode_syntax_builtin_objs=g:pymode_syntax_all
let g:pymode_syntax_builtin_types=g:pymode_syntax_all
let g:pymode_syntax_highlight_exceptions=g:pymode_syntax_all
let g:pymode_syntax_docstrings=g:pymode_syntax_all

" for pymode python version
let g:pymode_python = 'python3'

" for pymode python indentation
let g:pymode_indent = 1

" for pymode run the code
let g:pymode_run = 1

"Trim unused white spaces on save
let g:pymode_trim_whitespaces = 1

"Setup pymode |quickfix| window
let g:pymode_quickfix_minheight = 3
let g:pymode_quickfix_maxheight = 6

"folding
let g:pymode_folding = 1

"motion
let g:pymode_motion = 1

"breakpoints
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

"code checking
let g:pymode_lint = 1
let g:pymode_lint_on_fly = 0
let g:pymode_lint_message = 1
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe']


let g:pymode_doc=1
let g:pymode_doc_key='K'



" --------------------------- PYMODE END --------------------------------------------------!!

" --------------------------- YOU COMPLETE START --------------------------------------------------!!
" for autocomplete
let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_autoclose_preview_window_after_completion=1
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" --------------------------- YOU COMPLETE END --------------------------------------------------!!

" --------------------------- COLOR START --------------------------------------------------!!
" Setting the color theme
set background=dark
colorscheme PaperColor

"Molokai
"let g:molokai_original = 1
"colorscheme molokai


" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
set t_Co=256
color wombat256mod

" --------------------------- COLOR END --------------------------------------------------!!

" ======================== Mapping Settings =================

let mapleader = ","

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" easier moving code of blocks
vnoremap < <gv "better indentation
vnoremap > >gv "better indentation

" usefull setting
set history=700
set undolevels=700

" Python programming setting space 
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" this is for the SuperTab setting for TAB auto completion
let g:SuperTabDefaultCompletionType = "<c-n>"
" ========================Mapping ==================

" --------------------------- NERD TREE START --------------------------------------------------!!
" Nerd Tree open
map <C-n> :NERDTreeToggle<CR>

" --------------------------- NERD TREE END --------------------------------------------------!!

" ------------------------easy motion -----------------------!!
let g:EasyMotion_leader_key = '<Leader>w'

"------------------------ easy motion ------------------------!!

" ================================== IDE settings ========================

" Enable syntax highlighting
" You need to reload this file for the change to apply
filetype off
filetype plugin indent on
syntax on


" Showing line numbers and length
set number  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set autoindent                              " indent when moving to the next line while writing code
set cursorline                              " shows line under the cursor's line
set showmatch                               " shows matching part of bracket pairs (), [], {}
set enc=utf-8	                            " utf-8 by default
set ttyfast                                 " terminal acceleration



" jedi settings
let g:jedi#usages_command = "<leader>z"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" Python folding
" mkdir -p ~/.vim/ftplugin
" wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492
set nofoldenable

" ============================================================================

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

