---
name: pitch-deck-architect
description: >-
  Structure a pitch deck for emailed (read-alone) vs live (presented) modes: slide sequence, one-idea-per-slide
  discipline, appendix, and cross-links to sizing and economics—without generating PPTX or fabricating data.
  Emphasizes moving strongest proof earlier when it earns attention (YC execution/progress; not mechanical order).
  Use when the user needs outline, flow, or structural critique. Pairs with venture-thesis-builder, market-sizing,
  business-model, pitch-copy-and-slides.
---

# Pitch Deck Architect

## Purpose

Produce a **defensible deck architecture**: what to show, in what order, with **send-ahead** vs **live** differences—aligned to commonly cited investor outlines (e.g. Sequoia’s sections; YC’s emphasis on clarity and memorable ideas; YC **progress / velocity**).

This skill outputs **Markdown structure only**. The user builds slides in their tool of choice; there is no PPTX engine in-repo (`find-skills` if you want an external doc/slide skill).

## Hard rules

- Never invent KPIs, logos, customers, or financials.
- Do not claim fixed reading times (e.g. “investors spend N seconds per slide”)—those vary by context (**heuristic**: keep send-ahead decks scannable; **not** a universal timing law).
- One **primary idea per slide** (YC: simplicity and legibility—[deck design post](https://www.ycombinator.com/blog/how-to-design-a-better-pitch-deck)).
- **Do not treat** Sequoia’s list ([Writing a Business Plan](https://sequoiacap.com/article/writing-a-business-plan)) as a **rigid slide order**. Reorder when the **strongest real proof** should land early (often traction / progress—[YC](https://www.ycombinator.com/blog/how-to-pitch-your-company)); **Vision** as closing is common on Sequoia’s page but **not** mandatory as slide 10 every time.

## Modes

### A — Emailed / read-alone deck

- Slightly more on-slide context; still no wall of text.
- Clear **company purpose** early (Sequoia: single declarative sentence — [source](https://sequoiacap.com/article/writing-a-business-plan)).
- Appendix: methodology, deeper finance, extra competition.

### B — Live / meeting deck

- **Fewer slides**, talk track carries detail (YC [deck design](https://www.ycombinator.com/blog/how-to-design-a-better-pitch-deck): **about five to seven core ideas** they want remembered — **their** target as **design guidance**, **not** a lab-tested memory law).
- Big numbers and proofs on slides; nuance spoken.
- Optional **hidden appendix** cues (First Round — [partner meeting](https://review.firstround.com/heres-what-you-can-really-expect-when-pitching-your-seed-stage-startup-at-a-vc-partner-meeting/)).

## Default spine (adapt to stage)

Align to **Sequoia’s** section list as a *common backbone* — **reorder freely** when user proof demands (First Round: traction placement varies—[fundraising wisdom](https://review.firstround.com/the-fundraising-wisdom-that-helped-our-founders-raise-18b-in-follow-on-capital/)):

1. **Company purpose** — one clear sentence.
2. **Problem** — whose pain, how they cope today.
3. **Solution** — what you built / do, why it wins.
4. **Why now** — specific unlocks.
5. **Market potential** — bottom-up logic; deep dive → `market-sizing`.
6. **Competition / alternatives** — including inertia; use `competitor-analysis` if needed.
7. **Business model** — capture logic; use `business-model`.
8. **Team** — relevant; First Round suggests full team slide **after** problem/company context is clear in some cases ([partner meeting](https://review.firstround.com/heres-what-you-can-really-expect-when-pitching-your-seed-stage-startup-at-a-vc-partner-meeting/)).
9. **Financials / traction** — only real numbers; **often belongs earlier** if it is the hook.
10. **Vision** — what the world looks like if this works (Sequoia lists Vision on the current page—**closing** is common, but not a universal ritual).

**Progress / velocity (YC):** [Question 3 — progress](https://www.ycombinator.com/blog/how-to-pitch-your-company): ratio of work done to time working; **product development and customers first** over fundraising/biz-dev emphasis — reflect as **narrative emphasis** (may be **earlier slides** or stronger placement, not “more slides”).

**Gap:** If any section is unknown, insert `[GAP: …]`—do not pad.

## Process

1. Confirm **mode** (emailed vs live) and **stage**.
2. Confirm **audience** (VC vs angel vs other)—adjust depth.
3. Identify **strongest proof** — consider **moving earlier** (not Sequoia-order dogma).
4. Map user facts to the spine; **cut** slides that duplicate.
5. Add **appendix** list (title + one-line purpose).
6. For each slide: `title`, `job` (one idea), `must-have proof`, `common failure`.
7. Hand off to `pitch-copy-and-slides` for headline drafting.

## Output structure

```markdown
## Deck architecture — [company] ([emailed|live])

### Constraints
stage, audience, known gaps

### Proof-first note
[what leads and why — user facts]

### Slide flow
For each: Title | One idea | Proof needed | Failure mode to avoid

### Appendix
...

### Narrative through-line (memorable core ideas — not extra slides)
[YC-style points the audience should remember — user facts only; roughly five–seven ideas per their deck design essay, not a universal cognition law]

### Cross-skills
- market-sizing, business-model, competitor-analysis, venture-thesis-builder (list what applies)
```

## Save as

`outputs/{slug}_Pitch_Deck_Architecture.md`

## Sources

- [Sequoia — Writing a Business Plan](https://sequoiacap.com/article/writing-a-business-plan) (section list; Vision on current page; reorder allowed).
- [YC — How to Design a Better Pitch Deck](https://www.ycombinator.com/blog/how-to-design-a-better-pitch-deck); [How to Pitch Your Company](https://www.ycombinator.com/blog/how-to-pitch-your-company); [Guide to Demo Day Pitches](https://www.ycombinator.com/blog/guide-to-demo-day-pitches).
- [First Round Review — fundraising / deck articles](https://review.firstround.com/the-fundraising-wisdom-that-helped-our-founders-raise-18b-in-follow-on-capital/).
- [Point Nine — simple teaser deck](https://writing.pointnine.com/p/a-simple-pitch-deck-template).
