.model tiny
.data
dat1 db 'Enter user name$'
pred db 'Hello '
name1 db 'meethavs$'
password db '98765'
max1 db 9
act db ?
inp1 db 9 dup('$')
max2 db 6
act2 db ?
inp2 db 6 dup('$')
inp3 db 'enter password $'
.code
.startup
lea dx,dat1
mov ah,09h
int 21h
MOV DL, 0AH
MOV AH,02H
INT 21H
MOV DL,0DH
MOV AH,02H
INT 21H
lea dx,max1
mov ah,0ah
int 21h
MOV DL, 0AH
MOV AH,02H
INT 21H
MOV DL,0DH
MOV AH,02H
INT 21H
mov cx,8
lea si, name1
lea di, inp1
l2: mov al,[si]
cmp al,[di]
jne l1
dec cl
jnz l2
lea dx,inp3
mov ah,09h
int 21h
MOV DL, 0AH
MOV AH,02H
INT 21H
MOV DL,0DH
MOV AH,02H
INT 21H
lea dx,max2
mov ah,0ah
int 21h
mov cx,5
lea si, password
lea di, inp2
l3: mov al,[si]
cmp al,[di]
jne l1
dec cl
jnz l3
MOV DL, 0AH
MOV AH,02H
INT 21H
MOV DL,0DH
MOV AH,02H
INT 21H
lea dx,pred
mov ah,09h
int 21h
l1:
.exit
end


