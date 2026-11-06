---
name: hackathon-pitch-demo
description: >-
  Prepare hackathon submission, demo script, and pitch for events judged on builds (e.g. MLH criteria:
  technology, design, completion, learning)—not VC fundraise. Align copy to organiser rubric (MLH, Devpost,
  or event-specific); emphasise working demo and honesty about scope. Use when hackathon rules differ from
  investor pitch norms; pairs with pitch-deck-architect only if slides are required.
---

# Hackathon Pitch & Demo

## Purpose

Win on **what organizers say they score**—usually the **build and demo**—not on a fictional TAM.

**Fact — MLH standard rules** list judging criteria for digital/MLH-category events as **Technology, Design, Completion, Learning** (equal weight); judges may use gut feel; **pitch quality is explicitly not** what MLH standard criteria score ([standard-hackathon-rules.md](https://github.com/MLH/mlh-policies/blob/main/standard-hackathon-rules.md)). MLH also states **demos strongly encouraged**; **pitches discouraged** relative to showing the thing—read the current file for exact wording.

**Fact — Devpost** describes typical criteria examples (idea quality, implementation, potential impact) and how hosts configure weights—**check the specific event page** ([judging help](https://help.devpost.com/article/64-judging-public-voting)).

## Hard rules

- Do not force VC fundraise slides if the event does not ask—mention future direction **briefly** if relevant.
- Never claim finished product if only a mockup—label **MVP / partial / simulated**.
- If rubric unknown: ask user for URL or paste; else use **generic demo-first** structure and flag uncertainty.

## Inputs

1. Event name + **rubric link or paste** (required when available).
2. Tech stack, what **actually runs**, known bugs.
3. Team learning goals (MLH rewards **learning** explicitly).
4. Time limit for demo/pitch.

## Demo-first structure (default)

1. **30 seconds — what it does** (working path on screen).
2. **Why it’s hard / interesting** — maps to **Technology** (MLH).
3. **UX / design choices** — maps to **Design** (MLH).
4. **What worked / didn’t — honesty** — **Completion** (MLH).
5. **What we learned** — **Learning** (MLH).
6. Optional 10–15s future — proportionate to time.

If event rubric differs (Devpost custom criteria), **rewrite section labels** to match host wording.

## Output structure

```markdown
## Hackathon plan — [team / project]

### Event rubric summary
(source URL, date checked)

### Demo script ([time] min)
step-by-step on-screen actions + backup if offline fails

### Talking points mapped to criteria
| Criterion | Point to show | Evidence in build |

### Submission checklist (title, video, repo, etc.)
[pulled from event rules — user to confirm]

### Honest limitations
what is mocked, not wired, or flaky

### When *not* to use this skill
VC fundraising meeting → use `pitch-deck-architect` + `venture-thesis-builder`
```

## Cross-skills

- `pitch-copy-and-slides` — trim wording only if presentation is scored.
- `vc-pitch-review` — generally wrong lens; use only if hybrid event requires investor angles.

## Save as

`outputs/{slug}_Hackathon_Pitch.md`

## Sources

- MLH — [standard-hackathon-rules.md](https://github.com/MLH/mlh-policies/blob/main/standard-hackathon-rules.md) (judging criteria; demos vs pitches).
- Devpost — [Judging & public voting](https://help.devpost.com/article/64-judging-public-voting) (host-defined criteria).
