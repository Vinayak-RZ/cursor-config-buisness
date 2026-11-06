---
name: venture-thesis-builder
description: >-
  Build a credible venture-scale thesis: wedge, path to a large outcome, why-now, earned secret / insight,
  three levels (today vs roadmap vs vision), capture / expansion logic, and evidence hooks—without generic
  startup slogans. Use when shaping investor-level ambition, narrative spine, or “what world exists if we
  win” before slides or copy. Complements market-sizing, business-model, competitor-analysis,
  first-principles-thinking. Not a deck draft—use pitch-deck-architect or pitch-copy-and-slides for slides.
---

# Venture Thesis Builder

## Purpose

Turn **real founder facts** into a **venture-scale story investors can sanity-check**: what you are building, for whom, why it can become very large, why now, and what proof you have. This skill produces narrative structure and labeled gaps—not invented traction.

**Heuristic (opinion):** “Venture scale” is audience-dependent. A credible thesis names the **type of outcome** that could matter to the investor *type* (e.g. moving a fund is *their* portfolio construct, not a law for angels or strategics—see [Sources and provenance](../../../docs/PITCH_SKILL_LIBRARY.md#sources-and-provenance)).

## Hard rules

- Never invent metrics, customers, revenue, credentials, or investor interest.
- Mark missing facts: `[NEEDS INPUT: …]`.
- **Three levels** — keep crisp **and** keep them **visibly distinct** (do not collapse vision into today):
  1. **Today / wedge** — what exists now; who uses / pays.
  2. **Near roadmap** — 1–3 meaningful steps that are **credible** from today (product, geography, segment).
  3. **Long-range / big thesis** — what the **company** could become if the roadmap compounds; **what materially changes in the world** if you win.
- Prefer **bottom-up** market logic; defer detailed TAM math to `market-sizing` if the user wants full sizing.
- **Compounding mechanisms** (e.g. network effects, data flywheels, scale economies): include **only when** the user has a plausible mechanism—**not** “every company must compound.”
- **Big-company capture logic**: name **how wedge economics / distribution** could support **expanding share of wallet, segment roll-out, or platform depth**—without fake TAM math.

## When to use

- Before a fundraise, accelerator, or VC conversation when the story feels “small” or generic.
- When the user has a wedge but no clear **expansion path** (product, market, or network).

## When not to use

- Pure pitch-deck ordering / slide titles → `pitch-deck-architect`.
- Line-level slide headlines / rewrite → `pitch-copy-and-slides`.
- Skeptical review → `vc-pitch-review`.
- Hackathons → `hackathon-pitch-demo`.

## Inputs to request (minimal)

1. Stage, geography, **audience** (e.g. seed VC, angel, corporate, hackathon—if hackathon, switch skill).
2. One-sentence **what you build** and **who pays** (or who uses, if pre-revenue).
3. **Wedge**: first narrow beachhead—ICP and why you start there (`ideal-customer-profile`, `beachhead-segment` if needed).
4. **Why now**: regulation, cost curves, distribution, behavior, tech unlock—specific, not “AI is big.”
5. **Earned secret / insight**: what you believe that others dismiss or misunderstand—ground in your experience or observations.
6. **Evidence** (only what exists): usage, pilots, LOIs, builds, experts, proprietary data—labeled honestly.
7. **Progress** (YC-style): time working, product shipped, customer interaction ratio vs biz-dev / fundraising ([how to pitch](https://www.ycombinator.com/blog/how-to-pitch-your-company)).
8. Optional: adjacencies you will **not** pursue yet (scope control).

## Process

1. **Extract claims** the user already made; separate **supported** vs **assumed**.
2. **Define the wedge** in one paragraph—who, job, why you win first.
3. **Three-level map** — today vs near roadmap vs long-range vision; flag blur.
4. **Expansion path** (pick what fits; combine if needed):
   - *Product depth*: one product family → broader workflows / seats.
   - *Market*: one segment → adjacent segments with same core insight.
   - *Network / platform*: only if mechanism is real (see NFX manual cited in [library doc](../../../docs/PITCH_SKILL_LIBRARY.md)).
5. **Capture / scale logic** — what must change (product, channel, cost, data, regulatory) for **meaningfully** larger outcomes; no fake step functions.
6. **Optional compounding** — name mechanism + **existing** early signs or `[NEEDS INPUT]`.
7. **State “if we win”**: 1 paragraph on the **different world**—concrete, not adjectives.
8. **Risks & alternatives**: 2–3 honest failure modes (`strategy-red-team` for deep adversarial).
9. **Handoff**: `pitch-deck-architect` (structure), `vc-investor-narrative` (investor lens + outcome framing).

## Output structure

```markdown
## Venture thesis — [company]

### One-liner (plain)
[What you do + for whom — clarity over pizzazz; YC “email test” style]

### Three levels
| Horizon | What it is | Proof / status | What would invalidate it |
|---------|------------|----------------|--------------------------|
| Today (wedge) | ... | ... | ... |
| Near roadmap | ... | ... | ... |
| Long-range (big thesis) | ... | ... | ... |

### Wedge
...

### Path to large outcome & capture logic
...

### Compounding (optional — only if real)
Mechanism: ...
Evidence today: ... | [NEEDS INPUT]

### Why now
...

### Earned secret / insight
...

### Progress & velocity (YC: work done / time working)
...

### Evidence map
| Claim | Status (proven / partial / missing) | Next proof |

### If we win (vision, not slide fluff)
...

### Risks & mitigations (honest)
...

### Suggested next step
[skill name + one-line reason]
```

## Cross-skills

| Need | Skill |
|------|--------|
| TAM / SAM / SOM depth | `market-sizing` |
| Unit economics & capture | `business-model`, `monetization-strategy` |
| Competition map | `competitor-analysis`, `competitive-battlecard` |
| GTM sequence | `gtm-strategy`, `beachhead-segment` |
| First-principles challenge | `first-principles-thinking` |
| Assumption attack | `strategy-red-team` |

## Save as

`outputs/{slug}_Venture_Thesis.md`

## Sources (see full citations)

- Y Combinator — Demo Day / pitch clarity, bottom-up markets, “vertebrae”; **progress ratio** ([guide](https://www.ycombinator.com/blog/guide-to-demo-day-pitches), [how to pitch](https://www.ycombinator.com/blog/how-to-pitch-your-company), [deck design](https://www.ycombinator.com/blog/how-to-design-a-better-pitch-deck)).
- Sequoia — business plan sections including purpose, problem, solution, why now, market potential, competition, model, team, financials, vision ([Writing a Business Plan](https://sequoiacap.com/article/writing-a-business-plan)).
