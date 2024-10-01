;;;;;;;;;;;;;;;;
; pwn5_i386four.asm
;
; by alCoPaUL [GIMO][As][aBrA][NPA][b8][BCVG][rRlf]
; 6/25/2023 NYC
;
; nasm -f elf32 pwn5_i386four.asm
; cc -m32 -o pwn5_i386four pwn5_i386four.o
;
;
global main
extern printf
section .text
main:
enter 0,0
mov al,10
mov bl,126
z:lea edx,[a]
mov cx,542
r:cmp byte [edx],bl
je s
jmp u
s:mov byte [edx],al
u:inc edx
dec cx
cmp cx,0
jnz r
push a
push i
call printf
mov al,10
cmp bl,126
xchg al,bl
je z
push x
push i
call printf
leave
ret
section .data
x:db 2Ch,32h,37h,68h,2Ch,30h,0Ah,0
i:db 25h,73h,0
a:db ';;;;;;;;;;;;;;;;~; pwn5_i386four.asm~;~; by alCoPaUL [GIMO][As][aBrA][NPA][b8][BCVG][rRlf]~; 6/25/2023 NYC~;~; nasm -f elf32 pwn5_i386four.asm~; cc -m32 -o pwn5_i386four pwn5_i386four.o~;~;~global main~extern printf~section .text~main:~enter 0,0~mov al,10~mov bl,126~z:lea edx,[a]~mov cx,542~r:cmp byte [edx],bl~je s~jmp u~s:mov byte [edx],al~u:inc edx~dec cx~cmp cx,0~jnz r~push a~push i~call printf~mov al,10~cmp bl,126~xchg al,bl~je z~push x~push i~call printf~leave~ret~section .data~x:db 2Ch,32h,37h,68h,2Ch,30h,0Ah,0~i:db 25h,73h,0~a:db ',27h,0
