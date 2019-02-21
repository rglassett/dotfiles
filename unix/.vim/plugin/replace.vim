function! Replace(pattern, replacement, grep_flags, s_flags)
  let original_grep_format=&grepformat
  let original_buffer_id=bufnr('%')
  set grepformat+=%f

  tabnew
  execute 'silent! grep! --files-with-matches ' . a:grep_flags . ' ' . a:pattern
  cfdo execute '%s/\v' . a:pattern . '/' . a:replacement . '/gc' . a:s_flags . ' | write'
  tabclose

  let &grepformat=original_grep_format
  execute 'buffer ' . original_buffer_id
endfunction

command! -nargs=+ -bar Replace call Replace(<f-args>, '', '')
command! -nargs=+ -bar IReplace call Replace(<f-args>, '--ignore-case', 'i')
