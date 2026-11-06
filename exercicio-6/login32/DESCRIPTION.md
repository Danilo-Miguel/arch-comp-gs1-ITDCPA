<h2 align="center">Exercício 6: Boas-vindas ao usuário (32 bits)</h2>

> **Atenção: você só pode errar UMA vez.** No segundo erro o exercício fica
> **invalidado** e a flag não é mais liberada. Arquivo faltando ou programa não
> montado/ligado não conta como tentativa, mas programa com saída errada conta.
> **Teste o seu programa antes de rodar o `check`.**

## Cenário

O terminal de um sistema legado de 32 bits pede o nome do usuário e responde com
uma mensagem de boas-vindas.

## Sua missão

Crie `~/login32.asm` em NASM, para x86 de 32 bits, que:

1. escreva `Usuario: `, sem quebra de linha;
2. leia até 32 bytes do teclado;
3. escreva `Bem-vindo, ` e, na mesma linha, o usuário digitado;
4. encerre com código de saída 0.

As únicas instruções necessárias são `mov` e `int 0x80`. Consulte a tabela de
syscalls de 32 bits da aula. O `read` devolve quantos bytes leu: use esse valor
para escrever só o que foi digitado.

## Formato da resposta

Monte e ligue o programa você mesmo. No seu home devem existir:

| Arquivo | O que é |
|---|---|
| `login32.asm` | o código-fonte |
| `login32.o` | o objeto, ELF de 32 bits |
| `login32` | o executável, ELF de 32 bits |

Exemplo no terminal, em que `Ana` foi digitado:

```
Usuario: Ana
Bem-vindo, Ana
```

A saída é comparada byte a byte com usuários sorteados.

## Como conferir

Quando tiver certeza, rode `/challenge/check`.
