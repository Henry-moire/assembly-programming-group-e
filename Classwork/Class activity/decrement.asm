section .data
    sum dq 0                ; variable to hold the sum

section .text
    global _start

_start:
    mov rcx, 25             ; start value
    mov rbx, 0              ; sum = 0

loop_start:
    add rbx, rcx            ; sum += rcx
    dec rcx                 ; rcx++
    cmp rcx, 14             ; stop when rcx == 26
    jne loop_start

    mov [sum], rbx          ; store result in memory

    ; exit
    mov rax, 60             ; syscall: exit
    xor rdi, rdi            ; exit code 0
    syscall
