# plano-de-midia-make

Repositório da skill `plano-de-midia-make` para instalação em qualquer máquina com Codex.

## Estrutura

O caminho da skill dentro do repositório é:

`plano-de-midia-make/`

## Publicar no GitHub

Exemplo:

```powershell
git init
git add .
git commit -m "Add plano-de-midia-make skill"
git branch -M main
git remote add origin https://github.com/SEU-USUARIO/plano-de-midia-make.git
git push -u origin main
```

## Instalar em outro computador

Depois de publicar, instale com o instalador de skills apontando para a pasta da skill no repositório:

```powershell
python C:\Users\SEU_USUARIO\.codex\skills\.system\skill-installer\scripts\install-skill-from-github.py --repo SEU-USUARIO/plano-de-midia-make --path plano-de-midia-make
```

Ou, se preferir, copie a pasta `plano-de-midia-make` para:

`~/.codex/skills/plano-de-midia-make`

Depois da instalação, reinicie o Codex para a skill aparecer na sessão.
