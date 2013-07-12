set nocompatible														"be Improved
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'nanotech/jellybeans.vim'
Bundle 'bling/vim-airline'

Bundle 'kchmck/vim-coffee-script'

Bundle 'bitc/vim-bad-whitespace'
Bundle 'scrooloose/nerdtree'

Bundle 'Lokaltog/vim-easymotion'

Bundle 'mileszs/ack.vim'

Bundle 'othree/html5.vim'

Bundle 'juvenn/mustache.vim'

Bundle 'yaymukund/vim-rabl'
Bundle 'int3/vim-extradite'

Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-markdown'

set nocp
set nu
set ts=2														"tab stop 2
set shiftwidth=2										"tab shift width 2
set expandtab
set autoindent
set smartindent											"use smart indenting
set bs=2														"allow backspace in insert mode
syntax enable                       "enable syntax highlighting
set ruler														"use the ruler thigy
set showmatch												"blink matching parentheses
set ignorecase											"do case insensitive searching
set hls                             "use highlight search
set wmh=0                           "minimum windows width for splits
set exrc                            "enable per-directory .vimrc files
set secure                          "disable unsafe commands in local .vimrc files
set t_Co=256                        "256 color support
set laststatus=2
set encoding=utf-8

set backupdir=~/.vim/backup
set dir=~/.vim/swap
set undodir=~/.vim/undo

filetype plugin indent on

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_fugitive_prefix = ' '
let g:airline_readonly_symbol = ''
let g:airline_linecolumn_prefix = ''
let g:airline_theme='badwolf'

colorscheme jellybeans
highlight clear SignColumn

autocmd BufNewFile,BufRead *.mobile.erb let b:eruby_subtype='html'
autocmd BufNewFile,BufRead *.mobile.erb set filetype=eruby
autocmd BufNewFile,BufRead .pryrc set filetype=ruby

"This maps ctrl+h and ctrl+l to moving between :vsplit windows
map <silent> <C-J> <C-W>k<C-W>_
map <silent> <C-K> <C-W>j<C-W>_
map <silent> <C-H> <C-W>h
map <silent> <C-L> <C-W>l
map <silent> <C-N> :silent noh<CR>
map <silent> <C-T> :NERDTree <CR>
map <silent> gb :Gblame<CR>
map <silent> gc :Gcommit<CR>
map <silent> gC :Gcommit -a<CR>
map <silent> gl :gitv<CR>
map <silent> gs :Gstatus<CR>
map <silent> ws :EraseBadWhitespace<CR>

"Expression mappings.
cabbr <expr> %% expand('%:p:h')

"No arrow keys. :(
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
