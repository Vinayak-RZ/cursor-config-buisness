"""Patch manifest, routing, docs after SKILL.md is copied."""
import json
import subprocess
from pathlib import Path

REPO = Path(__file__).resolve().parent
SKILL_DEST = REPO / ".cursor" / "skills" / "direct-response-copy-engine" / "SKILL.md"
RESULT = REPO / "_integrate-result.json"


def run(cmd):
    p = subprocess.run(cmd, cwd=REPO, capture_output=True, text=True)
    return p.returncode, p.stdout, p.stderr


if not SKILL_DEST.is_file():
    raise SystemExit(f"Missing skill: {SKILL_DEST}")

lines = len(SKILL_DEST.read_text(encoding="utf-8").splitlines())

manifest_path = REPO / "skills-manifest.json"
manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
manifest["version"] = 2
manifest["description"] = (
    "Curated business skills — 45 pre-installed (pm-skills + research + direct-response copy). "
    "Optional skills install on demand."
)
manifest["preinstalled"]["count"] = 45
manifest["preinstalled"]["categories"]["copywriting"] = ["direct-response-copy-engine"]
manifest_path.write_text(json.dumps(manifest, indent=2) + "\n", encoding="utf-8")

routing_path = REPO / ".cursor" / "rules" / "skill-routing.mdc"
routing = routing_path.read_text(encoding="utf-8")
rows = (
    "| Direct-response ad copy, hooks, captions, landing page copy | `direct-response-copy-engine` |\n"
    "| Audit ad copy / pressure-test draft | `direct-response-copy-engine` (Audit mode) |\n"
    "| Short-form video script / carousel ad copy | `direct-response-copy-engine` |\n"
)
if "direct-response-copy-engine" not in routing:
    routing = routing.replace(
        "| Map knowledge from docs/files | `graphify` |\n",
        rows + "| Map knowledge from docs/files | `graphify` |\n",
    )
    routing_path.write_text(routing, encoding="utf-8")

agents_path = REPO / "AGENTS.md"
agents = agents_path.read_text(encoding="utf-8")
if "direct-response-copy-engine" not in agents:
    block = """
## Copywriting

| Skill | Use |
|-------|-----|
| `direct-response-copy-engine` | Generate or audit direct-response ad copy (video, statics, carousels, landing pages, captions) |

Guide: [docs/COPYWRITING.md](docs/COPYWRITING.md)
"""
    agents = agents.replace("## Optional skills", block + "\n## Optional skills")
    agents_path.write_text(agents, encoding="utf-8")

(REPO / "docs").mkdir(exist_ok=True)
(REPO / "docs" / "COPYWRITING.md").write_text(
    """# Direct-response copywriting

Skill: **`direct-response-copy-engine`**

## What it is

- **Eugene Schwartz** — awareness, sophistication, channel desire
- **Michael Masterson** — Rule of One, six Great Leads
- **Harry Dry** — visualize, falsify, nobody else, two-second gate

| Mode | Use |
|------|-----|
| **Generate** | New ad from offer + audience + real proof |
| **Audit** | Score existing draft; fixes + strongest rewrite |

Never invents your facts or proof.

## vs other skills

| Need | Skill |
|------|-------|
| Ad hooks, scripts, CTAs | `direct-response-copy-engine` |
| Positioning / category | `positioning-ideas`, `value-proposition` |
| GTM plan | `gtm-strategy` |
| LinkedIn posts (optional) | `linkedin-content` |

## Prompts

**Generate:** `Use direct-response-copy-engine Generate mode. [offer, reader, proof, format]. outputs/copy/`

**Audit:** `Audit this ad with direct-response-copy-engine. Flag failing lines. One hook rewrite with my proof only.`

## Outputs

`outputs/copy/`
""",
    encoding="utf-8",
)

readme_path = REPO / "README.md"
readme = readme_path.read_text(encoding="utf-8")
for old, new in [("44 pre-installed", "45 pre-installed"), ("**44**", "**45**"), ("| 44 |", "| 45 |")]:
    readme = readme.replace(old, new)
if "direct-response-copy-engine" not in readme:
    readme = readme.replace(
        "### Custom research (4)",
        "### Copywriting (1)\n\n| Skill | Purpose |\n|-------|--------|\n| `direct-response-copy-engine` | Generate/audit direct-response ad copy |\n\n[docs/COPYWRITING.md](docs/COPYWRITING.md)\n\n### Custom research (4)",
    )
    readme = readme.replace(
        "## Example prompts",
        "## Example prompts\n\n### Direct-response ad copy\n\n```text\nUse direct-response-copy-engine Generate mode. Problem-aware, tired market.\n30s video script + 3 hooks. Real proof only. outputs/copy/\n```\n",
    )
    readme_path.write_text(readme, encoding="utf-8")

run(["git", "add", "-A"])
code, out, err = run(["git", "commit", "-m", "feat(copy): add direct-response-copy-engine skill"])
commit_hash = ""
if code == 0:
    _, log, _ = run(["git", "log", "-1", "--format=%H"])
    commit_hash = log.strip()
    run(["git", "push", "origin", "main"])
else:
    err = (err or out).strip()

result = {
    "skill_lines": lines,
    "commit_hash": commit_hash,
    "commit_ok": code == 0,
    "detail": err if code != 0 else "pushed",
}
RESULT.write_text(json.dumps(result, indent=2), encoding="utf-8")
print(json.dumps(result))
