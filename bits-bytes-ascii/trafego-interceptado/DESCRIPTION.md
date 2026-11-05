<h2 align="center">Exercício 3: Tráfego interceptado</h2>

> **Atenção: você só pode errar UMA vez.** No segundo erro o exercício fica
> **invalidado** e a flag não é mais liberada. Arquivo faltando ou fora do
> formato não conta como tentativa, mas resposta errada conta.

## Cenário

Um sniffer capturou o payload de um pacote enviado sem criptografia. Os valores
estão em hexadecimal, 1 byte por caractere ASCII:

```
53 65 6E 68 61 3A 20 4C 33 33 54
```

## Sua missão

Decodifique o payload, descubra a senha que vazou e analise o tamanho do pacote.

## Formato da resposta

Arquivo `/home/hacker/resposta.txt`, com **3 linhas**:

| Linha | Conteúdo |
|---|---|
| 1 | somente a senha (o que vem depois de `Senha: `) |
| 2 | tamanho total do payload em bytes |
| 3 | o byte que representa o caractere `:` em binário (8 bits) |

Exemplo de formato, com valores fictícios:

```
Abc123
25
01000001
```

## Como conferir

Quando tiver certeza, rode `/challenge/check`.
