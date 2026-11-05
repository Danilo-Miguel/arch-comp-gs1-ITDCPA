<h2 align="center">Exercício 11: Banner do servidor</h2>

> **Atenção: você só pode errar UMA vez.** No segundo erro o exercício fica
> **invalidado** e a flag não é mais liberada. Arquivo faltando ou programa não
> montado/ligado não conta como tentativa, mas programa com saída errada conta.
> **Teste o seu programa antes de rodar o `check`.**

## Cenário

O servidor de monitoramento precisa exibir um aviso legal a cada conexão, e o
sistema legado só aceita um executável de 32 bits.

## Sua missão

Crie `~/banner32.asm` em NASM, para x86 de 32 bits, usando `int 0x80`. O programa
deve escrever exatamente as 2 linhas abaixo, cada uma terminada em quebra de
linha, e encerrar com **código de saída 42**.

Consulte a tabela de syscalls de 32 bits da aula: você vai precisar de duas
syscalls diferentes e de contar os bytes de cada texto.

## Formato da resposta

Monte e ligue o programa você mesmo. No seu home devem existir:

| Arquivo | O que é |
|---|---|
| `banner32.asm` | o código-fonte |
| `banner32.o` | o objeto, ELF de 32 bits |
| `banner32` | o executável, ELF de 32 bits |

Saída esperada, byte a byte, sem acentos:

```
== Servidor FIAP-SEC ==
Acesso monitorado
```

## Como conferir

Quando tiver certeza, rode `/challenge/check`.
