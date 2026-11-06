---
name: vc-investor-narrative
description: >-
  Frame a startup story for VC-style evaluation: outcome potential at stage (with honest fund-level context
  when known), execution velocity and progress versus time, capital-to-proof milestones when fundraising,
  path from wedge to scale, and objection prep—without prescribing round sizes, valuations, or universal
  return thresholds. Use before meetings or alongside deck work. Pairs with venture-thesis-builder,
  pitch-deck-architect, strategy-red-team for objections.
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
- Never **reverse-engineer** a required exit valuation or ownership from a fund headline to make the user’s story “fit”; illustration only when **explicitly requested** and labeled **[FICTIONAL SENSITIVITY]** or **illustrative**.

## Inputs

1. **Stage** (idea, pre-seed, seed, A…) and geography.
2. **Intended investor type** if known (institutional VC, micro-VC, angel, strategic).
3. **Fundraising or not** — if **no raise** (customer deck, hackathon, intro call): **omit** capital milestone sections unless user asks “what if we raised.”
4. **Round / use of funds** if known—or `[UNKNOWN]` / `[NEEDS INPUT]`.
5. **Thesis + wedge** (can be output of `venture-thesis-builder`).
6. **Traction & risks**—user-provided only.
7. **Progress / velocity context** (YC [how to pitch](https://www.ycombinator.com/blog/how-to-pitch-your-company)): time working, what shipped, **product + customers first** over fundraising/biz-dev **as lead story** unless the ask is truly the raise.
8. Optional **fund constraints** for illustration: fund size, check, target ownership—**only if user supplied** or user requests **[FICTIONAL SENSITIVITY]**.
9. **YC Q7 — what do you want?** ([same source](https://www.ycombinator.com/blog/how-to-pitch-your-company)) — concrete **help**, **next meeting**, **investment**—user-stated only; `[NEEDS INPUT]` if missing.

## Execution & velocity (investor-perception)

YC lists **progress**: *ratio of work done to time working — product development and customers first over fundraising/biz dev* (their framing — **not** an extra slide requirement).

- State elapsed time and **concrete shipped artifacts** (builds, pilots, users, revenue — whatever exists).
- **Strongest proof earlier** in narrative when it is the hook (**heuristic**); do not bury it for section order dogma.
- **Prior-round benchmarks** are not universal.

## Outcome economics & ambition (venture-scale vs solid small business)

Many VCs evaluate whether an outcome *could* matter *relative to their fund* — **their** portfolio math, not a judgment on every good business.

**Historical sample (not prediction):** [Chris Dixon / a16z](https://a16z.com/performance-data-and-the-babe-ruth-effect-in-venture-capital/) (8 Jun 2015) describes anonymized Horsley Bridge data: **~6%** of investments (**~4.5%** of invested $) generated **~60%** of returns — **concentration**, not a founder obligation.

**Framing (no false precision):**

- **Exit proceeds to investor** ≈ **exit value × ownership at exit** (then preferences, pro-rata, fees, timing — **label rough**).
- **Dilution** reduces ownership — **broad labels** unless cap table given.

### Optional [FICTIONAL SENSITIVITY] — only when user explicitly asks (e.g. “venture-scale illustration”)

Label **[FICTIONAL]**. Multi-round sketch:

**ownership_at_exit ≈ ownership_at_entry × Π(1 − dilution_i)** per round *i* (user gives each dilution or one aggregate “50% cumulative” as **their** assumption).

**Example (user-requested, arithmetic only — not an investor mandate):** $200M fund, **10%** entry, **50% cumulative dilution** → **5%** at exit; **$1B** exit → **$50M** ≈ **0.25×** fund; **$4B** → **$200M** ≈ **1×** fund (simple common proceeds; **ignores** prefs, follow-on, fees, debt, timing).

Never use sensitivity blocks to **force** the narrative to satisfy a fund.

### Optional include-if-known block: “Outcome potential and investor fit”

Emit when user gave fund-like constraints **or** wants VC-fit honesty.

```markdown
### Outcome potential and investor fit (conditional)

- **Plain English**: Outcomes that move a fund are often **large in absolute dollars**; historical VC returns are **concentrated** (Dixon 2015 — sample, not your forecast).
- **Honest fit**: A **strong** business may still be a **poor fit for classic VC** — say so when true.
- **Toy illustration** (only if user supplied numbers): [arithmetically correct, **[TOY ILLUSTRATION]**, stop — do not tune inputs until story “works”]
```

## Capital to proof milestones (only if fundraising)

**Skip** for customer decks, hackathons, or pure intro unless user is raising or asks.

Table — **current uncertainty | milestone to reduce | baseline → target | measurement & time window | capital/work | slower-case decision**.

- **Hire/launch activity** (building team, shipping v2) is **not** the same as **demand proof** — separate rows or label.
- **Time windows** are **domain-specific** — do **not** default every row to “30/60/90” unless user names that cadence.

**Optional one deck slide** (when using `pitch-deck-architect`): title **“What this capital proves”** — same columns **abbreviated**; user facts only.

**Depth:** Do **not** duplicate full `business-model` runway models — hand off when user wants full economics.

### YC Q7 alignment

End fundraising outputs with **what you want** ([YC](https://www.ycombinator.com/blog/how-to-pitch-your-company)): intro, pilot, diligence materials, round — **`[NEEDS INPUT]`** if unstated.

If user raises, note **what a next round would still need to underwrite** — **only** at high level; **no** invented round plans.

## Investor question map (structural)

| Theme | What they are often testing |
|--------|-----------------------------|
| Problem–solution fit | Pain real, frequent, valuable? |
| Why now | What changed? |
| **Progress / velocity** | Shipped vs time; product & customers ([YC](https://www.ycombinator.com/blog/how-to-pitch-your-company)) |
| Market | Bottom-up; `market-sizing` |
| Model & margins | `business-model` |
| GTM | `gtm-strategy` |
| Defensibility | Specific mechanism |
| Team | Relevant edge |
| Metrics | As given; label gaps |
| **Capital → proof** | If fundraising: what uncertainty **this** raise removes |

## Objection rehearsal

For each top concern:

1. **Objection** (plain language).
2. **Steel-man**.
3. **Response** — evidence-backed; if missing, specify **what proof** and **by when** (**domain-appropriate** window — not automatic 30/60/90).
4. **Kill scenario**.

Use `strategy-red-team` for deep adversarial work.

## Handoffs

| Next | When |
|------|------|
| `pitch-deck-architect` | Slide list + optional “capital to proof” slide |
| `pitch-copy-and-slides` | Headlines |
| `vc-pitch-review` | Skeptical read |
| `strategy-red-team` | Assumption break |

## Output structure

```markdown
## VC narrative — [company]

### Audience & assumptions
[incl. fundraising Y/N]

### Opening (examples — pick by strongest proof)
...

### Progress & velocity (YC Q3)
...

### Outcome potential and investor fit
[conditional OR [FICTIONAL SENSITIVITY] if user asked]

### Capital to proof milestones (only if fundraising)
...

### What must be true (load-bearing)
...

### Evidence today vs needed
...

### Objection rehearsal (top themes)
...

### What we want / next step (YC Q7)
[user text or NEEDS INPUT]

### Questions to ask them (partner fit)
...
```

## Save as

`outputs/{slug}_VC_Investor_Narrative.md`

## Sources

- Y Combinator — seven questions; progress; what you want ([How to Pitch Your Company](https://www.ycombinator.com/blog/how-to-pitch-your-company)).
- Chris Dixon / a16z — historical concentration ([Performance Data and the “Babe Ruth” Effect](https://a16z.com/performance-data-and-the-babe-ruth-effect-in-venture-capital/), 8 Jun 2015).
- Sequoia — plan sections ([Writing a Business Plan](https://sequoiacap.com/article/writing-a-business-plan)).
- Fred Wilson / USV — **one firm’s** historical model (outcomes-per-fund; realized exits; ownership thesis) — see [library doc](../../../docs/PITCH_SKILL_LIBRARY.md#sources-and-provenance) for link; **not** universal law.
- First Round — partner meetings ([seed partner meeting](https://review.firstround.com/heres-what-you-can-really-expect-when-pitching-your-seed-stage-startup-at-a-vc-partner-meeting/)).
- Point Nine — deck first ([deck first](https://writing.pointnine.com/p/why-we-politely-ask-for-a-deck-first), [template](https://writing.pointnine.com/p/a-simple-pitch-deck-template)).
- NFX — [Fundraising Manual](https://www.nfx.com/post/nfx-fundraising-manual) (firm checklist — not universal).
