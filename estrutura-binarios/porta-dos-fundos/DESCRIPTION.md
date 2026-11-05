<h2 align="center">Exercício 10: A porta dos fundos no ELF</h2>

> **Atenção: você só pode errar UMA vez.** No segundo erro o exercício fica
> **invalidado** e a flag não é mais liberada. Arquivo faltando ou fora do
> formato não conta como tentativa, mas resposta errada conta.

## Cenário

O binário Linux `/challenge/cofre` foi encontrado num servidor, sem o código-fonte.
A suspeita é de que ele tenha uma função escondida, que `main` nunca chama, e uma
senha gravada no próprio arquivo.

## Sua missão

Inspecione o binário: o cabeçalho, as seções e a tabela de símbolos.

## Formato da resposta

Arquivo `/home/hacker/resposta.txt`, com **5 linhas**:

| Linha | Conteúdo |
|---|---|
| 1 | classe: `32` ou `64` |
| 2 | endereço do entry point: `0x` + dígitos maiúsculos, sem zeros à esquerda |
| 3 | nome da seção onde a senha está guardada, com o ponto inicial |
| 4 | nome da função que existe na tabela de símbolos, mas nunca é chamada por `main` |
| 5 | a senha |

Exemplo de formato, com valores fictícios:

```
32
0x4F2B30
.data
rotina_secreta
Abacaxi99
```

## Como conferir

Quando tiver certeza, rode `/challenge/check`.
