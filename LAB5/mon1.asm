.model tiny
.data
dat1 db 'Enter a string with maximum 20 characters.$'
dat2 db 'The ecrypted string is $'
inp1 db 21 
len db ?
string1 db 21 dup(?)
encrypt db 21 dup('$')
shifter db 5
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
mov ch,00
lea dx,inp1
mov ah,0ah
int 21h
mov dl, len
mov dh,0
mov cl,[shifter]
lea si, string1
lea di,encrypt
add di, dx
dec di
l1: cld
lodsb
neg al
ror al,cl
std
stosb
dec dl
jnz l1
MOV DL, 0AH
MOV AH,02H
INT 21H
MOV DL,0DH
MOV AH,02H
INT 21H
lea dx,encrypt
mov ah,09h
int 21h
.exit
end


