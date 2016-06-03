"======================================
"{ file: airsave.vim }
"    Plugin Name:  airsave.vim
"        Version:  0.0.5
"  Last Modified:  25.06.2014
"   Pull Request:  @soramugi
"======================================

if !exists("g:air_auto_write")
  let g:air_auto_write = 0
en

if !exists("g:air_auto_write_nosilent")
  let g:air_auto_write_nosilent = 0
en

fu! s:air_auto_write_start()
  aug vimrc_air_auto_write
    au!
    try
      if g:air_auto_write_nosilent == 0
        au TextChanged,CursorHold,InsertLeave * sil! update
      el
        au TextChanged,CursorHold,InsertLeave * update
      en
    cat
      au CursorHold,InsertLeave * sil! update
    endt
  aug END
endf

com! AirAutoWriteStart call <SID>air_auto_write_start()
com! AirAutoWriteStop au! vimrc_air_auto_write

nn <Plug>(AirAutoWriteStart) :AirAutoWriteStart<CR>
nn <Plug>(AirAutoWriteStop)  :AirAutoWriteStop<CR>

if g:air_auto_write >= 1
  call <SID>air_auto_write_start()
en

"" mini ver {{{
"" 最小構成
"aug vimrc_airsave_vim
"  au!
"  au TextChanged * w
"aug END
"" }}}

"" setting {{{
"" オートセーブを有効にする
" let g:air_auto_write = 1
"" 書き込みを表示する
" let g:air_auto_write_nosilent = 1
"" オートセーブを開始する
" nm <Leader>s  <Plug>(AirAutoWriteStart)
"" オートセーブを停止する
" nm <Leader>ss <Plug>(AirAutoWriteStop)
"" }}}
