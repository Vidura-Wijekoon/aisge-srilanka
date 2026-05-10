# 🛠 Setup - Push this repo to GitHub

This document is for the chapter maintainer (Vidura) creating the canonical GitHub repo for the first time.

## Step 1 - Create the empty GitHub repo

Go to <https://github.com/new> and use these settings:

| Field | Value |
|-------|-------|
| **Owner** | `Vidura-Wijekoon` |
| **Repository name** | `aisge-srilanka` |
| **Description** | Resources hub for the AI Safety, Governance & Ethics (SGE) Chapter - Sri Lanka. Curated courses, NAIS policy, Sinhala/Tamil NLP, civil-society work, event materials. |
| **Visibility** | **Public** |
| **Add README** | **Off** |
| **Add .gitignore** | **No .gitignore** |
| **Add license** | **No license** |

> ⚠ It is important to leave **README**, **.gitignore**, and **License** off when creating the repo on GitHub.
> We already include all three in this folder. Letting GitHub create them would cause a merge conflict on the very first push.

```text
┌──────────────────────────────────────────────┐
│ Add README        [ Off  ⚪○ ]                │
│ Add .gitignore    [ No .gitignore   ▾ ]      │
│ Add license       [ No license      ▾ ]      │
└──────────────────────────────────────────────┘
```

Click **Create repository**. GitHub will show a "Quick setup" page - ignore the suggested commands and use ours below.

---

## Step 2 - Push the local folder

Open a terminal in this folder (`V:\Voluntering\AI SGE Chapter\Resources\AI-safety-SriLanka-Github\AI-Safety-SriLanka`) and run:

### Bash / Git Bash / WSL

```bash
git init
git add .
git commit -m "Initial chapter resources structure"
git branch -M main
git remote add origin https://github.com/AI-SGE-SriLanka/aisge-srilanka.git
git push -u origin main
```

### Windows PowerShell

```powershell
git init
git add .
git commit -m "Initial chapter resources structure"
git branch -M main
git remote add origin https://github.com/AI-SGE-SriLanka/aisge-srilanka.git
git push -u origin main
```

### Windows CMD

Same commands as PowerShell - they're all just `git`.

---

## Step 3 - Verify

Open <https://github.com/AI-SGE-SriLanka/aisge-srilanka> and check:

- The README renders with all the section tables
- All folders are present (Civil.Society, Community, Governance, Literacy, Local.Academia, Local.Languages, Reading.List, Tech.Security)
- LICENSE shows in the GitHub UI
- The `.github/` folder enables issue templates and PR template

---

## Optional - recommended GitHub repo settings

Once pushed, configure these on `github.com/AI-SGE-SriLanka/aisge-srilanka/settings`:

| Setting | Value | Why |
|---------|-------|-----|
| Default branch | `main` | Already set |
| Issues | enabled | We ship issue templates |
| Discussions | enabled | Good for the community |
| Wiki | disabled | We use markdown files instead |
| Topics | `ai-safety`, `ai-governance`, `ai-ethics`, `sri-lanka`, `sinhala`, `tamil`, `nlp`, `responsible-ai` | Discoverability |
| Branch protection (main) | Require PR review | Prevents accidental direct pushes |
| Pages | Build from `main` / `/` (optional) | Cheap public site |

---

## Helper scripts

Two convenience scripts are included for first-time push:

- [`scripts/init.and.push.sh`](./scripts/init.and.push.sh) - bash / Git Bash / WSL / macOS
- [`scripts/init.and.push.ps1`](./scripts/init.and.push.ps1) - Windows PowerShell

Both scripts run the same git commands as Step 2 and stop with an error if git isn't installed or the remote already exists.

---

## Updating the repo later

After the first push, day-to-day updates are just:

```bash
git add <files>
git commit -m "describe what you added"
git push
```

For larger changes, work on a branch and open a PR - see [`CONTRIBUTING.md`](./CONTRIBUTING.md).
