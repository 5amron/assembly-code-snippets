;samanSadeghyan
;in function qabele call dar C hast ham az enter va leave estefade kardim 
;ham ebx ro chon taqir mikard dar stack zakhire kardim
;array hay y va x hastand ba andazeshan (n)
;int f(n,x,y)
;albate chon m va n mosavi hastand mitavan tanha yeki ra estefade kard
;
;moteqayere bazgashti ke 0 ya 1 ast ra tebqe standard C dar eax bargardandim
;ke agar array ha barabar nabashand 0 ra barmigardanad

section .data
;array1 dw 0,1,2,3,4,5
;array2 dw 0,1,2,3,4,5
section .bss
;var resd 1

section .text
global _f
_f:
    enter 0,0
    push ebx
    mov eax,1
    mov edx,[ebp+16]
    mov ebx,[ebp+12]
    mov ecx,[ebp+8]
    mov ecx,6
    
l:
    cmp edx,ebx
    jnz then_block1
    add edx,4
    add ebx,4
    loop l   
    
    
then_block1:
    mov eax,0
    pop ebx
    
    leave
    ret
    

