set nocompatible
set encoding=utf-8

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'vim-scripts/camelcasemotion'
Plug 'vim-scripts/svg.vim'

Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'vim-airline/vim-airline'
Plug 'christoomey/vim-tmux-navigator'

Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'vim-ruby/vim-ruby'
Plug 'noprompt/vim-yardoc'
Plug 'ap/vim-css-color'

Plug 'csexton/trailertrash.vim'

Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
call plug#end()

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

set clipboard=unnamed     " Use system clipboard.

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

set termguicolors

set tags=tags             " Ctag location

runtime macros/matchit.vim

set t_Co=256              " More colors!

colorscheme catppuccin_latte
syntax on

"SVG syntax and formatting
au BufNewFile,BufRead *.svg setf svg

"Show a little more in explorer
let g:netrw_liststyle=3

"Airline config
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

let g:airline_symbols.branch = ""
let g:airline_symbols.readonly = "RO"
let g:airline_symbols.linenr = ""
let g:airline_symbols.whitespace = ""

let g:airline_theme = "catppuccin_latte"

"Gist
let g:gist_detect_filetype = 1
let g:gist_post_private = 1
let g:gist_show_privates = 1
let g:gist_open_browser_after_post = 1
let g:gist_token = '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'

"Splice
let g:splice_initial_diff_grid = 1
let g:splice_initial_scrollbind_grid = 1

"TrailerTrash highlight
hi UnwantedTrailerTrash guibg=red ctermbg=red

"Auto background switching
function! SetBackgroundMode(...)
  let g:mode = system("defaults read -g AppleInterfaceStyle")
  let s:bg = (g:mode ==? "dark\n" ? "dark" : "light")
  if &background !=? s:bg
    let &background = s:bg
  endif
endfunction
call SetBackgroundMode()

"Run file using command
function! RunWith(command)
  execute "w"
  execute "!clear;" . a:command . " " . expand("%")
endfunction

"Fzy file searching.
function! FzyCommand(choice_command, vim_command)
  try
    let output = system(a:choice_command . " | fzy ")
  catch /Vim:Interrupt/
    " Swallow errors from ^C, allow redraw! below
  endtry
  redraw!
  if v:shell_error == 0 && !empty(output)
    exec a:vim_command . ' ' . output
  endif
endfunction

"Use space for leader
map <space> <leader>

map <silent> <C-M> <C-W>_

map <silent> <leader>. :call SetBackgroundMode()<CR>
map <silent> <leader>n :silent noh<CR>
map <silent> <leader>t :TrailerTrim<CR>

map <silent> <leader>w :w<CR>
map <silent> <leader>q :q<CR>

"Convert snakecase to camelcase
map <silent> <leader>c :s#_\(\l\)#\u\1#g<CR>

"Run ruby files
autocmd FileType ruby nmap <Leader>r :call RunWith("ruby")<cr>

"Convert Ruby 1.8 hashes to 1.9 syntax
noremap <leader>h :s/:\(\w\+\)\s*=>/\1:/g<CR>

map <leader>e :call FzyCommand('rg --files', ":e")<cr>
map <leader>v :call FzyCommand('rg --files', ":vs")<cr>
map <leader>p :call FzyCommand('rg --files', ":sp")<cr>
