if exists("g:loaded_make") || !(has('channel') && has('job'))
  finish
endif

let g:loaded_make = 1

function! s:HandleCloseChannel(channel)
  let bufnr = ch_getbufnr(a:channel, "out")
  cgetexpr error_lines
  execute "bdelete " . bufnr
endfunction

function! s:Make(...)
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
