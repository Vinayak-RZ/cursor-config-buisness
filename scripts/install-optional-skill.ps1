# Install an optional business skill from skills-manifest.json into this repo's .cursor/skills/
# Usage: .\install-optional-skill.ps1 -Name linkedin-content

param(
    [Parameter(Mandatory = $true)]
    [string]$Name
)

$manifest = Get-Content (Join-Path $PSScriptRoot "..\skills-manifest.json") | ConvertFrom-Json
$entry = $manifest.optional_install | Where-Object { $_.name -eq $Name }
if (-not $entry) {
    Write-Error "Skill '$Name' not in optional_install list. See skills-manifest.json"
}

$dest = Join-Path $PSScriptRoot "..\.cursor\skills"
Set-Location (Join-Path $env:TEMP "biz-skill-$Name-$(Get-Random)")
Write-Host "Running: $($entry.command)"
Invoke-Expression $entry.command

$agentsPath = Join-Path $env:USERPROFILE ".agents\skills\$Name"
if (Test-Path $agentsPath) {
    Copy-Item $agentsPath (Join-Path $dest $Name) -Recurse -Force
    Write-Host "Installed $Name to $dest"
} else {
    Write-Host "Run completed — verify .cursor/skills/$Name exists."
}
