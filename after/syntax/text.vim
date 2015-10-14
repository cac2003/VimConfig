hi Class                ctermfg=95   cterm=bold
hi Structure            ctermfg=95   cterm=bold
hi DefinedName          ctermfg=39    cterm=bold
hi Member              ctermfg=24
hi Label                   ctermfg=100    cterm=bold
hi EnumerationName      ctermfg=19
hi EnumerationValue     ctermfg=57
hi LocalVariable        ctermfg=100
hi GlobalVariable       ctermfg=93

" Additions for more C++ syntax highlighting.
" Tobias Anderberg, 2013.
 
syn keyword cppCustomStatement       nullptr
 
syn keyword cppCustomStlContainers   array vector deque forward_list list
syn keyword cppCustomStlContainers   set map multiset multimap
syn keyword cppCustomStlContainers   unordered_set unordered_map
syn keyword cppCustomStlContainers   unordered_multiset unordered_multimap
syn keyword cppCustomStlContainers   stack queue priority_queue
syn keyword cppCustomStlContainers   string

syn keyword cppClsModifier         public protected private
"syn keyword cppIO                    cin cout cerr endl
 
syn match   cppCustomParen           "?=(" contains=cParen,cCppParen
syn match   cppCustomFunc            "\w\+\s*(\@=" contains=cppCustomParen
syn match   cppCustomScope           "::"
syn match   cppCustomClass           "\w\+\s*::" contains=cppCustomScope
 
"syn match   cppCustomStlNamespace    "std::" contains=cppCustomScope
 
hi def link cppCustomFunc       Function
hi def link cppCustomStatement  Statement
 
" Custom syntax definitions
hi def link cppCustomClass         CppClassNamespace
hi def link cppCustomStlNamespace  CppStlNamespace
hi def link cppCustomStlContainers CppStlContainer
hi def link cppClsModifier       CppClassModifiers
"hi def link cppIO CppIO

"hi CppClassNamespace ctermfg=22
"hi CppStlNamespace ctermfg=200
"hi CppStlContainer ctermfg=200
hi CppClassModifiers ctermfg=100
"hi CppIO ctermfg=200

hi Function        gui=NONE ctermfg=67 guifg=#800000

"========================================================
" Highlight All Function
"========================================================
syn match   cFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("
syn match   cFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("
hi cFunction        gui=NONE ctermfg=67 guifg=#708090

"========================================================
" Highlight All Math Operator
"========================================================
" C math operators
syn match       cMathOperator     display "[-+\*%=]"
" C pointer operators
syn match       cPointerOperator  display "->\|\."
" C logical   operators - boolean results
syn match       cLogicalOperator  display "[!<>]=\="
syn match       cLogicalOperator  display "=="
" C bit operators
syn match       cBinaryOperator   display "\(&\||\|\^\|<<\|>>\)=\="
syn match       cBinaryOperator   display "\~"
syn match       cBinaryOperatorError display "\~="
" More C logical operators - highlight in preference to binary
syn match       cLogicalOperator  display "&&\|||"
syn match       cLogicalOperatorError display "\(&&\|||\)="

" Math Operator
hi cMathOperator         gui=none   ctermfg=100         guifg=#B8860B
hi cPointerOperator      gui=none   ctermfg=100         guifg=#B8860B
hi cLogicalOperator      gui=none   ctermfg=100         guifg=#B8860B
hi cBinaryOperator       gui=none   ctermfg=100         guifg=#B8860B
hi cBinaryOperatorError  gui=none   ctermfg=100         guifg=#B8860B
hi cLogicalOperator      gui=none   ctermfg=100         guifg=#B8860B
hi cLogicalOperatorError gui=none   ctermfg=100         guifg=#B8860B
