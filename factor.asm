;samanSadeghyan
;samronsadeghyan@gmail.com
;factorial function
%include "io.inc"
section .data
prompt db "Enter a number: ", 0

section .bss
input resb 1

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    xor eax, eax
    PRINT_STRING prompt
    NEWLINE
    GET_DEC 1, input
    mov edx, [input]
    mov eax,edx
    mov ecx,eax
    dec edx
    dec ecx
loop_start:
    imul eax,edx
    dec edx
    loop loop_start
    NEWLINE
    PRINT_DEC 4, eax

    ret