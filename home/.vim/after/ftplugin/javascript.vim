setlocal makeprg=jslint\ %
setlocal errorformat=%-P%f,
                    \%A%>%\\s%\\?#%*\\d\ %m,%Z%.%#Line\ %l\\,\ Pos\ %c,
                    \%-G%f\ is\ OK.,%-Q
map <Leader>j :Make jslint %<CR>
