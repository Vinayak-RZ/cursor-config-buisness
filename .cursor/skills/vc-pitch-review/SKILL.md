---
name: vc-pitch-review
description: >-
  Skeptical VC-style review of pitch materials: load-bearing claims, missing proofs, execution velocity,
  outcome economics vs fund fit (when constraints known), vanity TAM vs capture path, and segment-fit—without
  predicting investment outcomes. Use when refining deck, narrative, or rehearsal. Pairs with strategy-red-team
  (assumptions) and venture-thesis-builder; differs by focusing on pitch reception and likely investor themes.
---

# VC Pitch Review (Skeptical Read)

## Purpose

Simulate a **disciplined investor read**: what is convincing, what smells like hand-waving, what themes likely surface in Q&A—**without** inventing fund mandates, exact questions, or success odds.

**Label likely investor pressure as conditional** (“many partners will dig into …”) **not** “you will be asked …” unless tied to **this deck’s missing piece**.

## Hard rules

- No invented investor quotes, portfolio parallels, or “VCs always …”.
- No success probability or fund-return math unless user supplies context and asks—then label **illustrative**, not universal.
- Flag **generic language** and **unverifiable superlatives** (per YC [how to pitch](https://www.ycombinator.com/blog/how-to-pitch-your-company)).
- **Do not treat Sequoia section order** ([Writing a Business Plan](https://sequoiacap.com/article/writing-a-business-plan)) as mandatory—**strongest proof often belongs earlier** (many teams lead with traction; backbone is a **reference**, not a ritual).

## Inputs

1. Deck outline, copy, or narrative (paste).
2. Stage + geography + investor target if known.
3. What the user believes their **strongest proof** is—verify it’s actually on-slide / early in flow.
4. **Time working + shipped artifacts** (YC progress question—[source](https://www.ycombinator.com/blog/how-to-pitch-your-company)).
5. Optional: fund size, check, ownership targets—for **fit sanity** only.

## Review dimensions

Score **weak / ok / strong** with evidence tied to **this doc**:

| Dimension | What to inspect |
|-----------|-----------------|
| Clarity | Can a stranger state what you sell in one sentence after slide 1? (YC, Sequoia) |
| **Proof placement** | Is the **strongest** evidence **early enough**? Or buried after long setup? |
| **Progress / velocity** | Concrete ratio of **work shipped to time working**; product + customers before fundraising theater ([YC Q3](https://www.ycombinator.com/blog/how-to-pitch-your-company)) — flag if absent. |
| Why now | Specific forces, not vibes ([Sequoia plan](https://sequoiacap.com/article/writing-a-business-plan)) |
| **Outcome & fund fit** | If user gave fund constraints: does **exit × ownership** plausibly connect to **moving the needle**, or is ambition undersized / delusional? Use **labels**, not fake precision; cite Dixon 2015 only as **historical VC concentration**, not prediction ([a16z post](https://a16z.com/performance-data-and-the-babe-ruth-effect-in-venture-capital/)). |
| **Vanity TAM vs capture** | Huge top-down market with no **wedge → expansion → capture** path → flag; credible scale = logic + evidence, not font size. |
| Market | Bottom-up discipline or honest gap (`market-sizing`) |
| Differentiation vs alternatives | Named competitors + inertia |
| Model | Plausible path to margin / distribution (`business-model`) |
| GTM | Repeatable, not heroics (`gtm-strategy`) |
| Team | Relevant edge only |
| Risks | Self-awareness and mitigation tests |

## Outputs

```markdown
## Skeptical read — [company]

### Verdict (conditional)
[What could earn a second look vs what blocks—conditional on stated facts]

### Likely investor themes (not exact questions)
For each: why it tends to come up · what good answer contains · gap in current deck

### Execution / velocity check (YC)
- Time working: …
- Shipped / proof: …
- Risk: story over-rotates to fundraising vs build

### Outcome & fund fit (if inputs given)
[illustration OR “non-VC might fit better” honesty]

### Claim hygiene table
| Claim on page | Evidence shown | Risk if pressed |

### Generic / weak lines
...

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

Treat published essays as **pattern descriptions**, not guarantees:

- [YC — How to Pitch Your Company](https://www.ycombinator.com/blog/how-to-pitch-your-company) (progress / velocity; clarity)
- [Sequoia — Writing a Business Plan](https://sequoiacap.com/article/writing-a-business-plan)
- [Chris Dixon / a16z — historical return concentration](https://a16z.com/performance-data-and-the-babe-ruth-effect-in-venture-capital/) (8 Jun 2015) — **historical**, not forward-looking
- [Point Nine — why deck-first](https://writing.pointnine.com/p/why-we-politely-ask-for-a-deck-first)
