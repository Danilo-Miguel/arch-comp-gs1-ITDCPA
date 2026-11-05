<h2 align="center">Exercício 13: O cofre de 32 bits</h2>

> **Atenção: você só pode errar UMA vez.** No segundo erro o exercício fica
> **invalidado** e a flag não é mais liberada. Arquivo faltando ou fora do
> formato não conta como tentativa, mas resposta errada conta.

## Cenário

A equipe recuperou o código-fonte `/challenge/cofre32.asm`, somente leitura, de um
cofre digital. Ele pede um PIN e, com o PIN certo, decodifica e mostra um código de
liberação. Dos registros do antigo administrador, sobrou apenas uma anotação: o PIN
é o valor decimal de `0x7A69`.

Quem já testou desconfia que o programa não mostra tudo o que deveria.

## Sua missão

Copie o fonte para o seu home, descubra o PIN, monte, ligue e execute o programa.
Compare o que aparece na tela com o que o fonte diz que deveria acontecer, encontre
o defeito e corrija a sua cópia até ver o código completo.

## Formato da resposta

Arquivo `/home/hacker/resposta.txt`, com **2 linhas**:

| Linha | Conteúdo |
|---|---|
| 1 | o código de liberação completo |
| 2 | o PIN, em decimal |

Exemplo de formato, com valores fictícios:

```
XPTO-A1B2C3
12345
```

## Como conferir

Quando tiver certeza, rode `/challenge/check`.
