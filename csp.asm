; /////////////////////////////////////////////////////////////////////
; ////////////////////////////////////////////////////////////////
;
; csp.asm
; by alCoPaUL [GIMO][As][aBrA][NPA][b8][BCVG][rRlf]
; 2/27/2023 Revised: 9/23/2024 @ NYC
; nasm -f elf64 csp.asm
; bcc64 csp.o
;
; ///////////////////////////////////////////////////////////////////////////
; /////////////////////////////////////////////////////////////////////
global main
extern printf
section .text
main:sub rsp,28h
mov al,0Ah
mov bl,5Fh
z:lea r9,[a]
mov dx,1372
r:cmp byte[r9],bl
je s
jmp u
s:mov byte[r9],al
u:inc r9
dec dx
cmp dx,0
jnz r
cmp bl,0Ah
je td
lea rdx,[a]
lea rcx,[i]
call printf
jmp ll
td:
lea rdi,[n]
lea rsi,[a]
mov cx,1372
sn:mov al,byte[rsi]
mov byte[rdi],al
inc rsi
inc rdi
dec cx
cmp cx,1224
je t
cmp cx,1074
je t
cmp cx,924
je t
cmp cx,774
je t
cmp cx,624
je t
cmp cx,474
je t
cmp cx,324
je t
cmp cx,174
je t
cmp cx,24
je t
jmp sts
t:mov byte[rdi],27h
mov byte[rdi+1],0Ah
mov byte[rdi+2],64h
mov byte[rdi+3],62h
mov byte[rdi+4],20h
mov byte[rdi+5],27h
add rdi,6
jmp sts
sts:cmp cx,0
jne sn
lea rdx,[n]
lea rcx,[i]
call printf
ll:mov al,0Ah
cmp bl,5Fh
xchg al,bl
je z
lea rdx,[x]
lea rcx,[i]
call printf
add rsp,28h
ret
section .data
b db 27h,0Dh,0Ah,64h,62h,20h,27h,0
x db 2Ch,32h,37h,68h,2Ch,30h,0
i db 25h,73h,0
n db 1372 DUP(0)
a db '; /////////////////////////////////////////////////////////////////////_; ////////////////////////////////////////////////////////////////_;_; csp.a'
db 'sm_; by alCoPaUL [GIMO][As][aBrA][NPA][b8][BCVG][rRlf]_; 2/27/2023 Revised: 9/23/2024 @ NYC_; nasm -f elf64 csp.asm_; bcc64 csp.o_;_; ////////////////'
db '///////////////////////////////////////////////////////////_; /////////////////////////////////////////////////////////////////////_global main_extern'
db ' printf_section .text_main:sub rsp,28h_mov al,0Ah_mov bl,5Fh_z:lea r9,[a]_mov dx,1372_r:cmp byte[r9],bl_je s_jmp u_s:mov byte[r9],al_u:inc r9_dec dx_c'
db 'mp dx,0_jnz r_cmp bl,0Ah_je td_lea rdx,[a]_lea rcx,[i]_call printf_jmp ll_td:_lea rdi,[n]_lea rsi,[a]_mov cx,1372_sn:mov al,byte[rsi]_mov byte[rdi],al'
db '_inc rsi_inc rdi_dec cx_cmp cx,1224_je t_cmp cx,1074_je t_cmp cx,924_je t_cmp cx,774_je t_cmp cx,624_je t_cmp cx,474_je t_cmp cx,324_je t_cmp cx,174_j'
db 'e t_cmp cx,24_je t_jmp sts_t:mov byte[rdi],27h_mov byte[rdi+1],0Ah_mov byte[rdi+2],64h_mov byte[rdi+3],62h_mov byte[rdi+4],20h_mov byte[rdi+5],27h_add'
db ' rdi,6_jmp sts_sts:cmp cx,0_jne sn_lea rdx,[n]_lea rcx,[i]_call printf_ll:mov al,0Ah_cmp bl,5Fh_xchg al,bl_je z_lea rdx,[x]_lea rcx,[i]_call printf_ad'
db 'd rsp,28h_ret_section .data_b db 27h,0Dh,0Ah,64h,62h,20h,27h,0_x db 2Ch,32h,37h,68h,2Ch,30h,0_i db 25h,73h,0_n db 1372 DUP(0)_a db ',27h,0
