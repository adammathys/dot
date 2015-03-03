set nocompatible
set encoding=utf-8

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'gmarik/vundle'

Plugin 'altercation/vim-colors-solarized'

Plugin 'camelcasemotion'

Plugin 'justinmk/vim-sneak'

Plugin 'bling/vim-airline'

Plugin 'rking/ag.vim'

Plugin 'christoomey/vim-tmux-navigator'

Plugin 'othree/html5.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'vim-ruby/vim-ruby'

Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'

Plugin 'ap/vim-css-color'

Plugin 'csexton/trailertrash.vim'

Plugin 'sjl/splice.vim'
Plugin 'sjl/gundo.vim'

Plugin 'thoughtbot/vim-rspec'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-markdown'

Plugin 'adammathys/vim-dispatch'

call vundle#end()
filetype plugin indent on

set number
set ruler
set laststatus=2

set expandtab
set softtabstop=2
set shiftwidth=2

set autoindent
set smartindent

set backspace=2

set winminheight=0

set showmatch

set clipboard=unnamedplus

set t_Co=256

set shell=zsh

set backupdir=~/.vim/backup
set dir=~/.vim/swap
set undodir=~/.vim/undo

set ignorecase
set smartcase
set hlsearch

set cmdheight=1
set wildmode=list:longest,list:full
set wildmenu

syntax enable
set background=dark
colorscheme solarized

filetype plugin indent on

"Airline config
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_theme = 'solarized'

"RSpec + Dispatch!
let g:rspec_command = 'Dispatch rspec {spec}'

"Dispatch compilers
let g:dispatch_compilers = { 'rspec-fast' : 'rspec' }

"Sneaky sneak
let g:sneak#streak = 1

"Splice
let g:splice_initial_diff_grid = 1
let g:splice_initial_scrollbind_grid = 1

"TrailerTrash highlight
hi UnwantedTrailerTrash guibg=red ctermbg=red

" Use space for leader
map <space> <leader>

map <silent> <leader>g :GundoToggle<CR>

map <silent> <C-M> <C-W>_

map <silent> <leader>n :silent noh<CR>
map <silent> <leader>t :TrailerTrim<CR>

map <silent> <leader>cc :ccl<CR>
map <silent> ]q :cn<CR>
map <silent> [q :cp<CR>

map <silent> <leader>w :w<CR>
map <silent> <leader>q :q<CR>

"Convert Ruby 1.8 hashes to 1.9 syntax
noremap <leader>rr :s/:\(\w\+\)\s*=>/\1:/g<CR>

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
