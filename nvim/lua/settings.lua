------------------------------------------------
-- Global variables

-- The final frontier
vim.g.mapleader = ' '

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

------------------------------------------------
-- Options

-- Do not use mouse support
vim.o.mouse = ''

-- Use two spaces for indentation
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.tabstop = 2
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.smarttab = true

vim.o.backup = false
vim.o.swapfile = false
vim.o.undofile = true

vim.o.autoread = true

vim.o.number = true
vim.o.ruler = true

-- Use "legacy" behaviour for splits
vim.o.splitbelow = false
vim.o.splitright = false

-- Live preview of substitutions
vim.o.inccommand = "split"

-- Ignore case in search unless the search contains capitals
vim.o.ignorecase = true
vim.o.smartcase = true

-- Handled by status bar
vim.o.showmode = false

-- Show spaces
vim.o.list = true
vim.o.listchars = "tab:>·,trail:~,extends:>,precedes:<"

-- Allow windows to have 0 height
vim.o.winminheight = 0

-- Status line always
vim.o.laststatus = 2

-- Probably make terminal stuff faster
vim.o.lazyredraw = true
vim.o.timeoutlen = 1000
vim.o.ttimeoutlen = 300
vim.o.updatetime = 50

-- Use system clipboard
vim.api.nvim_set_option("clipboard","unnamed")

------------------------------------------------
-- Key Bindings

-- Hide search results
vim.keymap.set("n", "<Leader>n", ":silent noh<cr>")

-- Quick save/exit
vim.keymap.set("n", "<Leader>w", ":w<cr>")
vim.keymap.set("n", "<Leader>q", ":q<cr>")

-- Maximize current split
vim.keymap.set("n", "<C-M>", "<C-W>_")

-- Old keybindings for opening splits
vim.keymap.set("n", "<Leader>p", ":sp<cr><leader>e")
vim.keymap.set("n", "<Leader>v", ":vs<cr><leader>e")

-- Remove trailing whitespace
vim.keymap.set('n', '<Leader>t', [[:lua vim.lsp.buf.format()<cr> <bar> :%s/\s\+$//e<cr>]])

-- Toggle background between light/dark
vim.keymap.set('n', "<Leader>b", ':exec &bg=="light"? "set bg=dark" : "set bg=light"<CR>', {noremap = true, silent = true})
