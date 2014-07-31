set nocompatible
set encoding=utf-8

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'nanotech/jellybeans.vim'

Bundle 'camelcasemotion'

Bundle 'bling/vim-airline'
Bundle 'edkolev/tmuxline.vim'

Bundle 'christoomey/vim-tmux-navigator'

Bundle 'othree/html5.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'mustache/vim-mustache-handlebars'
Bundle 'vim-ruby/vim-ruby'

Bundle 'ap/vim-css-color'

Bundle 'csexton/trailertrash.vim'

Bundle 'int3/vim-extradite'
Bundle 'sjl/splice.vim'

Bundle 'thoughtbot/vim-rspec'

Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-dispatch'
Bundle 'tpope/vim-projectionist'

set number
set ruler
set laststatus=2

set expandtab
set softtabstop=2
set shiftwidth=2

set autoindent
set smartindent

set backspace=2

syntax enable

set winminheight=0

set showmatch

set ignorecase
set hlsearch

set clipboard=unnamedplus

set shell=zsh

set backupdir=~/.vim/backup
set dir=~/.vim/swap
set undodir=~/.vim/undo

set shell=/usr/bin/zsh

colorscheme jellybeans

filetype plugin indent on

"Airline config
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_theme = 'jellybeans'

"Tmuxline config
let g:tmuxline_separators = { 'left' : '', 'left_alt': '', 'right' : '', 'right_alt' : '', 'space' : ' ' }
let g:airline#extensions#tmuxline#enabled = 0

"RSpec + Dispatch!
let g:rspec_command = 'Dispatch rspec {spec}'

map <silent> <C-M> <C-W>_

map <silent> <leader>n :silent noh<CR>
map <silent> <leader>t :Trim<CR>

map <silent> <leader>cc :ccl<CR>

map <Leader>r :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :Dispatch rspec-fast<CR>

"No arrow keys. :(
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

