<h2 align="center">Exercício 15: A migração mal feita</h2>

> **Atenção: você só pode errar UMA vez.** No segundo erro o exercício fica
> **invalidado** e a flag não é mais liberada. Arquivo faltando ou fora do
> formato não conta como tentativa, mas resposta errada conta.

## Cenário

Um estagiário converteu um decodificador de 32 para 64 bits e deixou **3 erros**. O
fonte está em `/challenge/decoder64.asm`, somente leitura. Quando estiver correto, o
programa pede uma palavra-chave e, se ela for `arquitetura`, imprime um código de
liberação decodificado em tempo de execução.

## Sua missão

Copie o fonte para o seu home, analise-o, monte, ligue, execute e observe o
comportamento. Corrija os 3 erros, um por um, até o programa mostrar o código e
terminar normalmente.

## Formato da resposta

Arquivo `/home/hacker/resposta.txt`, com **2 linhas**:

| Linha | Conteúdo |
|---|---|
| 1 | o código de liberação completo |
| 2 | os números das 3 linhas corrigidas, em ordem crescente, separados por um espaço |

Os números se referem ao arquivo **original**, em `/challenge/decoder64.asm`, com a
primeira linha do arquivo sendo a linha 1. Se a correção de um erro trocar uma linha
por várias, informe o número da linha original que foi substituída.

Exemplo de formato, com valores fictícios:

```
XPTO-A1B2C3
7 19 33
```

## Como conferir

Quando tiver certeza, rode `/challenge/check`.
