setlocal makeprg=jshint
setlocal errorformat=%f:\ line\ %l\\,\ col\ %c\\,\ %m,%-G%.%#
map <Leader>j :Make %<CR>
