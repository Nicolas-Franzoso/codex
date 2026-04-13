# Skill de Plano de Midia para Codex

Este repositorio distribui a skill `plano-de-midia-make`, usada para criar planos de midia a partir de transcricoes e briefings comerciais.

## O problema real

A skill pode existir no GitHub e ainda assim nao aparecer automaticamente em uma nova maquina.

Isso acontece porque o Codex so lista skills que ja estao instaladas localmente em `~/.codex/skills`.

Em outras palavras:

- estar logado na mesma conta nao sincroniza automaticamente essa skill entre computadores
- para ela aparecer na lista de skills da sessao, ela precisa ser instalada naquela maquina
- depois da instalacao, o Codex precisa ser reiniciado

## O que resolve na pratica

O fluxo mais simples para usuarios nao tecnicos e:

1. Abrir o Codex na nova maquina
2. Colar esta mensagem:

```text
Use a skill $skill-installer e instale esta skill do GitHub:
https://github.com/Nicolas-Franzoso/codex/tree/main/plano-de-midia-make
```

3. Aguardar a instalacao
4. Fechar e abrir o Codex novamente

Depois disso, a skill passa a ficar disponivel naquela maquina e pode ser acionada normalmente por nomes como:

- plano de midia
- plano de midia make
- criador de plano de midia

## Instalacao por PowerShell no Windows

Se preferir, tambem da para instalar fora da conversa usando o script abaixo:

`installers/install-plano-de-midia.ps1`

Exemplo:

```powershell
powershell -ExecutionPolicy Bypass -File .\installers\install-plano-de-midia.ps1
```

## Estrutura

O caminho da skill dentro do repositorio e:

`plano-de-midia-make/`

## Publicar no GitHub

Se voce estiver montando um repositorio novo so para a skill, um exemplo basico seria:

```powershell
git init
git add .
git commit -m "Add plano-de-midia-make skill"
git branch -M main
git remote add origin https://github.com/SEU-USUARIO/plano-de-midia-make.git
git push -u origin main
```

## Instalacao manual em outro computador

Depois de publicar, tambem e possivel instalar com o instalador oficial de skills apontando para a pasta da skill no repositorio:

```powershell
python C:\Users\SEU_USUARIO\.codex\skills\.system\skill-installer\scripts\install-skill-from-github.py --repo Nicolas-Franzoso/codex --path plano-de-midia-make
```

Ou, se preferir, copie a pasta `plano-de-midia-make` para:

`~/.codex/skills/plano-de-midia-make`

Depois da instalacao, reinicie o Codex para a skill aparecer na sessao.

## Estrutura do repositorio

- `plano-de-midia-make/`: skill propriamente dita
- `installers/install-plano-de-midia.ps1`: instalador simples para Windows

## Observacao importante

Nao existe, neste fluxo atual, uma forma garantida de fazer a skill aparecer automaticamente em qualquer computador so por causa do login da conta.

O jeito confiavel hoje e:

- manter a skill versionada no GitHub
- instalar uma vez por maquina
- reiniciar o Codex

Esse repositorio foi organizado exatamente para tornar esse processo simples e repetivel.
