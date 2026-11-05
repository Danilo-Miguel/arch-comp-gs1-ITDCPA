<h2 align="center">Exercício 7: Quando dado vira instrução</h2>

> **Atenção: você só pode errar UMA vez.** No segundo erro o exercício fica
> **invalidado** e a flag não é mais liberada. Arquivo faltando ou fora do
> formato não conta como tentativa, mas resposta errada conta.

## Cenário

Um programador errou o endereço de um `STORE`, e o programa sobrescreve a própria
área de código. Numa máquina de von Neumann, código e dados dividem a mesma
memória: a CPU decodifica como instrução qualquer valor que o `PC` apontar.

A CPU e a codificação são as mesmas do exercício 6: cada instrução ocupa 1
endereço, é codificada como `opcode*100 + operando` e o `PC` começa em 0.

| Opcode | Instrução | Efeito |
|---|---|---|
| 0 | `HALT` | para a execução |
| 1 | `LOAD x` | `ACC ← M[x]` |
| 2 | `ADD x` | `ACC ← ACC + M[x]` |
| 3 | `STORE x` | `M[x] ← ACC` |
| 4 | `SUB x` | `ACC ← ACC − M[x]` |
| 5 | `JZ x` | se `ACC = 0`, `PC ← x` |
| 6 | `JMP x` | `PC ← x` |

Memória (endereço: conteúdo), em decimal:

```
00:120  01:221  02:306  03:122  04:323  05:124  06:000  07:000
08:125  09:323  10:000
20:600  21:8    22:7    23:0    24:1    25:666
```

## Sua missão

Simule a execução até o `HALT` e explique o desvio: o que a CPU encontrou no
endereço 6, por onde a execução seguiu e o que isso causou em `M[23]`.

## Formato da resposta

Arquivo `/home/hacker/resposta.txt`, com **4 linhas**:

| Linha | Conteúdo |
|---|---|
| 1 | endereços buscados, em ordem, em decimal, separados por um espaço |
| 2 | a instrução que a CPU decodificou no endereço 6: `MNEMONICO OPERANDO`, com operando de 2 dígitos |
| 3 | valor final de `M[23]` |
| 4 | valor de `M[23]` que o programador esperava (se o endereço 6 continuasse sendo `HALT`) |

Exemplo de formato, com valores fictícios:

```
0 1 2 5 9
LOAD 03
123
45
```

## Como conferir

Quando tiver certeza, rode `/challenge/check`.
