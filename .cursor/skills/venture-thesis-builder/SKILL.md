---
name: venture-thesis-builder
description: >-
  Build a credible venture-scale thesis: wedge, path to a large outcome, why-now, earned secret / insight,
  and evidence hooks—without generic startup slogans. Use when shaping investor-level ambition, narrative
  spine, or “what world exists if we win” before slides or copy. Complements market-sizing (bottom-up TAM),
  business-model (economics), competitor-analysis, and first-principles-thinking. Not a deck draft—use
  pitch-deck-architect or pitch-copy-and-slides for slides.
---

# Venture Thesis Builder

## Purpose

Turn **real founder facts** into a **venture-scale story investors can sanity-check**: what you are building, for whom, why it can become very large, why now, and what proof you have. This skill produces narrative structure and labeled gaps—not invented traction.

**Heuristic (opinion):** “Venture scale” is audience-dependent. A credible thesis names the **type of outcome** that could matter to the investor *type* (e.g. returns sufficient to move a fund at X stage is a *VC mental model*, not a law for angels or strategics—see [SOURCES.md](../../../docs/PITCH_SKILL_LIBRARY.md#sourcesmd-provenance-summary)).

## Hard rules

- Never invent metrics, customers, revenue, credentials, or investor interest.
- Mark missing facts: `[NEEDS INPUT: …]`.
- Distinguish **today’s product** vs **near roadmap** vs **long-range vision**—do not blur them.
- Prefer **bottom-up** market logic; defer detailed TAM math to `market-sizing` if the user wants full sizing.

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
7. Optional: adjacencies you will **not** pursue yet (scope control).

## Process

1. **Extract claims** the user already made; separate **supported** vs **assumed**.
2. **Define the wedge** in one paragraph—who, job, why you win first.
3. **Expansion path** (pick what fits; combine if needed):
   - *Product depth*: one product family → broader workflows / seats.
   - *Market*: one segment → adjacent segments with same core insight.
   - *Network / platform*: same infrastructure → more sides or ecosystem (only if mechanism is real—see NFX network-effects manual in [SOURCES](../../../docs/PITCH_SKILL_LIBRARY.md)).
4. **State “if we win”**: 1 paragraph on the **different world**—concrete, not adjectives.
5. **Risks & alternatives**: name 2–3 **honest** failure modes and what would convince you each is manageable (align with `strategy-red-team` if deep challenge needed).
6. **Handoff line**: one sentence telling the user which skill to run next (`pitch-deck-architect` for structure, `vc-investor-narrative` for investor lens + objections).

## Output structure

```markdown
## Venture thesis — [company]

### One-liner (plain)
[What you do + for whom — clarity over pizzazz; YC “email test” style]

### Wedge
...

### Path to large outcome
...

### Why now
...

### Earned secret / insight
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

- Y Combinator — Demo Day / pitch clarity, bottom-up markets, “vertebrae” ([guide](https://www.ycombinator.com/blog/guide-to-demo-day-pitches), [pitch](https://www.ycombinator.com/blog/how-to-pitch-your-company), [deck design](https://www.ycombinator.com/blog/how-to-design-a-better-pitch-deck)).
- Sequoia — business plan / deck sections including purpose, problem, solution, why now, market potential, competition, model, team, financials, vision ([Writing a Business Plan](https://sequoiacap.com/article/writing-a-business-plan)).
