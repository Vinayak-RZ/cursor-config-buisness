# cursor-config-business

A version-controlled **Cursor AI configuration** for non-coding work: product management, go-to-market strategy, market research, competitive intelligence, and business analysis.

This repository is a **portable strategist workspace** — not an application. It packages curated [Agent Skills](https://cursor.com/docs/skills), project rules, and workflows so Cursor's agent behaves like a structured PM/GTM partner instead of a generic chatbot or a coding assistant.

**GitHub:** [github.com/Vinayak-RZ/cursor-config-buisness](https://github.com/Vinayak-RZ/cursor-config-buisness)

**Companion repo (coding):** `cursor-config-coding` — separate config for engineering work with GSAP, Next.js, UI polish, and phased implementation rules.

---

## Table of contents

1. [What this is](#what-this-is)
2. [What this is not](#what-this-is-not)
3. [Why this exists](#why-this-exists)
4. [How Cursor loads this config](#how-cursor-loads-this-config)
5. [Repository specifications](#repository-specifications)
6. [Directory structure](#directory-structure)
7. [Skills inventory](#skills-inventory)
8. [Rules and agent behavior](#rules-and-agent-behavior)
9. [How to use this — all methods](#how-to-use-this--all-methods)
10. [Example prompts](#example-prompts)
11. [Outputs and deliverables](#outputs-and-deliverables)
12. [Optional skills catalog](#optional-skills-catalog)
13. [Cloud agents](#cloud-agents)
14. [Forking for initiatives](#forking-for-initiatives)
15. [Setup on a new machine](#setup-on-a-new-machine)
16. [Curating philosophy](#curating-philosophy)
17. [Troubleshooting](#troubleshooting)
18. [Updating skills](#updating-skills)
19. [License and sources](#license-and-sources)

---

## What this is

| Aspect | Description |
|--------|-------------|
| **Type** | Cursor configuration repository (rules + skills + orchestration) |
| **Mode** | Business / strategist — research, frameworks, written deliverables |
| **Skills** | 45 pre-installed, curated agent skills in `.cursor/skills/` |
| **Rules** | 2 project rules in `.cursor/rules/` shaping agent behavior |
| **Orchestration** | `AGENTS.md` at repo root — entry point for the agent |
| **Manifest** | `skills-manifest.json` — machine-readable skill index and optional catalog |
| **Outputs** | `outputs/` — default folder for Markdown reports (gitignored contents) |

When you open this repository as your Cursor workspace, the agent:

- Routes tasks to the right PM/GTM/research skill
- Produces structured Markdown reports instead of code by default
- Uses proven frameworks (Lean Canvas, Opportunity Solution Tree, ICP, GTM strategy, etc.)
- Can map knowledge from documents via `graphify`

---

## What this is not

- **Not a coding config** — use `cursor-config-coding` for implementation work
- **Not a global `~/.cursor/` dump** — everything is repo-committed so it works on any machine and in cloud agents
- **Not the full [pm-skills marketplace](https://github.com/phuryn/pm-skills)** — curated from 68 skills down to 36 PM skills plus 4 custom research skills
- **Not Claude slash commands** — pm-skills `/discover`, `/write-prd` etc. are Claude-specific; here you describe goals in plain language and skills auto-invoke
- **Not a secrets store** — never commit API keys, credentials, or private customer data

---

## Why this exists

Generic AI gives unstructured text. This config gives **repeatable business workflows**:

1. **Separation of concerns** — business thinking and coding use different rules, skills, and mental models
2. **Portability** — clone on any machine; cloud agents read skills from the repo
3. **Forkability** — spin up initiative-specific repos (e.g. "Q3 GTM for Product X") from this base
4. **Quality over quantity** — 44 high-value skills instead of 68+ with redundancy
5. **Cloud-ready** — unlike `~/.cursor/skills/`, repo skills work in [Cursor Cloud Agents](https://cursor.com/docs/cloud-agent)

---

## How Cursor loads this config

```text
You open this repo in Cursor
        │
        ▼
┌───────────────────────────────────────┐
│  AGENTS.md (orchestration entry)      │
└───────────────────────────────────────┘
        │
        ├──► .cursor/rules/*.mdc (always + contextual rules)
        │
        └──► .cursor/skills/*/SKILL.md (discovered recursively)
                    │
                    ▼
             Agent selects skill by description + your prompt
                    │
                    ▼
             Deliverable → outputs/*.md
```

**Skill discovery:** Cursor scans `.cursor/skills/` for folders containing `SKILL.md`. Skills are invoked automatically when relevant, or when you name them explicitly (e.g. "use the lead-research-assistant skill").

**Rules:** `no-code-default.mdc` always applies. `skill-routing.mdc` applies when the task matches GTM, research, strategy, or PRD work.

**User rules:** Cursor Settings → Rules still apply globally on your machine. Keep user rules minimal (tone/format); profile-specific guidance lives in this repo.

---

## Repository specifications

| Spec | Value |
|------|-------|
| Pre-installed skills | **45** |
| Optional catalog skills | **5** (install on demand) |
| Project rules | **2** (`.mdc` files) |
| Skill format | Universal `SKILL.md` with YAML frontmatter (`name`, `description`) |
| Default output format | Markdown (`.md`) |
| Default output directory | `outputs/` |
| PM skills source | [phuryn/pm-skills](https://github.com/phuryn/pm-skills) (curated subset) |
| Custom research skills | 4 (lead, industry, company, company-technical) |
| Shared utility skills | `graphify`, `find-skills` |
| Scripts | PowerShell (`scripts/*.ps1`) |
| Git ignore | `outputs/*` (keep folder, ignore deliverables) |

---

## Directory structure

```text
cursor-config-business/
├── README.md                 ← You are here
├── AGENTS.md                 ← Agent orchestration (strategist mode)
├── skills-manifest.json      ← Full skill index + optional catalog
├── .gitignore
│
├── .cursor/
│   ├── rules/
│   │   ├── no-code-default.mdc      alwaysApply: true
│   │   └── skill-routing.mdc          Contextual skill → task mapping
│   │
│   └── skills/                        44 skill folders, each with SKILL.md
│       ├── lead-research-assistant/
│       ├── ideal-customer-profile/
│       ├── create-prd/
│       ├── graphify/
│       └── ...
│
├── outputs/                           Deliverables (contents gitignored)
│   └── .gitkeep
│
└── scripts/
    ├── new-initiative.ps1             Fork this config for a new initiative
    └── install-optional-skill.ps1     Install catalog skills into .cursor/skills/
```

---

## Skills inventory

Full categorized list lives in [skills-manifest.json](skills-manifest.json). Summary:

### Copywriting (1)

| Skill | Purpose |
|-------|--------|
| `direct-response-copy-engine` | Generate/audit direct-response ad copy |

[docs/COPYWRITING.md](docs/COPYWRITING.md)

### Custom research (4)

| Skill | Use when |
|-------|----------|
| `lead-research-assistant` | Build prospect lists, find target accounts, B2B lead research |
| `analyze-industry` | Industry-level analysis and trends |
| `company-research` | Business/strategy deep-dive on a company |
| `company-technical-research` | Technical architecture research on a company |

### Discovery (7)

`brainstorm-ideas-new`, `brainstorm-experiments-new`, `identify-assumptions-new`, `prioritize-assumptions`, `opportunity-solution-tree`, `interview-script`, `summarize-interview`

### Strategy (7)

`product-strategy`, `lean-canvas`, `value-proposition`, `pricing-strategy`, `monetization-strategy`, `swot-analysis`, `porters-five-forces`

### Execution (8)

`create-prd`, `brainstorm-okrs`, `outcome-roadmap`, `prioritization-frameworks`, `pre-mortem`, `user-stories`, `strategy-red-team`, `summarize-meeting`

### Market research (4)

`user-personas`, `market-sizing`, `customer-journey-map`, `competitor-analysis`

### GTM (6)

`gtm-strategy`, `ideal-customer-profile`, `beachhead-segment`, `gtm-motions`, `competitive-battlecard`, `growth-loops`

### Marketing & growth (4)

`north-star-metric`, `positioning-ideas`, `value-prop-statements`, `marketing-ideas`

### Analytics (2)

`ab-test-analysis`, `metrics-dashboard`

### Shared utilities (2)

| Skill | Use when |
|-------|----------|
| `graphify` | Turn folders of docs/code into knowledge graphs, HTML viz, JSON export |
| `find-skills` | Discover and install more skills from [skills.sh](https://skills.sh/) |

---

## Rules and agent behavior

### `no-code-default.mdc` (always on)

Unless you explicitly ask for software:

- No app scaffolding, APIs, or scripts
- No repository refactors
- Outputs are Markdown reports, frameworks, and recommendations
- Deliverables go in `outputs/`

### `skill-routing.mdc` (contextual)

Maps user intent to the right skill — see [.cursor/rules/skill-routing.mdc](.cursor/rules/skill-routing.mdc) for the full table.

### `AGENTS.md`

Top-level instructions: strategist mode, planning before output, citation of sources, cloud agent notes. Read by the agent at session start when `rule-awareness` patterns apply.

---

## How to use this — all methods

### Method 1: Open as workspace (recommended for PM/GTM work)

Best for: day-to-day strategy, research, writing PRDs, GTM planning.

```text
1. Clone or open this repo in Cursor
2. File → Open Folder → cursor-config-business
3. Start a new Agent chat
4. Ask in plain language — skills auto-invoke when relevant
```

```powershell
git clone https://github.com/Vinayak-RZ/cursor-config-buisness.git
cd cursor-config-buisness
cursor .
```

---

### Method 2: Fork for a specific initiative

Best for: isolated work on one product, launch, or research project with its own Git history and cloud agent target.

```powershell
cd cursor-config-business
.\scripts\new-initiative.ps1 -Name "Q3-GTM-Stamped-Energy"
```

This will:

1. Copy the config to `D:\Startups\Q3-GTM-Stamped-Energy` (customize `-Parent` if needed)
2. Initialize a fresh git repo
3. Reset `AGENTS.md` with initiative placeholders
4. Create empty `outputs/`

Then:

```powershell
cd D:\Startups\Q3-GTM-Stamped-Energy
# Edit AGENTS.md with your goal, company, deadline
git remote add origin https://github.com/YOUR_USER/your-initiative-repo.git
git push -u origin main
```

Open the initiative folder in Cursor — it inherits all 44 skills and rules.

---

### Method 3: GitHub fork (cloud + collaboration)

Best for: cloud agents, sharing with a team, PR-based updates to the config.

1. Fork [Vinayak-RZ/cursor-config-buisness](https://github.com/Vinayak-RZ/cursor-config-buisness) on GitHub
2. Clone your fork locally
3. Open in Cursor for local work
4. Point Cursor Cloud Agents at your fork or an initiative repo derived from it

Cloud agents **only** see skills committed in the repo — not your local `~/.cursor/skills/`.

---

### Method 4: Explicit skill invocation

Best for: forcing a specific framework when auto-routing picks the wrong skill.

In chat:

```text
Use the ideal-customer-profile skill to define our ICP for B2B solar installers in Texas.

Use lead-research-assistant to find 15 companies that match this ICP.

Run company-research and company-technical-research on Stripe — two separate reports.

Use graphify on the docs/ folder to map our competitive landscape documents.
```

---

### Method 5: Install optional catalog skills

Best for: LinkedIn content, deeper competitive intel, founder-led GTM — without bloating the default 44.

```powershell
.\scripts\install-optional-skill.ps1 -Name linkedin-content
.\scripts\install-optional-skill.ps1 -Name competitive-intel
```

Then commit the new skill folder if you want cloud agents to use it:

```powershell
git add .cursor/skills/linkedin-content
git commit -m "feat(skills): add linkedin-content optional skill"
git push
```

---

### Method 6: Copy skills into another repo

Best for: a business initiative repo that only needs a subset of skills.

```powershell
# Copy specific skills into another project's .cursor/skills/
$skills = @('create-prd', 'ideal-customer-profile', 'gtm-strategy')
foreach ($s in $skills) {
    Copy-Item ".cursor\skills\$s" "D:\Path\To\OtherRepo\.cursor\skills\$s" -Recurse
}
```

Also copy `AGENTS.md` snippets and rules if you want the same behavior.

---

### Method 7: Use alongside a coding project (two windows)

Best for: strategy in one window, implementation in another.

| Window | Open | Config |
|--------|------|--------|
| 1 | `cursor-config-business` or initiative fork | This repo |
| 2 | `Main_Website` or code repo | `cursor-config-coding` (junctioned `.cursor`) |

Do **not** merge both configs into one repo — token bloat and conflicting rules (no-code vs execution phases).

---

## Example prompts

### Direct-response ad copy

```text
Use direct-response-copy-engine Generate mode. Problem-aware, tired market.
30s video script + 3 hooks. Real proof only. outputs/copy/
```


### Lead generation

```text
I'm building a B2B SaaS for construction project management.
Find 20 companies in the US Midwest that would be strong leads.
Output a downloadable Markdown report.
```

→ Invokes `lead-research-assistant`

### Company due diligence

```text
Research HubSpot — business model, GTM, and competitive positioning.
Save as outputs/HubSpot_Research_Report.md
```

→ Invokes `company-research`

### GTM / ICP

```text
We're launching an AI tool for insurance underwriters.
Define our ideal customer profile and recommend a beachhead segment.
Then outline a GTM strategy for the first 90 days.
```

→ Invokes `ideal-customer-profile`, `beachhead-segment`, `gtm-strategy`

### Product discovery

```text
We have an idea for a mobile app that helps freelancers track expenses.
Run discovery: brainstorm ideas, identify assumptions, prioritize the riskiest ones.
```

→ Invokes `brainstorm-ideas-new`, `identify-assumptions-new`, `prioritize-assumptions`

### PRD

```text
Write a PRD for a smart notification system that reduces alert fatigue in our SaaS dashboard.
```

→ Invokes `create-prd`

### Knowledge mapping

```text
/graphify on the research/ folder — I want to see how our competitor notes connect.
```

→ Invokes `graphify`

---

## Outputs and deliverables

| Convention | Example |
|------------|---------|
| Company research | `outputs/Stripe_Research_Report.md` |
| Technical research | `outputs/Stripe_Technical_Research_Report.md` |
| Lead list | `outputs/Lead_List_Construction_SaaS.md` |
| PRD | `outputs/PRD_Smart_Notifications.md` |
| ICP | `outputs/ICP_Insurance_Underwriters.md` |

The `outputs/` folder contents are **gitignored** by default so private research does not accidentally push to GitHub. The folder itself is tracked via `outputs/.gitkeep`.

To commit a deliverable intentionally, force-add it:

```powershell
git add -f outputs/My_Public_Case_Study.md
```

---

## Optional skills catalog

Not pre-installed — install when needed via `scripts/install-optional-skill.ps1`:

| Skill | Installs (skills.sh) | When to add |
|-------|----------------------|-------------|
| `competitive-intel` | 581 | Deeper competitive intelligence beyond `competitor-analysis` |
| `linkedin-content` | 459 | Writing LinkedIn posts for GTM |
| `content-marketing` | 194 | Broader content marketing playbooks |
| `social-selling` | 71 | Social-led GTM and outbound |
| `solo-founder-gtm` | 64 | Founder-led GTM with limited resources |

Manual install (any directory):

```bash
npx skills add inference-sh/skills@linkedin-content -y --copy
```

Then copy the skill folder into `.cursor/skills/`.

---

## Cloud agents

Cursor Cloud Agents run in isolated VMs with **no access** to your local `~/.cursor/` folder. They **do** load skills from `.cursor/skills/` in the cloned repository.

**Setup:**

1. Push this repo (or an initiative fork) to GitHub
2. In Cursor, start a cloud agent on that repository/branch
3. Skills and rules load automatically from the repo

**Tips for cloud:**

- Add initiative-specific context in `AGENTS.md` (company name, goals, constraints)
- Commit any optional skills you install so the cloud agent can use them
- Deliverables still go to `outputs/` — download or commit as needed

**What cloud agents cannot do:**

- Read skills only installed globally on your laptop
- Run PowerShell scripts unless the agent environment supports it — prefer plain-language prompts

---

## Forking for initiatives

```text
cursor-config-business (base — this repo)
        │
        │  new-initiative.ps1  OR  GitHub Fork  OR  manual copy
        ▼
my-product-gtm-2025/
        ├── Same .cursor/skills + rules
        ├── Custom AGENTS.md (goal, company, timeline)
        ├── outputs/ (initiative deliverables)
        └── Own git remote → cloud agent target
```

Merge improvements **back** into the base repo when you refine rules or add universally useful skills.

---

## Setup on a new machine

```powershell
# 1. Clone
git clone https://github.com/Vinayak-RZ/cursor-config-buisness.git
cd cursor-config-buisness

# 2. Open in Cursor
cursor .

# 3. (Optional) Install optional skills
.\scripts\install-optional-skill.ps1 -Name linkedin-content

# 4. Start chatting — no npm install required for core skills
```

**Requirements:**

- [Cursor](https://cursor.com/) IDE
- Git
- PowerShell (for scripts; optional — you can copy skills manually)
- Node.js + `npx` (only if installing optional catalog skills)

---

## Curating philosophy

This repo contains **44 skills** curated from the **68-skill** [pm-skills marketplace](https://github.com/phuryn/pm-skills) plus 4 custom research skills.

### Included because

- High-frequency PM/GTM workflows (ICP, PRD, discovery, GTM, positioning)
- Frameworks with clear outputs (Lean Canvas, OST, battlecards)
- Custom research skills for lead gen and company intelligence
- `graphify` for knowledge mapping across documents

### Excluded because

| Category | Examples | Reason |
|----------|----------|--------|
| Redundant variants | `brainstorm-ideas-existing`, `identify-assumptions-existing` | `*-new` variants cover startup/discovery cases |
| Legal / toolkit | `draft-nda`, `privacy-policy`, `grammar-check`, `review-resume` | Niche, not core PM/GTM |
| Coding-adjacent | `sql-queries`, `shipping-artifacts`, `intended-vs-implemented` | Belongs in coding config |
| Niche execution | `dummy-dataset`, `retro`, `sprint-plan`, `test-scenarios` | Low frequency for strategist mode |
| Duplicate frameworks | `business-model`, `startup-canvas` | `lean-canvas` + `product-strategy` suffice |

See `skills-manifest.json` → `removed_from_pm_marketplace` for more examples.

---

## Troubleshooting

### Skills not appearing in agent

- **Reload window:** Cursor → Developer: Reload Window
- **New chat:** Start a fresh agent conversation
- **Verify path:** Skills must be at `.cursor/skills/<name>/SKILL.md`

### Agent writes code instead of reports

- `no-code-default.mdc` should always apply — confirm rules are enabled in Cursor Settings → Rules
- Explicitly say: "Markdown report only, no code"

### Wrong skill invoked

- Name the skill explicitly: "Use the `gtm-strategy` skill"
- Check [skill-routing.mdc](.cursor/rules/skill-routing.mdc)

### Cloud agent missing skills

- Ensure skills are **committed and pushed** to the branch the cloud agent uses
- Global `~/.cursor/skills/` does not sync to cloud

### `graphify` fails

- `graphify` may require additional local dependencies — see `.cursor/skills/graphify/SKILL.md`
- Run `/graphify` with a specific path if the default directory is wrong

### Optional skill install fails

- Ensure Node.js and `npx` are installed
- Run the `command` from `skills-manifest.json` manually
- Copy resulting folder from `~/.agents/skills/<name>` into `.cursor/skills/`

---

## Updating skills

### Update pm-skills subset

```bash
# Install latest from marketplace to a temp location, then copy curated names only
npx skills add phuryn/pm-skills --skill create-prd -y --copy
# Copy into .cursor/skills/create-prd and commit
```

### Add a new skill to this repo

1. Obtain `SKILL.md` (from [skills.sh](https://skills.sh/) or author your own)
2. Place in `.cursor/skills/<skill-name>/SKILL.md`
3. Add entry to `skills-manifest.json`
4. Update `skill-routing.mdc` if it needs a routing row
5. Commit and push

### Discover new skills

Use the pre-installed `find-skills` skill or:

```bash
npx skills find "gtm ideal customer"
```

---

## License and sources

| Source | License | Notes |
|--------|---------|-------|
| [phuryn/pm-skills](https://github.com/phuryn/pm-skills) | MIT | Curated subset of 36 skills |
| Custom research skills | Per skill file | lead-research, analyze-industry, company-research, company-technical-research |
| [graphify](https://github.com/) | Per skill file | Knowledge graph pipeline |
| Optional catalog skills | Per upstream repo | Install on demand |

This config repository itself: use and fork freely for your own Cursor setups.

---

## Quick reference

| I want to… | Do this |
|------------|---------|
| Do PM/GTM work locally | Open this repo in Cursor |
| Start a focused initiative | `.\scripts\new-initiative.ps1 -Name "MyInitiative"` |
| Run on cloud | Push repo/fork to GitHub → cloud agent on that repo |
| Find leads | "Use lead-research-assistant to find companies matching…" |
| Define ICP | "Use ideal-customer-profile for…" |
| Write a PRD | "Use create-prd for…" |
| Add LinkedIn skill | `.\scripts\install-optional-skill.ps1 -Name linkedin-content` |
| Code something | Switch to a coding repo with `cursor-config-coding` |
