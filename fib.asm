;samanSadeghyan
;samronsadeghyan@gmail.com
;fibonacci

%include "io.inc"
section .data
prompt db "Enter a number: ", 0

section .bss
input resb 1
var1 resd 1
var2 resd 1
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    xor eax, eax
    
    PRINT_STRING prompt
    NEWLINE
    GET_DEC 1, input
    mov eax ,0
    mov ebx ,1
    mov ecx ,[input]
    cmp ecx,1
    jz then_block
    dec ecx
    
loop_start:
    mov [var1],eax
    add eax,ebx
    mov [var2],eax
    mov ebx,[var1]
    
    loop loop_start
    NEWLINE
    PRINT_DEC 4, [var2]
    jmp end
then_block:
    PRINT_DEC 4, eax
end:


    ret