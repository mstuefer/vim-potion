if !exists("g:potion_commnand")
  let g:potion_commnand = "potion"
endif

nnoremap <buffer> <localleader>r :call potion#running#PotionCompileAndRunFile()<cr>
nnoremap <buffer> <localleader>b :call potion#running#PotionShowBytecode()<cr>
