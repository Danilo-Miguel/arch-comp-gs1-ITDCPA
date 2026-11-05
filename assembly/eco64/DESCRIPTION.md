<h2 align="center">Exercício 14: Eco de auditoria</h2>

> **Atenção: você só pode errar UMA vez.** No segundo erro o exercício fica
> **invalidado** e a flag não é mais liberada. Arquivo faltando ou programa não
> montado/ligado não conta como tentativa, mas programa com saída errada conta.
> **Teste o seu programa antes de rodar o `check`.**

## Cenário

Um serviço de 64 bits precisa repetir no log tudo o que o operador digita.

## Sua missão

Crie `~/eco64.asm` em NASM, para x86-64, usando a instrução `syscall`. O programa
deve ler até 64 bytes do teclado e escrever `[LOG] ` seguido exatamente dos bytes
lidos, incluindo o Enter. O **código de saída** deve ser igual à quantidade de bytes
lidos.

O `read` devolve quantos bytes leu. A instrução `syscall` também altera outros
registradores além do de retorno: descubra quais antes de escolher onde guardar
esse valor.

## Formato da resposta

Monte e ligue o programa você mesmo. No seu home devem existir:

| Arquivo | O que é |
|---|---|
| `eco64.asm` | o código-fonte |
| `eco64.o` | o objeto, ELF de 64 bits |
| `eco64` | o executável, ELF de 64 bits |

Exemplo: se o usuário digitou `ls -la`, a saída é a linha abaixo e o código de saída
é 7.

```
[LOG] ls -la
```

A saída é comparada byte a byte com entradas sorteadas de 1 a 60 caracteres, junto
com o código de saída.

## Como conferir

Quando tiver certeza, rode `/challenge/check`.
