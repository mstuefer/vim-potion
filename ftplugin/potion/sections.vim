function! s:NewSection(type, backwards, visual)
  if a:visual
    normal! gv
  endif

  if a:type == 1
    let pattern = '\v(\n\n^\S|%^)'
    " %^ <- vim-regex-way to tell 'beginning of file', c also ':help ordinary-atom'
    let flags = 'e'
  else
    let pattern = '\v^\S.*\=.*:$'
    let flabs = ''
  endif

  if a:backwards
    let dir = '?'
  else
    let dir = '/'
  endif

  execute 'silent normal! ' . dir . pattern . dir . flags . "\r"
endfunction

noremap s b si [[ :call <SID>NextSection(1, 0, 0)<cr>
noremap s b si ]] :call <SID>NextSection(1, 1, 0)<cr>

noremap s b si [] :call <SID>NextSection(2, 0, 0)<cr>
noremap s b si ][ :call <SID>NextSection(2, 1, 0)<cr>


vnoremap s b si [[ :<c-u>call <SID>NextSection(1, 0, 1)<cr>
vnoremap s b si ]] :<c-u>call <SID>NextSection(1, 1, 1)<cr>

vnoremap s b si [] :<c-u>call <SID>NextSection(2, 0, 1)<cr>
vnoremap s b si ][ :<c-u>call <SID>NextSection(2, 1, 1)<cr>
