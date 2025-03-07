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
    cmp al,'a'
    JL l2
    cmp al,'z'
    JLE small1
    jmp l3
small1: inc sno
    jmp l3
l2:  cmp al,'A'
    JL l3
    cmp al,'Z'
    JLE large1
    jmp l3
large1: inc cno

l3:  
inc si
dec cl
jnz l1
.exit
end


