# -----------------------------------------------------------------------------
# init.and.push.ps1 - first-time push for AI Safety SGE Chapter Sri Lanka
#
# Pre-requisites:
#   1. Create the empty GitHub repo at https://github.com/new
#      Owner: Vidura-Wijekoon
#      Name:  aisge-srilanka
#      Visibility: Public
#      LEAVE README / .gitignore / License all OFF (we ship them locally)
#
#   2. Have `git` installed and authenticated
#      (gh auth login, SSH key, or Windows credential manager)
#
# Usage (from any folder):
#   powershell -ExecutionPolicy Bypass -File .\scripts\init.and.push.ps1
# -----------------------------------------------------------------------------

$ErrorActionPreference = "Stop"

$RemoteUrl     = "https://github.com/AI-SGE-SriLanka/aisge-srilanka.git"
$DefaultBranch = "main"
$CommitMsg     = "Initial chapter resources structure"

# Resolve repo root (parent of scripts\)
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$RepoRoot  = Resolve-Path (Join-Path $ScriptDir "..")
Set-Location $RepoRoot

Write-Host "→ Working directory: $RepoRoot"

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Error "git is not installed or not on PATH"
    exit 1
}

if (Test-Path ".git") {
    Write-Host "✓ git already initialised"
} else {
    Write-Host "→ git init"
    git init | Out-Null
}

Write-Host "→ git add ."
git add .

# Check if there's anything staged
$staged = git diff --cached --name-only
if (-not $staged) {
    Write-Host "✓ Nothing to commit (working tree clean)"
} else {
    Write-Host "→ git commit"
    git commit -m $CommitMsg | Out-Null
}

Write-Host "→ git branch -M $DefaultBranch"
git branch -M $DefaultBranch

# Check remote
$existingRemote = git remote get-url origin 2>$null
if ($existingRemote) {
    if ($existingRemote -ne $RemoteUrl) {
        Write-Error "remote 'origin' already set to: $existingRemote`n  Expected: $RemoteUrl`n  Run: git remote set-url origin $RemoteUrl"
        exit 1
    }
    Write-Host "✓ remote 'origin' already set"
} else {
    Write-Host "→ git remote add origin $RemoteUrl"
    git remote add origin $RemoteUrl
}

Write-Host "→ git push -u origin $DefaultBranch"
git push -u origin $DefaultBranch

Write-Host ""
Write-Host "✅ Pushed. Repo is live at: https://github.com/AI-SGE-SriLanka/aisge-srilanka" -ForegroundColor Green
