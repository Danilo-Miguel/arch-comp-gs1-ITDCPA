<h2 align="center">Exercício 5: Overflow na RAM</h2>

> **Atenção: você só pode errar UMA vez.** No segundo erro o exercício fica
> **invalidado** e a flag não é mais liberada. Arquivo faltando ou fora do
> formato não conta como tentativa, mas resposta errada conta.

## Cenário

Um programa reserva na RAM um buffer de **16 bytes** começando no endereço
`0x0804A010`. Logo depois do buffer fica a variável `acesso`, de **4 bytes**.

O usuário digitou 20 caracteres: 16 letras `A` seguidas de `BCDE`, com 1 byte por
caractere e sem terminador. Cada endereço guarda 1 byte.

Regra little-endian: no x86, um valor de vários bytes é guardado com o byte menos
significativo no menor endereço.

## Sua missão

Calcule os endereços envolvidos e o valor que a variável `acesso` passa a ter.

## Formato da resposta

Arquivo `/home/hacker/resposta.txt`, com **4 linhas**:

| Linha | Conteúdo |
|---|---|
| 1 | endereço do último byte do buffer (`0x` + 8 dígitos maiúsculos) |
| 2 | endereço do primeiro byte que transbordou (`0x` + 8 dígitos maiúsculos) |
| 3 | quantos bytes transbordaram |
| 4 | valor de `acesso` lido como inteiro de 4 bytes (`0x` + 8 dígitos maiúsculos) |

Exemplo de formato, com valores fictícios:

```
0x10203040
0x10203041
7
0x0BADF00D
```

## Como conferir

Quando tiver certeza, rode `/challenge/check`.
