" Quit when a syntax file was already loaded
if exists('b:current_syntax')
  finish
endif

" Keywords
syn keyword anbKeyword Protocol Types Agent Number Function Symmetric_key PublicKey Knowledge where Actions Goals authenticates on screcy of

" Comments (and todos etc)
syn keyword anbTodo contained TODO FIXME XXX NOTE
syn match anbComment "#.*$" contains=anbTodo

"syn match anbNumber '^\\s-*.+\\s-*::\\s-*\\([A-Za-z0-9_()]+\\)'

" Match variables
"syn match anbHip '\\b[A-Z_][a-zA-Z0-9_]*'

" Match constants
"syn match anbString '[a-z][a-zA-Z0-9_]*\\|[0-9]*'

" Match functions
"syn match anbBlockCmd '^\\s-*step\\s-+\\([a-z][a-zA-Z0-9_]*\\)'

hi link anbKeyword     Keyword
hi link anbTodo        Todo
hi link anbComment     Comment
hi link anbBlockCmd    Statement
hi link anbHip         Type
hi link anbString      Constant
hi link anbDesc        PreProc
hi link anbNumber      Constant
