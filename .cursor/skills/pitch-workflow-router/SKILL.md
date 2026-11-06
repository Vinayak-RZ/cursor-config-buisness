---
name: pitch-workflow-router
description: >-
  Route pitch tasks to the right in-repo skill: venture thesis, deck structure, copy, VC narrative,
  live script, skeptical review, or hackathon demo—without auto-chaining long workflows. Use when the user
  says "help me pitch" without specifying format, or to avoid overlapping skills. Points to pitch-library
  docs and sibling skills explicitly.
---

# Pitch Workflow Router

## Purpose

Pick **one primary skill** (maybe two) for this session. **No automatic long chains** unless the user asks.

## Quick routing

| User goal | Primary skill | Common second |
|-----------|----------------|---------------|
| “Are we venture-scale / what’s the big story?” | `venture-thesis-builder` | `market-sizing` |
| “Slide order, emailed vs live” | `pitch-deck-architect` | `pitch-copy-and-slides` |
| “Headlines & talk track sound weak” | `pitch-copy-and-slides` | `live-pitch-script` |
| “What will investors ask / objections” | `vc-investor-narrative` | `strategy-red-team` |
| “Poke holes like a VC” | `vc-pitch-review` | `strategy-red-team` |
| “Demo Day / timed talk” | `live-pitch-script` | `pitch-copy-and-slides` |
| “Hackathon / MLH / Devpost” | `hackathon-pitch-demo` | — |
| “Break our assumptions” (full business, not pitch-only) | `strategy-red-team` | — |
| Unit economics & capture | `business-model` | `monetization-strategy` |
| TAM / SAM / SOM | `market-sizing` | — |

## Anti-overlap rules

- **Thesis vs deck:** thesis = *why big and true*; deck = *slide flow*—run thesis before heavy deck work when ambition unclear.
- **Copy vs architecture:** architect fixes order and slide jobs; copy tightens words—**not** vice versa.
- **VC review vs red-team:** VC review = *investor reception*; red-team = *plan assumptions*—combine only if user asks.

## Mandatory honesty

- If facts missing, say so and name the skill that still helps vs blocked.

## Docs

Full citations, provenance, tests: [docs/PITCH_SKILL_LIBRARY.md](../../../docs/PITCH_SKILL_LIBRARY.md)

## Save as

Usually **no standalone file**—if user wants record: `outputs/pitch_workflow_routing_notes.md`
