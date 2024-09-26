; ARIES
; by alCoPaUL[GIMO][As][aBrA][NPA][b8][BCVG][rRlf]
; 9/25/2024 NYC
;
; ml /c ARIES.asm
; link ARIES.obj
;
.model tiny
.stack
.code
start:
main proc near
push cs
pop ds
mov al,13
mov ah,45
z:lea bx,[k]
mov cx,1553
r:cmp byte ptr[bx],ah
je s
jmp u
s:mov byte ptr[bx],al
cmp al,45
je cu
mov byte ptr[bx+1],10
jmp u
cu:mov byte ptr[bx+1],45
u:inc bx
dec cx
cmp cx,0
jnz r
cmp al,45
je td
push ax
lea dx,[k]
mov ah,9h
int 21h
pop ax
jmp ll
td:lea si,[k]
lea di,[n]
mov cx,1553
sn:mov al,byte ptr[si]
mov byte ptr[di],al
jmp q
zf:jmp z
q:inc si
inc di
dec cx
cmp cx,1482
je t
cmp cx,1409
je t
cmp cx,1336
je t
cmp cx,1263
je t
cmp cx,1190
je t
cmp cx,1117
je t
cmp cx,1044
je t
cmp cx,971
je t
cmp cx,898
je t
cmp cx,825
je t
cmp cx,752
je t
cmp cx,679
je t
cmp cx,606
je t
cmp cx,533
je t
cmp cx,460
je t
cmp cx,387
je t
cmp cx,314
je t
cmp cx,241
je t
cmp cx,168
je t
cmp cx,95
je t
cmp cx,22
je t
jmp sts
snb:jmp sn
zfw:jmp zf
t:mov byte ptr[di],27h
mov byte ptr[di+1],0Dh
mov byte ptr[di+2],0Ah
mov byte ptr[di+3],64h
mov byte ptr[di+4],62h
mov byte ptr[di+5],20h
mov byte ptr[di+6],27h
add di,7
jmp sts
sts:cmp cx,0
jne snb
push ax
lea dx,[n]
mov ah,9h
int 21h
pop ax
ll:cmp al,13
mov ah,45
xchg al,ah
je zfw
lea dx,[x]
mov ah,09h
int 21h
mov ax,4C00h
int 21h
main endp
.data
x db 2Ch,32h,37h,68h,2Ch,32h,34h,68h,0Dh,0Ah,65h,6eh,64h,20h,73h,74h,61h,72h
db 74h,24h,0
n db 1553 DUP(0),24h
k db '; ARIES--; by alCoPaUL[GIMO][As][aBrA][NPA][b8][BCVG][rRlf]--; 9/25/202'
db '4 NYC--;--; ml /c ARIES.asm--; link ARIES.obj--;--.model tiny--.stack--.c'
db 'ode--start:--main proc near--push cs--pop ds--mov al,13--mov ah,45--z:lea'
db ' bx,[k]--mov cx,1553--r:cmp byte ptr[bx],ah--je s--jmp u--s:mov byte ptr['
db 'bx],al--cmp al,45--je cu--mov byte ptr[bx+1],10--jmp u--cu:mov byte ptr[b'
db 'x+1],45--u:inc bx--dec cx--cmp cx,0--jnz r--cmp al,45--je td--push ax--le'
db 'a dx,[k]--mov ah,9h--int 21h--pop ax--jmp ll--td:lea si,[k]--lea di,[n]--'
db 'mov cx,1553--sn:mov al,byte ptr[si]--mov byte ptr[di],al--jmp q--zf:jmp z'
db '--q:inc si--inc di--dec cx--cmp cx,1482--je t--cmp cx,1409--je t--cmp cx,'
db '1336--je t--cmp cx,1263--je t--cmp cx,1190--je t--cmp cx,1117--je t--cmp '
db 'cx,1044--je t--cmp cx,971--je t--cmp cx,898--je t--cmp cx,825--je t--cmp '
db 'cx,752--je t--cmp cx,679--je t--cmp cx,606--je t--cmp cx,533--je t--cmp c'
db 'x,460--je t--cmp cx,387--je t--cmp cx,314--je t--cmp cx,241--je t--cmp cx'
db ',168--je t--cmp cx,95--je t--cmp cx,22--je t--jmp sts--snb:jmp sn--zfw:jm'
db 'p zf--t:mov byte ptr[di],27h--mov byte ptr[di+1],0Dh--mov byte ptr[di+2],'
db '0Ah--mov byte ptr[di+3],64h--mov byte ptr[di+4],62h--mov byte ptr[di+5],2'
db '0h--mov byte ptr[di+6],27h--add di,7--jmp sts--sts:cmp cx,0--jne snb--pus'
db 'h ax--lea dx,[n]--mov ah,9h--int 21h--pop ax--ll:cmp al,13--mov ah,45--xc'
db 'hg al,ah--je zfw--lea dx,[x]--mov ah,09h--int 21h--mov ax,4C00h--int 21h-'
db '-main endp--.data--x db 2Ch,32h,37h,68h,2Ch,32h,34h,68h,0Dh,0Ah,65h,6eh,6'
db '4h,20h,73h,74h,61h,72h--db 74h,24h,0--n db 1553 DUP(0),24h--k db ',27h,24h
end start