; decoder64.asm - decodificador de liberacao, convertido de 32 para 64 bits

section .data
    pede        db "Palavra-chave: "
    tam_pede    equ $ - pede
    chave       db "arquitetura", 10
    tam_chave   equ $ - chave
    msg_erro    db "Palavra-chave incorreta", 10
    tam_erro    equ $ - msg_erro
    msg_ok      db "Codigo de liberacao: "
    tam_ok      equ $ - msg_ok
    quebra      db 10

    ; cada byte esta guardado com XOR 0x2A
    codigo      db 0x6E, 0x6F, 0x69, 0x1A, 0x6E, 0x19, 0x78, 0x07, 0x1C, 0x1E, 0x07, 0x67, 0x63, 0x6D, 0x78, 0x1E, 0x6E, 0x1A, 0x07, 0x1D, 0x7B, 0x72
    tam_codigo  equ $ - codigo

section .bss
    entrada     resb 64

section .text
global _start

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, pede
    mov rdx, tam_pede
    syscall

    mov rax, 0
    mov rdi, 0
    mov rsi, entrada
    mov rdx, 64
    int 0x80

    ; a entrada precisa ser exatamente a palavra-chave
    cmp rax, tam_chave
    jne errado
    mov rsi, entrada
    mov rdi, chave
    mov rcx, tam_chave
    repe cmpsb
    jne errado

    ; decodifica em tempo de execucao
    mov rbx, codigo
    mov rcx, tam_codigo
.proximo:
    xor byte [rbx], 0x2A
    inc rbx
    dec rcx
    jnz .proximo

    mov rax, 1
    mov rdi, 1
    mov rsi, msg_ok
    mov rdx, tam_ok
    syscall

    mov rax, 4
    mov rdi, 1
    mov rsi, codigo
    mov rdx, tam_codigo
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, quebra
    mov rdx, 1
    syscall

    ret

errado:
    mov rax, 1
    mov rdi, 1
    mov rsi, msg_erro
    mov rdx, tam_erro
    syscall

    mov rax, 60
    mov rdi, 1
    syscall
