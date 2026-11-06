<h2 align="center">Exercício 10: Cadastro de acesso (64 bits)</h2>

> **Atenção: você só pode errar UMA vez.** No segundo erro o exercício fica
> **invalidado** e a flag não é mais liberada. Arquivo faltando ou programa não
> montado/ligado não conta como tentativa, mas programa com saída errada conta.
> **Teste o seu programa antes de rodar o `check`.**

## Cenário

O sistema de controle de acesso do exercício 7 foi migrado para 64 bits e continua
registrando o usuário e o setor de quem entra.

## Sua missão

Crie `~/cadastro64.asm` em NASM, para x86-64, que:

1. escreva `Digite o usuario: `, sem quebra de linha, e leia até 32 bytes;
2. escreva `Digite o setor: `, sem quebra de linha, e leia até 32 bytes;
3. escreva `Usuario: ` seguido exatamente dos bytes do usuário, incluindo o Enter;
4. escreva `Setor: ` seguido exatamente dos bytes do setor, incluindo o Enter;
5. encerre com código de saída 0.

As únicas instruções necessárias são `mov` e `syscall`. Consulte a tabela de syscalls
de 64 bits da aula. Cada syscall usa o registrador de retorno de novo: guarde na
memória a quantidade de bytes de cada leitura antes de seguir adiante.

Se o NASM mostrar um aviso sobre `DEFAULT ABS`, a diretiva `default rel` no início do
arquivo resolve.

## Formato da resposta

Monte e ligue o programa você mesmo. No seu home devem existir:

| Arquivo | O que é |
|---|---|
| `cadastro64.asm` | o código-fonte |
| `cadastro64.o` | o objeto, ELF de 64 bits |
| `cadastro64` | o executável, ELF de 64 bits |

Exemplo no terminal, em que `Ana` e `SOC` foram digitados:

```
Digite o usuario: Ana
Digite o setor: SOC
Usuario: Ana
Setor: SOC
```

A saída é comparada byte a byte com usuários e setores sorteados.

## Como conferir

Quando tiver certeza, rode `/challenge/check`.
