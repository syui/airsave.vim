"======================================
"    Plugin Name:  wauto.vim
"        Version:  0.0.2
"  Last Modified:  16.11.2013
"======================================

if !exists("g:auto_write")
  let g:auto_write = 0
endif


if g:auto_write >= 1
augroup auto-write
    autocmd!
  autocmd TextChanged * w
augroup END
endif

nnoremap <silent> <Leader>s :set ei=TextChanged<CR>
