; /////////////////////////////////////////////////////////////////////////////////////////////////
; Benu
; by alCoPaUL [GIMO][As][aBrA][NPA][b8][BCVG][rRlf]
; 5/25/2024 NYC
; tasm32 /ml benu.asm
; ilink32 -Tpe -ap benu.obj,benu.exe,,msvcrt.lib import32.lib,,
; //////////////////////////////////////////////////////////////////////////////////////////////////
.686
.model flat,stdcall
extrn printf:proc
.code
start:
enter 0,0
mov al,0Ah
mov bl,7Eh
z:lea edx,[a]
mov cx,1318
r:cmp byte ptr[edx],bl
je s
jmp u
s:mov byte ptr[edx],al
u:inc edx
dec cx
cmp cx,0
jnz r
cmp bl,0Ah
je td
push offset a
push offset i
call printf
jmp ll
td:
lea edi,[n]
lea esi,[a]
mov cx,1372
sn:mov al,byte ptr[esi]
mov byte ptr[edi],al
inc esi
inc edi
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
t:mov byte ptr[edi],27h
mov byte ptr[edi+1],0Ah
mov byte ptr[edi+2],64h
mov byte ptr[edi+3],62h
mov byte ptr[edi+4],20h
mov byte ptr[edi+5],27h
add edi,6
jmp sts
sts:cmp cx,0
jne sn
push offset n
push offset i
call printf
ll:mov al,0Ah
cmp bl,7Eh
xchg al,bl
je z
push offset x
push offset i
call printf
leave
ret
.data
x db 2Ch,32h,37h,68h,2Ch,30h,0Ah,65h,6eh,64h,20h,73h,74h,61h,72h,74h,0
i db 25h,73h,0
n db 1319 DUP(0)
a db '; /////////////////////////////////////////////////////////////////////////////////////////////////~; Benu~; by alCoPaUL [GIMO][As][aBrA][NPA][b8][B'
db 'CVG][rRlf]~; 5/25/2024 NYC~; tasm32 /ml benu.asm~; ilink32 -Tpe -ap benu.obj,benu.exe,,msvcrt.lib import32.lib,,~; ///////////////////////////////////'
db '///////////////////////////////////////////////////////////////~.686~.model flat,stdcall~extrn printf:proc~.code~start:~enter 0,0~mov al,0Ah~mov bl,7E'
db 'h~z:lea edx,[a]~mov cx,1318~r:cmp byte ptr[edx],bl~je s~jmp u~s:mov byte ptr[edx],al~u:inc edx~dec cx~cmp cx,0~jnz r~cmp bl,0Ah~je td~push offset a~pu'
db 'sh offset i~call printf~jmp ll~td:~lea edi,[n]~lea esi,[a]~mov cx,1372~sn:mov al,byte ptr[esi]~mov byte ptr[edi],al~inc esi~inc edi~dec cx~cmp cx,1224'
db '~je t~cmp cx,1074~je t~cmp cx,924~je t~cmp cx,774~je t~cmp cx,624~je t~cmp cx,474~je t~cmp cx,324~je t~cmp cx,174~je t~cmp cx,24~je t~jmp sts~t:mov by'
db 'te ptr[edi],27h~mov byte ptr[edi+1],0Ah~mov byte ptr[edi+2],64h~mov byte ptr[edi+3],62h~mov byte ptr[edi+4],20h~mov byte ptr[edi+5],27h~add edi,6~jmp '
db 'sts~sts:cmp cx,0~jne sn~push offset n~push offset i~call printf~ll:mov al,0Ah~cmp bl,7Eh~xchg al,bl~je z~push offset x~push offset i~call printf~leave'
db '~ret~.data~x db 2Ch,32h,37h,68h,2Ch,30h,0Ah,65h,6eh,64h,20h,73h,74h,61h,72h,74h,0~i db 25h,73h,0~n db 1319 DUP(0)~a db ',27h,0
end start