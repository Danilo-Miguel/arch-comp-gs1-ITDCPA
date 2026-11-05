<h2 align="center">Exercício 4: Filtro de login que confunde maiúsculas</h2>

> **Atenção: você só pode errar UMA vez.** No segundo erro o exercício fica
> **invalidado** e a flag não é mais liberada. Arquivo faltando ou fora do
> formato não conta como tentativa, mas resposta errada conta.

## Cenário

Um filtro bloqueia o usuário `admin`, mas compara os bytes exatamente. Um
atacante entrou com `ADMIN`. O time quer entender, no nível dos bits, por que o
filtro falhou.

## Sua missão

Codifique as duas palavras em ASCII e descubra qual **único** bit diferencia cada
letra maiúscula da minúscula correspondente.

## Formato da resposta

Arquivo `/home/hacker/resposta.txt`, com **4 linhas**:

| Linha | Conteúdo |
|---|---|
| 1 | `ADMIN` em hexadecimal maiúsculo, bytes separados por um espaço, sem `0x` |
| 2 | `admin` em hexadecimal maiúsculo, bytes separados por um espaço, sem `0x` |
| 3 | posição do bit que difere (0 = menos significativo) |
| 4 | valor desse bit em decimal |

Exemplo de formato, com valores fictícios:

```
5A 6B 7C 0D 1E
3A 4B 5C 2D 3E
7
128
```

## Como conferir

Quando tiver certeza, rode `/challenge/check`.
