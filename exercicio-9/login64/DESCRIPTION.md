<h2 align="center">Exercício 9: Boas-vindas ao usuário (64 bits)</h2>

> **Atenção: você só pode errar UMA vez.** No segundo erro o exercício fica
> **invalidado** e a flag não é mais liberada. Arquivo faltando ou programa não
> montado/ligado não conta como tentativa, mas programa com saída errada conta.
> **Teste o seu programa antes de rodar o `check`.**

## Cenário

O terminal do exercício 6 foi migrado para 64 bits e continua pedindo o nome do
usuário e respondendo com uma mensagem de boas-vindas.

## Sua missão

Crie `~/login64.asm` em NASM, para x86-64, que:

1. escreva `Usuario: `, sem quebra de linha;
2. leia até 32 bytes do teclado;
3. escreva `Bem-vindo, ` e, na mesma linha, o usuário digitado;
4. encerre com código de saída 0.

As únicas instruções necessárias são `mov` e `syscall`. Consulte a tabela de syscalls
de 64 bits da aula. O `read` devolve quantos bytes leu: use esse valor para escrever
só o que foi digitado.

Se o NASM mostrar um aviso sobre `DEFAULT ABS`, a diretiva `default rel` no início do
arquivo resolve.

## Formato da resposta

Monte e ligue o programa você mesmo. No seu home devem existir:

| Arquivo | O que é |
|---|---|
| `login64.asm` | o código-fonte |
| `login64.o` | o objeto, ELF de 64 bits |
| `login64` | o executável, ELF de 64 bits |

Exemplo no terminal, em que `Ana` foi digitado:

```
Usuario: Ana
Bem-vindo, Ana
```

A saída é comparada byte a byte com usuários sorteados.

## Como conferir

Quando tiver certeza, rode `/challenge/check`.
