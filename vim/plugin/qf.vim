augroup qf
  autocmd!

  " automatically open the location/quickfix window after :make, :grep,
  " :lvimgrep and friends if there are valid locations/errors
  autocmd QuickFixCmdPost [^l]* cwindow
  autocmd QuickFixCmdPost l*    lwindow

  " automatically close corresponding loclist when quitting a window
  autocmd QuitPre * if &filetype != 'qf' | silent! lclose | endif
augroup END
