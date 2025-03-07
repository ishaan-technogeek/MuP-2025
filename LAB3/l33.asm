.model tiny
.data
DATA1 db 81h,82h,01,00,86,0ffh,00
count db 7
sno db 0
cno db 0
.code
.startup
lea si, DATA1
mov cl, count 
l1: mov al, [si]
   cmp al,00h
    JNE L2
    mov bl,0FFh
    MOV [SI],bl

L2:   
inc si
dec cl
jnz l1
.exit
end


