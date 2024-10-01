;;;;;;;;;;;
; quineB_S_D.asm
;
; by alCoPaUL [GIMO][As][aBrA][NPA][b8][BCVG][rRlf]
; June 21, 2023 NYC
;
; nasm -f elf64 quineB_S_D.asm
; cc -o quineB_S_D quineB_S_D.o
;
global main
extern printf
section .text
main:push rbx
mov cl,10
mov bl,126
z:lea r9,[a]
mov dx,616
r:cmp byte[r9],bl
je s
jmp u
s:mov byte[r9],cl
u:inc r9
dec dx
cmp dx,0
jnz r
lea rdi,[i]
lea rax,[a]
mov rsi,rax
xor rax,rax
call printf wrt ..plt
mov cl,10
cmp bl,126
xchg cl,bl
je z
lea rdi,[i]
lea rax,[x]
mov rsi,rax
xor rax,rax
call printf wrt ..plt
pop rbx
ret
section .data
default rel
x:db 2Ch,32h,37h,68h,2Ch,30h,0Ah,0
i:db 25h,73h,0
a:db ';;;;;;;;;;;~; quineB_S_D.asm~;~; by alCoPaUL [GIMO][As][aBrA][NPA][b8][BCVG][rRlf]~; June 21, 2023 NYC~;~; nasm -f elf64 quineB_S_D.asm~; cc -o quineB_S_D quineB_S_D.o~;~global main~extern printf~section .text~main:push rbx~mov cl,10~mov bl,126~z:lea r9,[a]~mov dx,616~r:cmp byte[r9],bl~je s~jmp u~s:mov byte[r9],cl~u:inc r9~dec dx~cmp dx,0~jnz r~lea rdi,[i]~lea rax,[a]~mov rsi,rax~xor rax,rax~call printf wrt ..plt~mov cl,10~cmp bl,126~xchg cl,bl~je z~lea rdi,[i]~lea rax,[x]~mov rsi,rax~xor rax,rax~call printf wrt ..plt~pop rbx~ret~section .data~default rel~x:db 2Ch,32h,37h,68h,2Ch,30h,0Ah,0~i:db 25h,73h,0~a:db ',27h,0
