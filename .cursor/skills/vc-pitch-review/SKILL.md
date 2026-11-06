---
name: vc-pitch-review
description: >-
  Skeptical VC-style review of pitch materials: load-bearing claims, missing proofs, execution velocity,
  ambition vs credibility (two-axis), outcome economics vs fund fit, vanity TAM vs capture, proof-type hygiene—without
  predicting investment outcomes. Use when refining deck, narrative, or rehearsal. Pairs with strategy-red-team
  (assumptions) and venture-thesis-builder; differs by focusing on pitch reception and likely investor themes.
---

# VC Pitch Review (Skeptical Read)

## Purpose

Simulate a **disciplined investor read**: what is convincing, what smells like hand-waving, what themes likely surface in Q&A—**without** inventing fund mandates, exact questions, or success odds.

**Label likely investor pressure as conditional** (“many partners will dig into …”) **not** “you will be asked …” unless tied to **this deck’s missing piece**.

## Hard rules

- No invented investor quotes, portfolio parallels, or “VCs always …”.
- Do not assign **fake probabilities** to exits.
- Flag **generic language** and **unverifiable superlatives** (per YC [how to pitch](https://www.ycombinator.com/blog/how-to-pitch-your-company)).
- **Do not treat Sequoia section order** ([Writing a Business Plan](https://sequoiacap.com/article/writing-a-business-plan)) as mandatory—**strongest proof often belongs earlier** (backbone is a **reference**, not a ritual).
- **Early-stage with no revenue** is **not** an automatic fail — judge **honesty + path to proof**, not buzzwords.
- **Claim hygiene table** — use when the deck makes **many overlapping quantitative claims** or obvious inconsistencies; **skip** for light `pitch-copy-and-slides` passes unless the user asks for a full review.

## Inputs

1. Deck outline, copy, or narrative (paste).
2. Stage + geography + investor target if known.
3. What the user believes their **strongest proof** is—verify it’s actually on-slide / early in flow.
4. **Time working + shipped artifacts** (YC progress question—[source](https://www.ycombinator.com/blog/how-to-pitch-your-company)).
5. Optional: fund size, check, ownership targets—for **fit sanity** or **user-requested [FICTIONAL SENSITIVITY]** (see below).

## Ambition (explicit)

Push for **four bullets** (user facts; mark gaps):

1. **Outcome / scale hypothesis** — what large result could *hypothetically* be true (no invented numbers).
2. **Expansion / capture path** — wedge → next jobs/customers → how you take share margin (**see `venture-thesis-builder` bridge table**).
3. **What funding milestones would underwrite** — only if fundraising context; else `[N/A]`.
4. **Proof/evidence gap** — what is missing vs claimed.

## Proof-type hygiene

Distinguish clearly (labels matter):

| Type | What it means | Investor risk if conflated |
|------|---------------|---------------------------|
| Simulation / lab | Model, benchmark, demo data | Overstated as production proof |
| Pilot | Controlled deployment | Not same as paid renewal |
| Contract / PO | Signed commercial intent | Not same as revenue recognized |
| Delivered result | Measured outcome in production | Strongest — flag if slide mixes weaker types |

**Generic clear-but-small** stories can still fail the **ambition / capture** bar — **avoiding hype** is not the same as **credible large outcome**.

## Review dimensions

Score **weak / ok / strong** with evidence tied to **this doc**:

| Dimension | What to inspect |
|-----------|-----------------|
| Clarity | Can a stranger state what you sell in one sentence after slide 1? (YC, Sequoia) |
| **Proof placement** | Is the **strongest** evidence **early enough**? |
| **Progress / velocity** | Work shipped vs time; product + customers before fundraising theater ([YC Q3](https://www.ycombinator.com/blog/how-to-pitch-your-company)) |
| Why now | Specific forces, not vibes ([Sequoia plan](https://sequoiacap.com/article/writing-a-business-plan)) |
| **Outcome & fund fit** | If user gave fund constraints OR asks for sensitivity: does **exit × ownership** connect to **moving the needle**, or ambition unsupported / credibility weak? |
| **Vanity TAM vs capture** | Huge top-down with no wedge → expansion **bridge** → flag |
| Market | Bottom-up discipline or honest gap (`market-sizing`) |
| Differentiation | Named competitors + inertia |
| Model | Plausible path (`business-model`) |
| GTM | Repeatable (`gtm-strategy`) |
| Team | Relevant edge only |
| Risks | Self-awareness |

## Two-axis verdict (required)

Place the company (conditional on materials) on:

**Axis A — Ambition**

- **Understated but concrete** — large outcome under-explained though evidence hints.
- **Large hypothesis, credible structure** — wedge-to-destination bridge is falsifiable.
- **Unsupported vastness** — huge words, thin mechanism / proof.

**Axis B — Credibility**

- **Supported / plausible** — proof matches claims; types labeled.
- **Untested but honest** — early, gaps explicit.
- **Contradicted or sloppy** — numbers disagree across slides; pilot called revenue; etc.

A deck can be **clear and modest** and still sit **“large hypothesis + untested”** — that is **not** the same as “pass because no buzzwords.”

## Optional [FICTIONAL SENSITIVITY] (only if user explicitly requests)

**Do not** present as **this investor’s** requirement. Label every number **[FICTIONAL]** or **[USER-ASSUMED]**.

Broad ownership after dilution (multiplicative sketch, not cap-table truth):

**ownership_at_exit ≈ ownership_at_entry × Π(1 − dilution_i)** for each later round *i* (user-supplied or labeled toy inputs).

**Worked example (arithmetic check — illustrative):** $200M fund, **10%** entry ownership, **50% cumulative dilution** from later rounds (net **5%** at exit, no follow-on for simplicity), exit equity value **$1B** → proceeds **$50M gross** ≈ **0.25×** fund; **$4B** exit → **$200M** ≈ **1×** fund. **Ignores** preferences, pro-rata, fees, timing, non-equity — say so.

This block **never** reverse-engineers a story to “fit” a fund.

## Outputs

```markdown
## Skeptical read — [company]

### Ambition (four bullets)
...

### Two-axis verdict
- Axis A (ambition): …
- Axis B (credibility): …
- One-line synthesis: …

### Likely investor themes (not exact questions)
...

### Execution / velocity check (YC)
...

### Outcome & fund fit
[real constraints OR [FICTIONAL SENSITIVITY] if requested — never conflated]

### Proof-type map
| Slide claim | Labeled type | mismatch? |

### Claim hygiene table (if needed — heavy decks only)
...

### Generic / weak lines
...

### Suggested next edits (priority order)
...

### When to invoke other skills
- Deep assumption tests → `strategy-red-team`
- Slide order / flow → `pitch-deck-architect`
- Headline rewrite → `pitch-copy-and-slides`
```

## Save as

`outputs/{slug}_VC_Pitch_Review.md`

## Sources (evaluation framing)

Treat published essays as **pattern descriptions**, not guarantees:

- [YC — How to Pitch Your Company](https://www.ycombinator.com/blog/how-to-pitch-your-company)
- [Sequoia — Writing a Business Plan](https://sequoiacap.com/article/writing-a-business-plan)
- [Chris Dixon / a16z — historical return concentration](https://a16z.com/performance-data-and-the-babe-ruth-effect-in-venture-capital/) (8 Jun 2015) — historical sample
- [Point Nine — why deck-first](https://writing.pointnine.com/p/why-we-politely-ask-for-a-deck-first)
