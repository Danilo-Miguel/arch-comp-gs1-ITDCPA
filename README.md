# Binário, ASCII e Assembly x86 de 32 e 64 bits

Dojo do pwn.college com 10 exercícios, definido em [dojo.yml](./dojo.yml), para a
disciplina de Arquitetura de Computadores. Cada exercício é um módulo, com
`/challenge/check` e flag próprios.

| Módulo | Desafio | Tema |
|---|---|---|
| `exercicio-1` | `log-firewall` | IPs em hexadecimal e máscara de rede |
| `exercicio-2` | `byte-permissoes` | Permissões bit a bit |
| `exercicio-3` | `trafego-interceptado` | Payload em ASCII |
| `exercicio-4` | `filtro-login` | Maiúsculas e minúsculas nos bits |
| `exercicio-5` | `banner32` | Escrita (32 bits) |
| `exercicio-6` | `login32` | Leitura e escrita (32 bits) |
| `exercicio-7` | `cadastro32` | Duas leituras e escrita (32 bits) |
| `exercicio-8` | `banner64` | Escrita (64 bits) |
| `exercicio-9` | `login64` | Leitura e escrita (64 bits) |
| `exercicio-10` | `cadastro64` | Duas leituras e escrita (64 bits) |

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

O gabarito, as soluções e o gerador dos checks **não** ficam neste repositório,
que é público.
