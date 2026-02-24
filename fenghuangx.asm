; //
;
; Feng Huang
; by alCoPaUL [GIMO][As][aBrA][NPA][b8][BCVG][rRlf]
; 2/27/2023 Revised: 6/01/2024 @ NYC
; ml.exe fenghuang.asm /link /subsystem:console /defaultlib:msvcrt.lib kernel32.lib legacy_stdio_definitions.lib legacy_stdio_wide_specifiers.lib ucrt.lib /merge:.CRT=.rdata /entry:start
;
; /
.686
.model flat,stdcall
extern printf:proc
.code
start:
main proc
enter 0,0
mov al,0Ah
mov bl,2Dh
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
cmp bl,2Dh
xchg al,bl
je z
push offset x
push offset i
call printf
leave
ret
main endp
.data
b db 27h,0Dh,0Ah,64h,62h,20h,27h,0
x db 2Ch,32h,37h,68h,2Ch,30h,0Ah,65h,6eh,64h,20h,73h,74h,61h,72h,74h,0Ah,0
i db 25h,73h,0
n db 1319 DUP(0)
a db '; //-;-; Feng Huang-; by alCoPaUL [GIMO][As][aBrA][NPA][b8][BCVG][rRlf]-; 2/27/2023 Revised: 6/01/2024 @ NYC-; ml.exe fenghuang.asm /link /subsystem'
db ':console /defaultlib:msvcrt.lib kernel32.lib legacy_stdio_definitions.lib legacy_stdio_wide_specifiers.lib ucrt.lib /merge:.CRT=.rdata /entry:start-;-'
db '; /-.686-.model flat,stdcall-extern printf:proc-.code-start:-main proc-enter 0,0-mov al,0Ah-mov bl,2Dh-z:lea edx,[a]-mov cx,1318-r:cmp byte ptr[edx],b'
db 'l-je s-jmp u-s:mov byte ptr[edx],al-u:inc edx-dec cx-cmp cx,0-jnz r-cmp bl,0Ah-je td-push offset a-push offset i-call printf-jmp ll-td:-lea edi,[n]-le'
db 'a esi,[a]-mov cx,1372-sn:mov al,byte ptr[esi]-mov byte ptr[edi],al-inc esi-inc edi-dec cx-cmp cx,1224-je t-cmp cx,1074-je t-cmp cx,924-je t-cmp cx,774'
db '-je t-cmp cx,624-je t-cmp cx,474-je t-cmp cx,324-je t-cmp cx,174-je t-cmp cx,24-je t-jmp sts-t:mov byte ptr[edi],27h-mov byte ptr[edi+1],0Ah-mov byte '
db 'ptr[edi+2],64h-mov byte ptr[edi+3],62h-mov byte ptr[edi+4],20h-mov byte ptr[edi+5],27h-add edi,6-jmp sts-sts:cmp cx,0-jne sn-push offset n-push offset'
db ' i-call printf-ll:mov al,0Ah-cmp bl,2Dh-xchg al,bl-je z-push offset x-push offset i-call printf-leave-ret-main endp-.data-b db 27h,0Dh,0Ah,64h,62h,20h'
db ',27h,0-x db 2Ch,32h,37h,68h,2Ch,30h,0Ah,65h,6eh,64h,20h,73h,74h,61h,72h,74h,0Ah,0-i db 25h,73h,0-n db 1319 DUP(0)-a db ',27h,0
end start
