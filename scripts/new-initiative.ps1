# Fork a new business initiative from this config
# Usage: .\new-initiative.ps1 -Name "Q3-GTM-Stamped"

param(
    [Parameter(Mandatory = $true)]
    [string]$Name,
    [string]$Parent = "D:\Startups"
)

$ErrorActionPreference = "Stop"
$source = Split-Path $PSScriptRoot -Parent
$dest = Join-Path $Parent $Name

if (Test-Path $dest) {
    Write-Error "Already exists: $dest"
}

Write-Host "Copying config to $dest ..."
robocopy $source $dest /E /XD .git outputs /NFL /NDL /NJH /NJS /nc /ns /np | Out-Null
Set-Location $dest
git init 2>&1 | Out-Null
New-Item -ItemType Directory -Path "outputs" -Force | Out-Null

@"
# $Name

Initiative forked from cursor-config-business.

## Goal

[Describe the business goal]

## Outputs

Deliverables go in ``outputs/``.
"@ | Set-Content -Path "AGENTS.md" -Encoding UTF8

Write-Host "Created $dest — open in Cursor and customize AGENTS.md"
