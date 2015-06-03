set nocompatible
set encoding=utf-8

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'camelcasemotion'

Plugin 'rking/ag.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'christoomey/vim-tmux-navigator'

Plugin 'othree/html5.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'vim-ruby/vim-ruby'
Plugin 'noprompt/vim-yardoc'
Plugin 'ap/vim-css-color'

Plugin 'csexton/trailertrash.vim'

Plugin 'sjl/splice.vim'
Plugin 'sjl/gundo.vim'

Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-markdown'

Plugin 'thoughtbot/vim-rspec'
Plugin 'adammathys/vim-dispatch'

call vundle#end()
filetype plugin indent on

set number                " Show numbers.
set ruler                 " Show line and column number of cursor position.
set laststatus=2          " Always show the status line.
set winminheight=0        " Allow windwos to have 0 height.
set showmatch             " Show matching brackets.

set expandtab             " Use spaces instead of tabs.
set softtabstop=2         " Tabs are two spaces.
set shiftwidth=2          " Auto-indent two spaces.
set backspace=2           " Backspace over indent, end of line and start of insert.

set autoindent            " Yay for auto-indent!
set smartindent           " Indent smartly.

set clipboard=unnamedplus " Use '+' clipboard.

set t_Co=256              " More colors!

set shell=zsh             " Use zsh for `:!` commands.

set nobackup              " No backup files.
set noswapfile            " No swap files.
set undodir=~/.vim/undo   " Store undo somewhere sensible.

set ignorecase            " Case-insensitive search.
set smartcase             " Just kidding, do case-sensitive sometimes.
set hlsearch              " Highlight search matches.

set cmdheight=1           " Only use one line for the command-line.
set wildmode=list:longest,list:full
set wildmenu              " Tab completion in command-line.

syntax enable             " Who doesn't want syntax highlighting?
set background=dark       " Love me the dark background.
colorscheme adamized      " Custom solarized!

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

"Gist
let g:gist_detect_filetype = 1
let g:gist_post_private = 1
let g:gist_show_privates = 1
let g:gist_open_browser_after_post = 1

"RSpec + Dispatch!
let g:rspec_command = 'Dispatch rspec {spec}'

"Dispatch compilers
let g:dispatch_compilers = { 'rspec-fast' : 'rspec' }

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
