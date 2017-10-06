"----------------------------------------------------
" Vundle settings
" https://github.com/VundleVim/Vundle.vim
"----------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'mxw/vim-jsx'

Plugin 'vim-syntastic/syntastic'

Bundle 'takac/vim-hardtime'

Plugin 'tpope/vim-surround'

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

"----------------------------------------------------
"Syntastic settings
"----------------------------------------------------

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_ignore_files = ['^[.].*$']
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" passive mode below enable with ctrl-E
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>

"----------------------------------------------------
"Hardtime settings
"----------------------------------------------------

let g:hardtime_default_on = 1       "enable hard time on every buffer
"keys with a delay set
let g:list_of_normal_keys = ["h", "j", "k", "l", "-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_visual_keys = ["h", "j", "k", "l", "-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_insert_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_disabled_keys = []

"----------------------------------------------------
"Custom settings
"----------------------------------------------------

colorscheme molokai     " color scheme
syntax enable           " enable syntax processing
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " when indenting with '>', use 4 spaces width
set expandtab       " tabs are spaces
set number              " show line numbers
set relativenumber      " show relative number
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
nnoremap <leader><space> :nohlsearch<CR>        "remove highlighted matches with \space
nnoremap <F5> :buffers<CR>:buffer<Space>        "f5 will show list of buffers. press # to choose
set scrolloff=5      " Keep 5 lines below and above the cursor
autocmd BufEnter * let &titlestring = ' ' . expand("%:t")   "set title to current Buffer
set title       "set the title to current Buffer
"let g:rehash256 = 1
"enable 256 colors
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif
