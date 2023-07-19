.data

msg:
    .ascii        "|_(CC)_/\n"
len = . - msg

.text



setup:
    mov     x0, #1      
    ldr     x1, =msg  
    ldr     x2, =len    
    mov     w8, #64   
    svc     #0
    b loop

stoper:
    mov     x0, #0      
    mov     w8, #93
    svc     #0  
loop:
    cmp x3, x5
    b.eq stoper
    b setup
    ret


.globl _start

_start:
    mov x5, 1
    mov x3, 0
    b setup         
