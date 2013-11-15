"======================================
"    Plugin Name:  wauto.vim
"        Version:  0.0.1
"  Last Modified:  15.11.2013
"======================================

if !exists("g:auto_write")
  let g:auto_write = 0
endif


if g:auto_write >= 1
  autocmd TextChanged * w
endif

