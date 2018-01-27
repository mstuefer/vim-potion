if exists("b:current_syntax")
  finish
endif

""""""""""""""""""

" Keywords

syntax keyword potionKeyword loop times to while
syntax keyword potionKeyword if elsif else
syntax keyword potionKeyword class return

highlight link potionKeyword Keyword

" Function

syntax keyword potionFunction print join string

highlight link potionFunction Function

" Numbers

syntax match potionNumber "\v[0-9]*"
syntax match potionNumber "\v[0-9]*\.?[0-9]+([eE][-+]?[0-9]+)?"

highlight link potionNumber Number

" Comments

syntax match potionComment "\v#.*$"

highlight link potionComment Comment

" Operators

syntax match potionOperator "\v\*"
syntax match potionOperator "\v/"
syntax match potionOperator "\v\+"
syntax match potionOperator "\v-"
syntax match potionOperator "\v\?"
syntax match potionOperator "\v\="
syntax match potionOperator "\v\*\="
syntax match potionOperator "\v/\="
syntax match potionOperator "\v\+\="
syntax match potionOperator "\v-\="

highlight link potionOperator Operator

" Strings

syntax region potionString start=/\v"/ skip=/\v\\./ end=/\v"/

highlight link potionString String

""""""""""""""""""

let b:current_syntax = "potion"
