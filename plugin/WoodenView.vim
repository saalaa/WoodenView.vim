" =============== ============================================================
" Name           : WoodenView
" Description    : Handles window splits
" Author         : Benoit Myard <myardbenoit@gmail.com>
" HomePage       : https://github.com/saalaa/WoodenView.Vim
" Date Created   : Mon Dec 19 22:08:54 CET 2016
" Last Modified  : Mon Dec 19 22:08:54 CET 2016
" Tag            : [ vim, window, size ]
" Copyright      : © 2016 Benoit Myard
" License        : Released under current BSD license.
" =============== ============================================================

nnoremap <Plug>WoodenViewSplit
      \ :<C-u>call WoodenView#Split()<CR>

nnoremap <Plug>WoodenViewSwitchMain
      \ :<C-u>call WoodenView#SwitchMain()<CR>
