hi clear
if exists("syntax_on")
  syntax reset
endif

"Load solarized
runtime colors/solarized.vim

let g:colors_name = "adamized"

" YARD syntax highlighting "{{{
" -----------------------------
hi link yardGenericTag Underlined
hi link yardDuckType Todo
hi link yardType Todo
hi link yardLiteral Todo
hi link yardOrderDependentList Todo
hi link yardParametricType Todo
hi link yardTypeList Todo
hi link yardHashAngle Todo
hi link yardHashCurly Todo
"}}}
