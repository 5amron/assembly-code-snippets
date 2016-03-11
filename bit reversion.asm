;samanSadeghyan
;samronsadeghyan@gmail.com
;bit reversion
%include "io.inc"

section .data
prompt1 db    "Enter a number (hex): ", 0

section .bss
input1  resw 1

section .text
global CMAIN
CMAIN:
    ;write your code here
    xor eax, eax
    mov bx,0
    PRINT_STRING prompt1
    GET_HEX 2, input1
    NEWLINE
    mov ax,[input1]
    mov cx,16
    
    myLoop:
    rol ax,1
    rcr bx,1
    loop myLoop
    
    PRINT_HEX 2, bx
    NEWLINE
    
    ret