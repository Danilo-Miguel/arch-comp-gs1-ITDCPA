<h2 align="center">Exercício 8: Lendo registradores de um crash</h2>

> **Atenção: você só pode errar UMA vez.** No segundo erro o exercício fica
> **invalidado** e a flag não é mais liberada. Arquivo faltando ou fora do
> formato não conta como tentativa, mas resposta errada conta.

## Cenário

Um debugger parou um processo x86-64 que travou e mostrou:

```
RAX = 0x1122334455667788
```

Para entender o que o código fazia, o analista precisa enxergar as partes desse
registrador. Em seguida, o processo executaria estas duas instruções:

```nasm
mov al, 0xFF
cmp al, 0xFF
```

## Sua missão

Identifique os sub-registradores, o efeito da primeira instrução sobre `RAX` e o
flag resultante da segunda.

## Formato da resposta

Arquivo `/home/hacker/resposta.txt`, com **6 linhas**. O hexadecimal vai com `0x`,
em maiúsculas e com todos os dígitos do tamanho do registrador:

| Linha | Conteúdo |
|---|---|
| 1 | `EAX` |
| 2 | `AX` |
| 3 | `AH` |
| 4 | `AL` |
| 5 | `RAX` depois de `mov al, 0xFF` |
| 6 | valor do `ZF` (0 ou 1) depois do `cmp` |

Exemplo de formato, com valores fictícios:

```
0xA1B2C3D4
0xC3D4
0xC3
0xD4
0x99AABBCCA1B2C300
0
```

## Como conferir

Quando tiver certeza, rode `/challenge/check`.
