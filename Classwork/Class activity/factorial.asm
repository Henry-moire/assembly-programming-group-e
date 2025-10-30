section .text
    global factorial        ; make the function visible to the linker

; ---------------------------------------------------
; unsigned long factorial(unsigned long n)
;   - argument n is passed in RDI
;   - result returned in RAX
; ---------------------------------------------------

factorial:
    mov rax, 1              ; result = 1
    cmp rdi, 1              ; if n <= 1
    jbe .done               ; return 1

.loop:
    imul rax, rdi           ; result *= n
    dec rdi                 ; n--
    cmp rdi, 1              ; if n > 1
    ja .loop
.done:
    ret
