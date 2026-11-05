<h2 align="center">Exercício 2: Byte de permissões adulterado</h2>

> **Atenção: você só pode errar UMA vez.** No segundo erro o exercício fica
> **invalidado** e a flag não é mais liberada. Arquivo faltando ou fora do
> formato não conta como tentativa, mas resposta errada conta.

## Cenário

Um sistema guarda as permissões de cada usuário em 1 byte, um bit por permissão
(o bit 0 é o menos significativo):

| Bit | 7 | 6 | 5 | 4 | 3 | 2 | 1 | 0 |
|---|---|---|---|---|---|---|---|---|
| Permissão | `ADMIN` | `ATIVO` | `BLOQUEADO` | `MFA` | `LEITURA` | `ESCRITA` | `EXECUCAO` | `AUDITORIA` |

O byte do usuário `estagiario` está em `0xC5`, e a auditoria suspeita de
escalonamento de privilégio.

## Sua missão

Decodifique o byte, liste as permissões ligadas e calcule o valor corrigido
depois de desligar **apenas** o bit `ADMIN`.

## Formato da resposta

Arquivo `/home/hacker/resposta.txt`, com **4 linhas**:

| Linha | Conteúdo |
|---|---|
| 1 | o byte `0xC5` em binário (8 bits) |
| 2 | nomes das permissões ligadas, do bit 7 para o bit 0, separados por um espaço |
| 3 | valor corrigido em hexadecimal, 2 dígitos maiúsculos, sem `0x` |
| 4 | valor corrigido em decimal |

Exemplo de formato, com valores fictícios:

```
00110010
BLOQUEADO MFA EXECUCAO
1E
30
```

## Como conferir

Quando tiver certeza, rode `/challenge/check`.
