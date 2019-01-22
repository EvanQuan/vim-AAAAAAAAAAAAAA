" ============================================================================
" File: AAAAAAAAAAAAAA.vim
" Maintainer: https://github.com/EvanQuan/vim-AAAAAAAAAAAAAA/
" Version: 0.1.0
"
" Syntax highlighting for AAAAAAAAAAAAAA files.
" ============================================================================

if exists("b:current_syntax")
  finish
endif
" Commands:

" AA AAA n! Outputs number as a character
" AAA AAAA AA n! Input a character store to index n
" AAA AA n! Go to label n
" AAAAA n! Define a label n
syntax keyword AAAAAAAAAAAAAA_Label AAAAA
highlight link AAAAAAAAAAAAAA_Label Label
" AAA AAAA AAA n! Skip n commands
" AAAA AA n! Shift indexes n backwards
" AAAA AAAA n! Shift indexes n forwards
" AA AAAA AA! End program
" AAA A AAA n! Begin define subroutine named n
syntax match AAAAAAAAAAAAAA_DefineSubroutine /AAA A AAA [A]\+!/ contained
syntax match AAAAAAAAAAAAAA_Subroutine /[A]\+/ contained
highlight link AAAAAAAAAAAAAA_DefineSubroutine Statement
highlight link AAAAAAAAAAAAAA_Subroutine Function
" AAAA A AAA! End define subroutine
" AAA A AA AAAA n! End subroutine, return value n
" AAAAAA n! Call subroutine n
"
" AAAA, AAAA n! Forget n entries from subroutine stack
" AAAA AAA n! Increment value at index n
" AAAA AAA, n! Decrement value at index n unless value is zero
" AAAA, A n! Set command change register to n
" AAAA, AA A n! Change all commands in program that start with what is in command change register to start with n instead
" AAAA, AA AAA n! Change all commands in program that end with what is in command change register to end with n instead
" AAAAA, AA A n! Change all commands in program that start with n to start with what is in command change register instead
" AAAAA, AA AAA n! Change all commands in program that end with n to end with what is in command change register instead
" AAAAA, AAAAA! Clear command change register
" AAAAA, AAAA A n! Add block of n number of A's at end of command change register
" AAAAA, AAAA AAA n! Add block of n number of A's and comma at end of command change register
" (Any invalid command or operators when reached by program pointer, causes fatal error, and does not allow the output that the program already made to be used for any purpose except for debugging this program.)
" Operators:

" AAAA = number 0
" syntax region AAAAAAAAAAAAAA_0 start=/\</AAAA
" highlight link AAAAAAAAAAAAAA_0 Number
" AAA = number 1
" syntax keyword AAAAAAAAAAAAAA_1 AAA
" highlight link AAAAAAAAAAAAAA_1 Number
" A = number 2
" syntax keyword AAAAAAAAAAAAAA_2 A
" highlight link AAAAAAAAAAAAAA_2 Number
" AA A = number 3
" AAAA A = last index number read by a previous command
" AAAAA, n = value at index n
" AA A, a b = a+b
" AA AA, a b = abs(a-b)
" AAA, a b = a*b
" AA AAA, a b = a AND b
" AAAA, a b = a XOR b
" AAAAAA n, a b = Call subroutine n with parameter a and b, and return value
" AAAAA A n, a = Call subroutine n with parameter a and a, and return value
" AAAAA AA = First parameter
" AAAAA AAA = Second parameter

" Operators



let b:current_syntax = "AAAAAAAAAAAAAA"
