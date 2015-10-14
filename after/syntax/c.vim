"========================================================
" Highlight All Function
"========================================================
syn match   cFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
syn match   cFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
"hi cFunction        gui=NONE ctermfg=67 guifg=#B5A1FF


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
hi cMathOperator          gui=NONE  ctermfg=100     guifg=#B8860B
hi cPointerOperator       gui=NONE  ctermfg=100     guifg=#B8860B
hi cLogicalOperator       gui=NONE  ctermfg=100     guifg=#B8860B
hi cBinaryOperator        gui=NONE  ctermfg=100     guifg=#B8860B
hi cBinaryOperatorError   gui=NONE  ctermfg=100     guifg=#B8860B
hi cLogicalOperator       gui=NONE  ctermfg=100     guifg=#B8860B
hi cLogicalOperatorError  gui=NONE  ctermfg=100     guifg=#B8860B

hi cFunction        gui=NONE ctermfg=67 guifg=#4682B4
