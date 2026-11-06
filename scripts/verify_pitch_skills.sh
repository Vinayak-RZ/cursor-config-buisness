#!/usr/bin/env bash
# Structural smoke checks for pitch skills in this repo. Not a narrative quality test.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SKILLS_DIR="$ROOT/.cursor/skills"
PITCH_SKILLS=(
  venture-thesis-builder
  vc-investor-narrative
  pitch-deck-architect
  pitch-copy-and-slides
  live-pitch-script
  vc-pitch-review
  hackathon-pitch-demo
  pitch-workflow-router
)

failures=0
declare -A seen_names

banner() { printf '\n=== %s ===\n' "$*"; }

check_file() {
  local skill="$1"
  local f="$SKILLS_DIR/$skill/SKILL.md"
  if [[ ! -f "$f" ]]; then
    echo "ERROR: missing $f"
    failures=$((failures + 1))
    return
  fi

  if ! head -n 5 "$f" | grep -q '^---$'; then
    echo "ERROR: $skill: expected YAML frontmatter opening ---"
    failures=$((failures + 1))
  fi

  local name
  name=$(grep -E '^name:' "$f" | head -n1 | sed -E 's/^name:[[:space:]]*//; s/^["'"'"']|["'"'"']$//g' || true)
  if [[ -z "${name:-}" ]]; then
    echo "ERROR: $skill: missing name: in frontmatter"
    failures=$((failures + 1))
  elif [[ "$name" != "$skill" ]]; then
    echo "ERROR: $skill: frontmatter name '$name' != folder '$skill'"
    failures=$((failures + 1))
  fi

  if [[ -n "${seen_names[$name]:-}" && "${seen_names[$name]}" != "$skill" ]]; then
    echo "ERROR: duplicate skill name '$name' in ${seen_names[$name]} and $skill"
    failures=$((failures + 1))
  fi
  seen_names["$name"]="$skill"

  if ! grep -qE '^description:' "$f"; then
    echo "ERROR: $skill: missing description: in frontmatter"
    failures=$((failures + 1))
  fi

}

banner "Pitch skill structural verification"
for s in "${PITCH_SKILLS[@]}"; do
  check_file "$s"
done

if ! [[ -f "$ROOT/docs/PITCH_SKILL_LIBRARY.md" ]]; then
  echo "ERROR: missing docs/PITCH_SKILL_LIBRARY.md"
  failures=$((failures + 1))
fi

if ! [[ -f "$ROOT/docs/pitch_eval_fixtures.yaml" ]]; then
  echo "ERROR: missing docs/pitch_eval_fixtures.yaml"
  failures=$((failures + 1))
fi

banner "YAML fixtures parse"
if command -v python3 >/dev/null 2>&1; then
  if python3 -c "import yaml; yaml.safe_load(open('$ROOT/docs/pitch_eval_fixtures.yaml'))" 2>/dev/null; then
    echo "OK: pitch_eval_fixtures.yaml parses (PyYAML)"
    banner "Fixture arithmetic (venture_scale_sensitivity)"
    ROOT="$ROOT" python3 <<'PY' || failures=$((failures + 1))
import os
import yaml
from pathlib import Path
root = Path(os.environ["ROOT"])
data = yaml.safe_load((root / "docs/pitch_eval_fixtures.yaml").read_text())
fx = data["fixtures"]["venture_scale_sensitivity"]
fd = fx["founder_supplied_facts"]
entry = fd["ownership_entry_pct"] / 100.0
dilution = fd["cumulative_dilution_pct"] / 100.0
own_exit = entry * (1.0 - dilution)  # multiplicative per user formula for single aggregate dilution
assert abs(own_exit - 0.05) < 1e-9, own_exit
vals = fd["exit_equity_values_usd"]
exp_proc = [own_exit * v for v in vals]
assert exp_proc[0] == 50_000_000 and exp_proc[1] == 200_000_000, exp_proc
fund = fd["fund_size_usd"]
tf = [p / fund for p in exp_proc]
assert abs(tf[0] - 0.25) < 1e-9 and abs(tf[1] - 1.0) < 1e-9, tf
print("OK: venture_scale_sensitivity arithmetic matches fixture expected_precompute_arithmetic")
PY
  else
    echo "NOTE: pitch_eval_fixtures.yaml not parsed (install PyYAML or fix YAML) — skipped"
  fi
else
  echo "NOTE: python3 missing — skip YAML parse"
fi

# Optional: heuristic scan for generic grandiosity in pitch SKILL.md files
banner "Heuristic scan (generic grandiosity)"
grandiosity_hits=0
for s in "${PITCH_SKILLS[@]}"; do
  f="$SKILLS_DIR/$s/SKILL.md"
  if [[ -f "$f" ]] && grep -EIn '\b(revolutioni[sz]e|world[- ]class|game[- ]changing|synerg(y|ies)|paradigm shift)\b' "$f" >/dev/null 2>&1; then
    echo "NOTE: $s: possible grandiosity token — review lines:"
    grep -EIn '\b(revolutioni[sz]e|world[- ]class|game[- ]changing|synerg(y|ies)|paradigm shift)\b' "$f" || true
    grandiosity_hits=$((grandiosity_hits + 1))
  fi
done
if [[ "$grandiosity_hits" -eq 0 ]]; then
  echo "No grandiosity-pattern hits in pitch skills."
fi

if [[ "$failures" -ne 0 ]]; then
  echo ""
  echo "FAILED: $failures error(s)"
  exit 1
fi

echo "OK: pitch skills structural check passed (${#PITCH_SKILLS[@]} skills)."
