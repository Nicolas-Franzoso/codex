param(
    [string]$Repo = "Nicolas-Franzoso/codex",
    [string]$SkillPath = "plano-de-midia-make",
    [string]$Ref = "main"
)

$ErrorActionPreference = "Stop"

function Get-CodexHome {
    if ($env:CODEX_HOME -and $env:CODEX_HOME.Trim()) {
        return $env:CODEX_HOME
    }

    return Join-Path $HOME ".codex"
}

$codexHome = Get-CodexHome
$installer = Join-Path $codexHome "skills\.system\skill-installer\scripts\install-skill-from-github.py"
$destination = Join-Path $codexHome "skills\plano-de-midia-make"

Write-Host ""
Write-Host "Instalando a skill plano-de-midia-make..." -ForegroundColor Cyan
Write-Host "CODEX_HOME: $codexHome"
Write-Host "Repositorio: $Repo"
Write-Host "Caminho da skill: $SkillPath"
Write-Host ""

if (-not (Test-Path $installer)) {
    throw "Nao encontrei o instalador oficial em '$installer'. Verifique se o Codex esta instalado nesta maquina."
}

if (Test-Path $destination) {
    Write-Host "A skill ja esta instalada em '$destination'." -ForegroundColor Yellow
    Write-Host "Se quiser reinstalar, remova essa pasta manualmente e rode o script novamente." -ForegroundColor Yellow
    exit 0
}

python $installer --repo $Repo --path $SkillPath --ref $Ref

Write-Host ""
Write-Host "Instalacao concluida." -ForegroundColor Green
Write-Host "Feche e abra o Codex novamente para a skill aparecer na sessao." -ForegroundColor Green
