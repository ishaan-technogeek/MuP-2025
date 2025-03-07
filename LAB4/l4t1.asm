.model tiny
.data
max1 db 21
act db ?
inp1 db 21 dup('$')
.code
.startup
lea dx,max1
mov ah,0ah
int 21h
MOV DL, 0AH
MOV AH,02H
INT 21H
MOV DL,0DH
MOV AH,02H
INT 21H
lea dx,inp1
mov ah,09h
int 21h
.exit
end


