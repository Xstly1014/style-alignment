# Style Alignment — Multi-Platform Installer (PowerShell)
# Usage: .\install.ps1 -Platform [platform] -ProjectPath [path]
# Platforms: claude-code, codex, cursor, trae, agents-md, all

param(
    [Parameter(Position=0)]
    [ValidateSet("claude-code","codex","cursor","trae","agents-md","all","")]
    [string]$Platform = "",

    [Parameter(Position=1)]
    [string]$ProjectPath = "."
)

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

if (-not $Platform) {
    Write-Host "Style Alignment - Multi-Platform Installer"
    Write-Host ""
    Write-Host "Usage: .\install.ps1 -Platform [platform] -ProjectPath [path]"
    Write-Host ""
    Write-Host "Platforms:"
    Write-Host "  claude-code   Install as Claude Code skill (.claude/skills/)"
    Write-Host "  codex         Install as OpenAI Codex skill (.codex/skills/)"
    Write-Host "  cursor        Install as Cursor rule (.cursor/rules/)"
    Write-Host "  trae          Install as TRAE skill (.trae/skills/)"
    Write-Host "  agents-md     Install as AGENTS.md (project root)"
    Write-Host "  all           Install for all platforms"
    Write-Host ""
    Write-Host "Example: .\install.ps1 -Platform claude-code -ProjectPath C:\projects\my-app"
    exit 0
}

function Install-ClaudeCode {
    param([string]$Path)
    $target = Join-Path $Path ".claude\skills\style-alignment"
    New-Item -ItemType Directory -Path $target -Force | Out-Null
    Copy-Item "$ScriptDir\adapters\claude-code\SKILL.md" "$target\SKILL.md" -Force
    Copy-Item "$ScriptDir\template" $target -Recurse -Force
    Write-Host "[OK] Claude Code: installed to $target"
}

function Install-Codex {
    param([string]$Path)
    $target = Join-Path $Path ".codex\skills\style-alignment"
    New-Item -ItemType Directory -Path $target -Force | Out-Null
    Copy-Item "$ScriptDir\adapters\codex\SKILL.md" "$target\SKILL.md" -Force
    Copy-Item "$ScriptDir\template" $target -Recurse -Force
    Write-Host "[OK] Codex: installed to $target"
}

function Install-Cursor {
    param([string]$Path)
    $target = Join-Path $Path ".cursor\rules"
    New-Item -ItemType Directory -Path $target -Force | Out-Null
    Copy-Item "$ScriptDir\adapters\cursor\style-alignment.mdc" "$target\style-alignment.mdc" -Force
    Write-Host "[OK] Cursor: installed to $target\style-alignment.mdc"
}

function Install-Trae {
    param([string]$Path)
    $target = Join-Path $Path ".trae\skills\style-alignment"
    New-Item -ItemType Directory -Path $target -Force | Out-Null
    Copy-Item "$ScriptDir\SKILL.md" "$target\SKILL.md" -Force
    Copy-Item "$ScriptDir\template" $target -Recurse -Force
    Write-Host "[OK] TRAE: installed to $target"
}

function Install-AgentsMd {
    param([string]$Path)
    Copy-Item "$ScriptDir\adapters\agents-md\AGENTS.md" (Join-Path $Path "AGENTS.md") -Force
    Write-Host "[OK] AGENTS.md: installed to $(Join-Path $Path 'AGENTS.md')"
}

switch ($Platform) {
    "claude-code" { Install-ClaudeCode $ProjectPath }
    "codex" { Install-Codex $ProjectPath }
    "cursor" { Install-Cursor $ProjectPath }
    "trae" { Install-Trae $ProjectPath }
    "agents-md" { Install-AgentsMd $ProjectPath }
    "all" {
        Install-ClaudeCode $ProjectPath
        Install-Codex $ProjectPath
        Install-Cursor $ProjectPath
        Install-Trae $ProjectPath
        Install-AgentsMd $ProjectPath
    }
}

Write-Host ""
Write-Host "Done. The methodology document template is in the 'template\' folder alongside the skill."
