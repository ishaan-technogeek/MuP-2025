.model tiny
.data
DATA1 db 'MicroProcessor'
count db 14
sno db 0
cno db 0
.code
.startup
lea si, DATA1
mov cl, count 
l1: mov al, [si]
   cmp al,'A'
    JL l3
    cmp al,'Z'
    JLE large1
    jmp l3
large1: add al, 20h
	mov [si],al
l3:  
inc si
dec cl
jnz l1
.exit
end


