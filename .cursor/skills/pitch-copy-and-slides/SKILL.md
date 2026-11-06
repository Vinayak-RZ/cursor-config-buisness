---
name: pitch-copy-and-slides
description: >-
  Draft or rewrite pitch headlines, slide copy, and talk-track cues in the founder’s voice—clear,
  concrete, falsifiable—without inventing proof. Use for VC/accelerator decks after structure exists
  (pitch-deck-architect) or for quick headline rewrites. Complements direct-response-copy-engine (ads
  and landing pages, not investor decks). Outputs Markdown only.
---

# Pitch Copy & Slides (Headlines + Talk Track)

## Purpose

Turn **verified facts** into **slide-ready language** and **spoken cues**: short lines that survive skimming and Q&A. The job is clarity and earned credibility—not category poetry.

Differentiate from `direct-response-copy-engine`: that skill is for **paid media / landing pages**; this skill is for **investor or stakeholder pitches**.

## Hard rules

- Never invent metrics, logos, customers, pilots, awards, or press.
- No **grandiose filler** lines a competitor could sign (“we transform everything…”)—press user for concrete nouns/verbs (YC: avoid meaningless buzz — [how to pitch](https://www.ycombinator.com/blog/how-to-pitch-your-company)).
- Keep **one job per slide** (YC: simple, legible, obvious — [deck design](https://www.ycombinator.com/blog/how-to-design-a-better-pitch-deck)).
- Mark gaps: `[NEEDS INPUT]`.

## When to use

- User has outline or rough slides and needs **shorter, clearer** lines.
- User has long paragraphs and needs **talk track + slide headline** separation.

## Inputs

1. Deck outline or paste of current bullets (per slide).
2. Audience (VC, angel, hackathon—if hackathon use `hackathon-pitch-demo` for scoring emphasis).
3. Voice preference if any (plain / narrative / data-forward)—default **plain**.

## Copy doctrine (pitch-specific)

| Principle | Meaning |
|-----------|---------|
| Plain beats clever | Reader must know **what you do** in sentence one (YC Demo Day guide — [introduction](https://www.ycombinator.com/blog/guide-to-demo-day-pitches)). |
| Concrete nouns | Who buys, what they do today, what breaks. |
| Falsifiable claims | Every claim ties to proof the user can provide. |
| Wedge first | Then expand; don’t open with TAM unless it’s already crisp (Sequoia still expects **market potential**—show when it earns its place — [plan](https://sequoiacap.com/article/writing-a-business-plan)). |

## Process

1. **Slide audit** — For each slide: one-sentence **job**; kill duplicate ideas; flag overloaded slides.
2. **Headline** — **Heuristic:** ~6–12 words; must state the single idea (not a universal investor rule—brevity for skimmability).
3. **Bullets** — **Heuristic:** 3 max; each a fact or claim with implied proof source (user-named).
4. **Talk track** — Spoken cue per slide (duration varies by speaker and room—avoid **mandatory** second-level timing).
5. **Q&A bait** — list 2 questions this slide may trigger; answer outline from user facts.
6. **Grandiose scan** — list lines that fail “only we could say this” — rewrite or remove.

## Output structure

```markdown
## Pitch copy — [company]

### Slide-by-slide
#### Slide N — [title]
- **Headline:**
- **Bullets:** (max 3)
- **Speaker cue:**
- **Proof referenced:** (source: user doc / deck / study — not invented)
- **Risks / questions:**

### Lines removed or softened (why)
...

### [NEEDS INPUT] list
...
```

## Cross-skills

| Need | Skill |
|------|--------|
| Deck order / emailed vs live | `pitch-deck-architect` |
| Ambition + path to scale | `venture-thesis-builder` |
| Skeptical feedback | `vc-pitch-review` |
| Ad / performance copy | `direct-response-copy-engine` |

## Save as

`outputs/{slug}_Pitch_Copy.md`

## Sources

- [YC — How to Pitch Your Company](https://www.ycombinator.com/blog/how-to-pitch-your-company) (clarity, email test).
- [YC — How to Design a Better Pitch Deck](https://www.ycombinator.com/blog/how-to-design-a-better-pitch-deck) (one idea per slide).
- [Sequoia — Writing a Business Plan](https://sequoiacap.com/article/writing-a-business-plan) (section intent).
