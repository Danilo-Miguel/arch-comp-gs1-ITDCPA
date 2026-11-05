<h2 align="center">Exercício 6: Ciclo de instrução passo a passo</h2>

> **Atenção: você só pode errar UMA vez.** No segundo erro o exercício fica
> **invalidado** e a flag não é mais liberada. Arquivo faltando ou fora do
> formato não conta como tentativa, mas resposta errada conta.

## Cenário

Durante a análise de um firmware, a equipe precisa prever o que um programa faz
sem poder executá-lo. A máquina é uma CPU didática de von Neumann, com os
registradores `PC`, `IR` e `ACC`, e o programa fica na mesma memória que os dados.

Cada instrução ocupa 1 endereço e é codificada como `opcode*100 + operando`.
Endereços e valores estão em decimal. O `PC` começa em 0.

| Opcode | Instrução | Efeito |
|---|---|---|
| 0 | `HALT` | para a execução |
| 1 | `LOAD x` | `ACC ← M[x]` |
| 2 | `ADD x` | `ACC ← ACC + M[x]` |
| 3 | `STORE x` | `M[x] ← ACC` |
| 4 | `SUB x` | `ACC ← ACC − M[x]` |
| 5 | `JZ x` | se `ACC = 0`, `PC ← x` |
| 6 | `JMP x` | `PC ← x` |

Memória (endereço: conteúdo):

```
00:110  01:211  02:312  03:413  04:507  05:314  06:000  07:115
08:314  09:000  10:25   11:17   12:0    13:42   14:0    15:99
```

## Sua missão

Simule o ciclo busca–decodificação–execução até o `HALT`, contando os acessos à
memória:

- cada busca de instrução conta 1;
- cada leitura ou escrita de dado feita por `LOAD`, `ADD`, `SUB` ou `STORE` conta 1;
- `JZ`, `JMP` e `HALT` não acessam dados.

## Formato da resposta

Arquivo `/home/hacker/resposta.txt`, com **5 linhas**, todas em decimal:

| Linha | Conteúdo |
|---|---|
| 1 | quantas instruções foram buscadas (incluindo o `HALT`) |
| 2 | endereço da última instrução buscada |
| 3 | valor final de `M[12]` |
| 4 | valor final de `M[14]` |
| 5 | total de acessos à memória (buscas + dados) |

Exemplo de formato, com valores fictícios:

```
12
7
5
3
20
```

## Como conferir

Quando tiver certeza, rode `/challenge/check`.
