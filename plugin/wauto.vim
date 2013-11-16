"======================================
"    Plugin Name:  wauto.vim
"        Version:  0.0.3
"  Last Modified:  17.11.2013
"======================================

if !exists("g:auto_write")
  let g:auto_write = 0
endif

function! s:auto_write_start()
" if g:auto_write >= 1
augroup vimrc-awrite
  autocmd!
  autocmd TextChanged * w
augroup END
" endif
endfunction

command! -nargs=0 AutoWriteStart call <SID>auto_write_start()
command! -nargs=0 AutoWriteStop autocmd! vimrc-awrite

" nnoremap <silent> <Leader>s :set ei=TextChanged<CR>
nnoremap <buffer> <Leader>s :AutoWriteStart<CR>
nnoremap <buffer> <Leader>ss :AutoWriteStop<CR>
