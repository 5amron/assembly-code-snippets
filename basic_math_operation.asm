;samanSadeghyan
;samronsadeghyan@gmail.com
;basic math functions


%include "io.inc"
section .data
prompt1 db "Enter a first and second number in input! ", 0
prompt2 db "Add :", 0
prompt3 db "Sub :", 0
prompt4 db "mul :", 0
prompt5 db "Div :", 0
prompt6 db "Remainder :", 0


section .bss
input1 resd 1
input2 resd 1
var1 resd 1
var2 resd 1
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    xor eax, eax
    
    PRINT_STRING prompt1
    NEWLINE
    GET_DEC 1, input1
    NEWLINE
    GET_DEC 1, input2
    
    NEWLINE
    
    mov eax,[input1]
    add eax,[input2]
    PRINT_STRING prompt2
    NEWLINE
    PRINT_DEC 4, eax
    NEWLINE
    
    mov eax,[input1]
    sub eax,[input2]
    PRINT_STRING prompt3
    NEWLINE
    PRINT_DEC 4, eax
    NEWLINE
    
    mov eax,[input1]
    imul eax,[input2]
    PRINT_STRING prompt4
    NEWLINE
    PRINT_DEC 4, eax
    NEWLINE
    
    mov eax,[input1];taqsim
    cdq
    mov ebx,[input2]
    idiv ebx
    PRINT_STRING prompt5
    NEWLINE
    PRINT_DEC 4,eax
    NEWLINE
    PRINT_STRING prompt6
    NEWLINE
    PRINT_DEC 4,edx
    
    
    ret
