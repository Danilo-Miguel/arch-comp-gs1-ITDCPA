; cofre32.asm - cofre digital recuperado pela equipe (x86, 32 bits)

section .data
    pede_pin    db "PIN: "
    tam_pede    equ $ - pede_pin
    msg_erro    db "PIN incorreto", 10
    tam_erro    equ $ - msg_erro
    msg_ok      db "Codigo de liberacao: "
    tam_ok      equ $ - msg_ok
    quebra      db 10

    ; cada byte esta guardado com 1 somado
    codigo      db 0x47, 0x4A, 0x42, 0x51, 0x2E, 0x44, 0x31, 0x47, 0x53, 0x34, 0x2E, 0x34, 0x33, 0x2E, 0x5B, 0x4C, 0x3A, 0x52
    tam_codigo  equ $ - codigo

section .bss
    entrada     resb 16

section .text
global _start

; Desfaz a codificacao de "codigo", byte a byte.
decodifica:
    push esi
    push ecx
    mov esi, codigo
    mov ecx, tam_codigo
.proximo:
    dec byte [esi]
    inc esi
    dec ecx
    jnz .proximo
    pop ecx
    pop esi
    ret

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, pede_pin
    mov edx, tam_pede
    int 0x80

    mov eax, 3
    mov ebx, 0
    mov ecx, entrada
    mov edx, 16
    int 0x80

    ; converte o texto digitado em numero
    mov ecx, eax
    mov esi, entrada
    xor eax, eax
    xor ebx, ebx
.digito:
    cmp ecx, 0
    jle .convertido
    mov bl, [esi]
    cmp bl, 10
    je .convertido
    cmp bl, '0'
    jb negado
    cmp bl, '9'
    ja negado
    sub bl, '0'
    imul eax, eax, 10
    add eax, ebx
    inc esi
    dec ecx
    jmp .digito
.convertido:
    cmp eax, 0x7A69
    jne negado

    call decodifica

    mov eax, 4
    mov ebx, 1
    mov ecx, msg_ok
    mov edx, tam_ok
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, codigo
    mov edx, 9
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, quebra
    mov edx, 1
    int 0x80

    mov eax, 1
    mov ebx, 0
    int 0x80

negado:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg_erro
    mov edx, tam_erro
    int 0x80

    mov eax, 1
    mov ebx, 1
    int 0x80
