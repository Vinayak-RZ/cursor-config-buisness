# cursor-config-business

Curated Cursor config for **non-coding** work: PM, GTM, research, strategy.

## What's included

| Item | Count |
|------|-------|
| Pre-installed skills | **44** (curated from 68 pm-skills + 4 custom research) |
| Optional skills (catalog) | **5** (install on demand) |
| Shared | `graphify`, `find-skills` |

### Custom research skills

- `lead-research-assistant`
- `analyze-industry`
- `company-research`
- `company-technical-research`

### Curated PM skills (highlights)

Discovery, strategy, PRD/OKRs, GTM/ICP, market research, positioning, metrics — see [skills-manifest.json](skills-manifest.json) for the full list.

### Removed from full pm-skills marketplace

Redundant variants (`*-existing`), legal/toolkit (`draft-nda`, `grammar-check`), coding-adjacent (`sql-queries`, `shipping-artifacts`), and niche execution skills (`dummy-dataset`, `retro`, etc.).

## Usage

**Open this repo** in Cursor for PM/GTM/research work, or **fork** for a specific initiative:

```powershell
.\scripts\new-initiative.ps1 -Name "Q3-GTM-Stamped"
```

## Optional skills

```powershell
.\scripts\install-optional-skill.ps1 -Name linkedin-content
```

Available: `competitive-intel`, `linkedin-content`, `content-marketing`, `social-selling`, `solo-founder-gtm`

## Cloud agents

Push to GitHub and point cloud agents at this repo (or a fork). Skills load from `.cursor/skills/` automatically.
