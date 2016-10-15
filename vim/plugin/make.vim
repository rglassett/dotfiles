if exists("g:loaded_make") || !(has('channel') && has('job'))
  finish
endif

let g:loaded_make = 1

function! s:HandleCloseChannel(channel)
  let bufnr = ch_getbufnr(a:channel, "out")
  let error_lines = getbufline(bufnr, 1, "$")
  execute "bdelete " . bufnr
  cgetexpr error_lines
endfunction

function! s:Make(...) abort
  let args = a:0 ? join(a:000, ' ') : expand('%')
  let make_command = &makeprg . ' ' . args

  call job_start(make_command, {
        \ "close_cb": funcref("s:HandleCloseChannel"),
        \ "out_io": "buffer",
        \ "out_msg": 0,
        \ "out_name": ""
        \ })
endfunction

command! -nargs=* -complete=file -bar Make call s:Make(<args>)
