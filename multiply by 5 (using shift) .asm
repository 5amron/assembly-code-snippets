;samanSadeghyan
;samronsadeghyan@gmail.com

;multiply by 5 (using shift) 
;2 bar shift be chap + khodash (0 bar shift be chap) = multiply by 5
%include "io.inc"
section .data
prompt db "Enter a number: ", 0

section .bss
input resb 1

section .text
global CMAIN
CMAIN:
    PRINT_STRING prompt
    NEWLINE
    GET_DEC 1, input
    
    mov eax, [input]
    mov ebx, eax
    shl eax,2
    shl ebx,0
    
    add eax,ebx
    NEWLINE
    PRINT_DEC 4, eax
    ret