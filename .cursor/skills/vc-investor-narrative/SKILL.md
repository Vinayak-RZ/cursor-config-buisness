---
name: vc-investor-narrative
description: >-
  Frame a startup story for VC-style evaluation: outcome potential at stage (with honest fund-level context
  when known), execution velocity and progress versus time, path from wedge to scale, capital efficiency,
  milestones, and objection prep—without prescribing round sizes, valuations, or universal return thresholds.
  Use before meetings or alongside deck work. Pairs with venture-thesis-builder, pitch-deck-architect,
  strategy-red-team for objections.
---

# VC Investor Narrative

## Purpose

Help the user **see the company as a time- and capital-bounded bet**: what must become true, what evidence supports it, what investors likely push on, and **why your pace of proof** matters as a team signal—**without** fabricating fund economics, odds, or traction.

**Label clearly:**

- **Common practice** — widely repeated in venture (still not universal law).
- **Heuristic** — useful rule-of-thumb; stage- and fund-dependent.
- **Opinion** — this skill’s framing choice.
- **Fact** — only with user-supplied or cited data.

## Hard rules

- Do not invent returns, fund mandates, deal terms, cohort stats, portfolio construction, or “every VC wants X.”
- Do not present **“must return the whole fund”** per deal as an automatic test for every check size—fund math varies ([context](../../../docs/PITCH_SKILL_LIBRARY.md#sources-and-provenance)).
- Do not refuse non-VC pitches; if the user is customer-only or hackathon, route to `hackathon-pitch-demo` or `pitch-deck-architect` with audience flag.
- Do not assign **subjective probabilities** to ill-defined events (e.g. “% chance of $1B exit”) with no defensible basis—say **[CANNOT QUANTIFY]** instead.
- Never **reverse-engineer** a required exit valuation or ownership from a fund headline to make the user’s story “fit”; illustration only when **explicitly requested** and labeled **illustrative**.

## Inputs

1. **Stage** (idea, pre-seed, seed, A…) and geography.
2. **Intended investor type** if known (institutional VC, micro-VC, angel, strategic).
3. **Round / use of funds** if known—or mark `[UNKNOWN]`.
4. **Thesis + wedge** (can be output of `venture-thesis-builder`).
5. **Traction & risks**—user-provided only.
6. **Progress / velocity context** (per YC [how to pitch](https://www.ycombinator.com/blog/how-to-pitch-your-company)): **time working**, what shipped, **product + customers first**—not fundraising theater as the lead story unless that is genuinely the ask.
7. Optional **fund constraints** for illustration: fund size, check, target ownership—**only if user supplied**.

## Execution & velocity (investor-perception)

YC’s [seven questions](https://www.ycombinator.com/blog/how-to-pitch-your-company) include **progress**: *what’s your progress? ratio of work done to time working — product development and customers first over fundraising/biz dev* (**their wording — cited framing, not extra deck slides**).

Use this as **narrative emphasis**, not a script:

- State **elapsed calendar time** and **concrete shipped artifacts** (builds, pilots, users, revenue—whatever exists).
- Make **strongest proof earlier** in the narrative when it is clearly the hook (**heuristic**); do not bury the lead to preserve a mechanical section order.
- **Prior-round / other-startup benchmarks** are **not universal**—use only as qualitative comparison if the user offers them.

## Outcome economics & ambition (venture-scale vs solid small business)

Many VCs evaluate whether the **outcome** *could* matter *relative to their fund*—this is **their** portfolio math, **not** a moral judgment on non-venture companies.

**Historical sample (not a prediction or obligation for founders):** In [Chris Dixon, “Performance Data and the ‘Babe Ruth’ Effect in Venture Capital”](https://a16z.com/performance-data-and-the-babe-ruth-effect-in-venture-capital/) (8 Jun 2015), anonymized historical Horsley Bridge data is described such that **~6% of investments** (~**4.5%** of invested capital) produced **~60%** of total returns — a **highly concentrated** return pattern. Treat as **historical VC data**, **not** “your startup must …” and **not** a forward-looking rate.

**Framing (no false precision):**

- **Exit proceeds to investor** ≈ **exit valuation × ownership at exit** (then consider timing, structure, secondaries—**omit** or **label rough**).
- **Dilution / future rounds** change ownership — use **broad labels** (“material dilution likely”) unless user provided a cap table; **never** invent a path.
- **Risk** is real and **not** double-counted with fake probability math.

### Optional include-if-known block: “Outcome potential and investor fit”

**Emit this section only when** the user gave fund-like constraints *or* explicitly wants VC-fit honesty.

```markdown
### Outcome potential and investor fit (illustrative / conditional)

- **Plain English**: To move the needle for a [fund size], outcomes often need to be **large** in absolute dollars returned — concentration in returns is a known VC pattern (Dixon 2015 cites historical data; not your forecast).
- **Honest fit**: This may be a **strong business** that is still a **bad fit for classic VC** if outcomes are unlikely to meet *their* portfolio needs — state that plainly when relevant.
- **If numbers supplied** — simple illustration only:
  - Example (arithmetically correct, **not** advice): $100M fund, $1M check, **5%** ownership at entry, **2%** ownership at exit after dilution → **$1B** exit → **$20M** proceeds (= 2% × $1B) ≈ **20% of a $100M fund** *before* time value / reserves / fees / follow-on — label **[TOY ILLUSTRATION]** and stop; do **not** tune inputs until the story “works.”
```

## Investor question map (structural)

Use as a **checklist of themes**, not a script of exact questions. Phrasing varies by firm and partner.

| Theme | What they are often testing |
|--------|-----------------------------|
| Problem–solution fit | Is the pain real, frequent, and valuable? |
| Why now | What changed to make this buildable / winnable *now*? |
| **Progress / velocity** | What shipped per unit time; product & customers vs meetings ([YC](https://www.ycombinator.com/blog/how-to-pitch-your-company)) |
| Market | Bottom-up path; who pays; expansion (`market-sizing`). |
| Model & margins | How money is made; scalability of costs (`business-model`). |
| GTM | How you acquire; repeatability (`gtm-strategy`). |
| Defensibility | Why not incumbents / fast followers—specific mechanism. |
| Team | Relevant edge for *this* problem (no inflated bios). |
| Metrics | Retention, growth, unit economics—as given; label gaps. |
| Capital & milestones | What this financing unlocks; what “good” looks like—user-defined. |

## Objection rehearsal

For each top concern:

1. **Objection** (plain language).
2. **Steel-man** — strongest reason it might be right.
3. **Response** — evidence-backed; if evidence missing, say what you will show in 30/60/90 days.
4. **Kill scenario** — what would make you *stop* pursuing this venture path (shows judgment).

For deep adversarial passes, use `strategy-red-team`.

## Handoffs

| Next | When |
|------|------|
| `pitch-deck-architect` | Turn narrative into slide list (send-ahead vs live). |
| `pitch-copy-and-slides` | Polish headlines and bullets. |
| `vc-pitch-review` | Simulate skeptical partner read. |
| `strategy-red-team` | Break assumptions before meetings. |

## Output structure

```markdown
## VC narrative — [company]

### Audience & assumptions
[stage, investor type, what we are not claiming]

### Opening (plain — examples, not rigid menu)
- Option: problem-first, proof-first, or founder moment — pick what matches **strongest real proof** ([YC flexibility — seven questions](https://www.ycombinator.com/blog/how-to-pitch-your-company))

### Progress & velocity (YC Q3: work done / time working; product + customers lead)
[table or bullets — user facts only]

### Outcome potential and investor fit
[include-if-known block OR honest “non-VC path” note]

### What must be true (load-bearing)
1. …
2. …

### Evidence today vs needed
| Claim | Now | Next proof |

### Objection rehearsal (top themes)
...

### Questions to ask them (partner fit)
...
```

## Save as

`outputs/{slug}_VC_Investor_Narrative.md`

## Sources

- Y Combinator — seven questions; progress / velocity emphasis ([How to Pitch Your Company](https://www.ycombinator.com/blog/how-to-pitch-your-company)).
- Chris Dixon / a16z — historical return concentration in VC ([Performance Data and the “Babe Ruth” Effect](https://a16z.com/performance-data-and-the-babe-ruth-effect-in-venture-capital/), 8 Jun 2015) — **historical sample**, not founder obligation.
- Sequoia — plan sections and ambition ([Writing a Business Plan](https://sequoiacap.com/article/writing-a-business-plan)).
- First Round — partner meeting dynamics ([seed partner meeting](https://review.firstround.com/heres-what-you-can-really-expect-when-pitching-your-seed-stage-startup-at-a-vc-partner-meeting/)).
- Point Nine — deck-as-filter, teaser vs full detail ([deck first](https://writing.pointnine.com/p/why-we-politely-ask-for-a-deck-first), [simple deck template](https://writing.pointnine.com/p/a-simple-pitch-deck-template)).
- NFX — pitch prep patterns; treat checklist items as *their* emphasis ([Fundraising Manual](https://www.nfx.com/post/nfx-fundraising-manual)).
