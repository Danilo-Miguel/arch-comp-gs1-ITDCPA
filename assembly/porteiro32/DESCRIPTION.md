<h2 align="center">Exercício 12: Porteiro</h2>

> **Atenção: você só pode errar UMA vez.** No segundo erro o exercício fica
> **invalidado** e a flag não é mais liberada. Arquivo faltando ou programa não
> montado/ligado não conta como tentativa, mas programa com saída errada conta.
> **Teste o seu programa antes de rodar o `check`.**

## Cenário

Um sistema legado de 32 bits libera a porta do datacenter se o código digitado
começar com `FIAP`.

## Sua missão

Crie `~/porteiro32.asm` em NASM, para x86 de 32 bits, usando `int 0x80`. O programa
deve:

1. escrever `Codigo: `, sem quebra de linha;
2. ler até 16 bytes do teclado;
3. comparar os 4 primeiros bytes com `F`, `I`, `A` e `P`, em maiúsculas, usando `cmp`
   e saltos condicionais;
4. se baterem, escrever `ACESSO LIBERADO` com quebra de linha e sair com código 0;
5. caso contrário, inclusive com entrada de menos de 4 caracteres, escrever
   `ACESSO NEGADO` com quebra de linha e sair com código 1.

## Formato da resposta

Monte e ligue o programa você mesmo. No seu home devem existir:

| Arquivo | O que é |
|---|---|
| `porteiro32.asm` | o código-fonte |
| `porteiro32.o` | o objeto, ELF de 32 bits |
| `porteiro32` | o executável, ELF de 32 bits |

Exemplos no terminal:

| O usuário digitou | Última linha | Código de saída |
|---|---|---|
| `FIAP2026` | `ACESSO LIBERADO` | 0 |
| `fiap2026` | `ACESSO NEGADO` | 1 |
| `FIA` | `ACESSO NEGADO` | 1 |

```
Codigo: FIAP2026
ACESSO LIBERADO
```

A saída é comparada byte a byte com entradas sorteadas, junto com o código de saída.

## Como conferir

Quando tiver certeza, rode `/challenge/check`.
