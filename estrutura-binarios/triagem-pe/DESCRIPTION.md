<h2 align="center">Exercício 9: Triagem de um anexo .exe suspeito</h2>

> **Atenção: você só pode errar UMA vez.** No segundo erro o exercício fica
> **invalidado** e a flag não é mais liberada. Arquivo faltando ou fora do
> formato não conta como tentativa, mas resposta errada conta.

## Cenário

O SOC recebeu o anexo de phishing `/challenge/fatura.exe` e precisa de uma
**triagem estática**, sem executá-lo.

## Sua missão

Com o que você viu sobre o formato PE, identifique a assinatura do arquivo, a
localização do cabeçalho PE, a arquitetura, as seções e a importação que denuncia
o comportamento de **downloader**: um programa cuja função é baixar outro arquivo
da internet.

O ambiente tem ferramentas capazes de ler PE e de mostrar o conteúdo de um arquivo
em hexadecimal.

## Formato da resposta

Arquivo `/home/hacker/resposta.txt`, com **6 linhas**:

| Linha | Conteúdo |
|---|---|
| 1 | os 2 primeiros bytes do arquivo em hexadecimal maiúsculo, separados por um espaço, sem `0x` |
| 2 | esses 2 bytes como texto ASCII |
| 3 | offset do cabeçalho PE (valor de `e_lfanew`): `0x` + dígitos maiúsculos, sem zeros à esquerda |
| 4 | arquitetura: `32` ou `64` |
| 5 | número de seções |
| 6 | DLL e função suspeita no formato `dll!Funcao`, escritas como aparecem nas importações |

Exemplo de formato, com valores fictícios:

```
AB CD
Xy
0x1F0
64
7
kernel32.dll!Sleep
```

## Como conferir

Quando tiver certeza, rode `/challenge/check`.
