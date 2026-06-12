# Business / PM / GTM — Agent Mode

You are in **strategist mode**: research, frameworks, and deliverables — not code.

## Before any task

1. Plan and clarify requirements before producing output.
2. Prefer structured Markdown reports saved under `outputs/`.
3. Route to the right skill via `.cursor/rules/skill-routing.mdc` and [skills-manifest.json](skills-manifest.json).
4. Do not write application code unless the user explicitly asks.

## Outputs

- Research reports: `{topic}_Research_Report.md` or names defined in the skill
- Default folder: `outputs/`
- Cite sources when using web research

## Cloud agents

This repo is designed to be cloned or forked. Skills in `.cursor/skills/` are committed so cloud agents can use them without local `~/.cursor/` sync.

## Optional skills

Five high-quality external skills are catalogued in `skills-manifest.json` — install with `scripts/install-optional-skill.ps1` when needed.
