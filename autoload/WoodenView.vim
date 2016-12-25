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

function! WoodenView#go_below()
  exec 'wincmd j'
endfunction

function! WoodenView#go_right()
  exec 'wincmd l'
endfunction

function! WoodenView#go_to_main()
  exec 'wincmd t'
endfunction

function! WoodenView#go_to_previous()
  exec 'wincmd p'
endfunction

function! WoodenView#center_view()
  silent normal zz
endfunction

function! WoodenView#jump_to_line(line)
  exec ':' a:line
endfunction

function! WoodenView#switch_to_buffer(buffer)
  exec 'buffer' a:buffer
endfunction

function! WoodenView#switch_jump_center(buffer, line)
  call WoodenView#switch_to_buffer(a:buffer)
  call WoodenView#jump_to_line(a:line)
  call WoodenView#center_view()
endfunction

function! WoodenView#Split()
  let buffer = bufnr('%')
  let window = bufwinnr(buffer)
  let width = winwidth(window)

  let nw = &numberwidth
  let tw = &textwidth

  if tw == 0 || width >= (tw + nw) * 2
    vsplit

    call WoodenView#go_right()
  else
    split

    call WoodenView#go_below()
  endif
endfunction

function! WoodenView#SwitchMain()
  let new_buffer = bufnr('%')
  let new_line = line('.')

  call WoodenView#go_to_main()

  let old_buffer = bufnr('%')
  let old_line = line('.')

  call WoodenView#switch_jump_center(new_buffer, new_line)

  call WoodenView#go_to_previous()

  call WoodenView#switch_jump_center(old_buffer, old_line)

  call WoodenView#go_to_main()
endfunction
