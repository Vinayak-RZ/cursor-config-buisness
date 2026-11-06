---
name: vc-pitch-review
description: >-
  Skeptical VC-style review of pitch materials: load-bearing claims, missing proofs, credibility gaps,
  and segment-fit—without pretending to predict investment outcomes. Use when refining deck, narrative,
  or rehearsal. Pairs with strategy-red-team (assumptions) and venture-thesis-builder; differs by focusing
  on pitch reception and investor questions rather than full business red-team.
---

# VC Pitch Review (Skeptical Read)

## Purpose

Simulate a **disciplined investor read**: what is convincing, what smells like hand-waving, what question will hit first—**without** inventing fund mandates or claiming statistical odds of success.

## Hard rules

- No invented investor quotes, portfolio parallels, or “VCs always …”.
- No success probability or fund-return math unless user supplies full fund context and asks—then label **illustrative**, not universal.
- Flag **generic language** and **unverifiable superlatives** (per YC anti-buzz guidance — [how to pitch](https://www.ycombinator.com/blog/how-to-pitch-your-company)).

## Inputs

1. Deck outline, copy, or narrative (paste).
2. Stage + geography + investor target if known.
3. What the user believes their **strongest proof** is—verify it’s actually on-slide.

## Review dimensions

Score **weak / ok / strong** with evidence tied to **this doc** (not generic startups):

| Dimension | What to inspect |
|-----------|-----------------|
| Clarity | Can a stranger state what you sell in one sentence after slide 1? (YC, Sequoia) |
| Why now | Specific forces, not vibes ([Sequoia plan](https://sequoiacap.com/article/writing-a-business-plan)) |
| Market | Bottom-up discipline or honest gap (`market-sizing`) |
| Differentiation vs alternatives | Named competitors + inertia; “secret sauce” with proof |
| Model | Plausible path to margin / distribution (`business-model`) |
| GTM | Repeatable, not heroics (`gtm-strategy`) |
| Team | Relevant edge only |
| Risks | Self-awareness and mitigation tests |

## Outputs

```markdown
## Skeptical read — [company]

### Verdict (conditional)
[What could earn a second look vs what blocks—conditional on stated facts]

### Top 5 questions you will get first
For each: why it arises · what good answer contains · gap in current deck

### Claim hygiene table
| Claim on page | Evidence shown | Risk if pressed |

### Generic / weak lines
[quote or paraphrase] — suggested fix direction (no fabrication)

### Suggested next edits (priority order)
1. ...
2. ...

### When to invoke other skills
- Deep assumption tests → `strategy-red-team`
- Slide order / flow → `pitch-deck-architect`
- Headline rewrite → `pitch-copy-and-slides`
```

## Save as

`outputs/{slug}_VC_Pitch_Review.md`

## Sources (evaluation framing)

Investor behavior varies; treat published essays as **pattern descriptions**, not guarantees:

- [Sequoia — Writing a Business Plan](https://sequoiacap.com/article/writing-a-business-plan)
- [Point Nine — why deck-first](https://writing.pointnine.com/p/why-we-politely-ask-for-a-deck-first) (process heuristic)
- [YC — pitch clarity](https://www.ycombinator.com/blog/how-to-pitch-your-company)
