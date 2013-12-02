"======================================
"    Plugin Name:  wauto.vim
"        Version:  0.0.4
"  Last Modified:  21.11.2013
"   Pull Request:  soramugi
"======================================
if !exists("g:auto_write")
  let g:auto_write = 0
endif

if !exists("g:auto_write_ignore_filetype_list")
  let g:auto_write_ignore_filetype_list = []
endif

function! s:auto_write_start()
  augroup vimrc-awrite
    autocmd!
    try
      " Vim Version 7.3.867 Any more
      autocmd TextChanged * call <SID>auto_write()
    catch
      " Vim Version 7.3.867 Under more
      autocmd CursorHold,InsertLeave * call <SID>auto_write()
    endtry
  augroup END
endfunction

function! s:auto_write()
  for s:filetype in g:auto_write_ignore_filetype_list
    if s:filetype ==# &filetype
      return
    endif
  endfor
  silent! w
endfunction

command! -nargs=0 AutoWriteStart call <SID>auto_write_start()
command! -nargs=0 AutoWriteStop autocmd! vimrc-awrite

" nnoremap <silent> <Leader>s :set ei=TextChanged<CR>
nnoremap <Plug>(AutoWriteStart) :AutoWriteStart<CR>
nnoremap <Plug>(AutoWriteStop)  :AutoWriteStop<CR>

if g:auto_write >= 1
  call <SID>auto_write_start()
endif
