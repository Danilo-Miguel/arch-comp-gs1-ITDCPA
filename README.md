# Memória, Assembly e Binários em Cenários de Cyber Security

Dojo do pwn.college com 15 exercícios, definido em [dojo.yml](./dojo.yml), para
a disciplina de Arquitetura de Computadores. Cada exercício é um desafio com
`/challenge/check` e flag próprios.

| Módulo | Exercício | Desafio | Tema |
|---|---|---|---|
| `bits-bytes-ascii` | 1 | `log-firewall` | IPs em hexadecimal e máscara de rede |
| | 2 | `byte-permissoes` | Permissões bit a bit |
| | 3 | `trafego-interceptado` | Payload em ASCII |
| | 4 | `filtro-login` | Maiúsculas e minúsculas nos bits |
| `memoria` | 5 | `overflow-ram` | Endereçamento e little-endian |
| `cpu-registradores` | 6 | `ciclo-instrucao` | Busca, decodificação e execução |
| | 7 | `dado-vira-instrucao` | Risco de misturar código e dados |
| | 8 | `registradores-crash` | Sub-registradores e flags |
| `estrutura-binarios` | 9 | `triagem-pe` | Triagem estática de um PE |
| | 10 | `porta-dos-fundos` | Cabeçalho, seções e símbolos de um ELF |
| `assembly` | 11 | `banner32` | `write` e `exit` em 32 bits |
| | 12 | `porteiro32` | `read`, `cmp` e saltos em 32 bits |
| | 13 | `cofre32` | Montar, depurar e corrigir em 32 bits |
| | 14 | `eco64` | `read` e `write` em 64 bits |
| | 15 | `decoder64` | Depurar uma migração para 64 bits |

## Regra das tentativas

Cada `check` permite **um erro**. No segundo erro o exercício fica
**invalidado** para aquele aluno e o `check` não libera mais a flag.

- O registro fica em `/home/hacker/.tentativas`, um arquivo por exercício, e é
  **assinado** com um segredo derivado do `/flag` (que só o root lê): registro
  editado ou forjado conta como um erro já gasto.
- Quando o home permite, a pasta fica com dono root e, por não ficar vazia, o
  aluno não consegue apagá-la; se ele a renomear e criar outra, o `check` encontra
  a original. Se o home deixar tudo com dono `hacker`, a assinatura continua
  valendo, mas apagar a pasta inteira zera as tentativas.
- O dojo usa `allow_privileged: false`. Sem isso, o aluno poderia entrar no modo
  *practice* (com `sudo`) e apagar o registro.
- Não contam como tentativa: arquivo ausente, número de linhas errado, linha
  fora do formato, `.asm` alterado depois de montar, objeto ou executável com a
  classe errada e mecanismo de syscall errado.
- Os checks guardam só o SHA-256 das respostas. Os programas dos alunos rodam
  com o usuário `hacker`, com limite de 5 segundos, e a saída é comparada byte a
  byte junto com o código de saída.

## Ambiente

A imagem `pwncollege/challenge-simple` é mínima. As ferramentas usadas nos
exercícios vêm do workspace do pwn.college, em `/run/dojo/bin`.

## Gabarito

O gabarito, as soluções, os fontes dos binários e o gerador dos checks **não**
ficam neste repositório, que é público.
