if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
endif

command! -nargs=+ -complete=file -bar Ag silent! grep! <args> | redraw!
