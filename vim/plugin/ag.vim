if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor\ --vimgrep
  set grepformat^=%f:%l:%c:%m
endif

command! -nargs=+ -complete=file -bar Ag silent! grep! <args> | redraw!
