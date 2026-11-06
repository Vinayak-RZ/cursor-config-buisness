---
name: pitch-deck-architect
description: >-
  Structure a pitch deck for emailed (read-alone) vs live (presented) modes: slide sequence, one-idea-per-slide
  discipline, appendix, and cross-links to sizing and economics—without generating PPTX or fabricating data.
  Use when the user needs outline, flow, or structural critique. Builds on Sequoia/YC/First Round norms;
  pairs with venture-thesis-builder, market-sizing, business-model, pitch-copy-and-slides.
---

# Pitch Deck Architect

## Purpose

Produce a **defensible deck architecture**: what to show, in what order, with **send-ahead** vs **live** differences—aligned to commonly cited investor outlines (e.g. Sequoia’s sections; YC’s emphasis on clarity and few memorable ideas).

This skill outputs **Markdown structure only**. The user builds slides in their tool of choice; there is no PPTX engine in-repo (`find-skills` if you want an external doc/slide skill).

## Hard rules

- Never invent KPIs, logos, customers, or financials.
- Do not claim fixed reading times (e.g. “investors spend N seconds per slide”)—those vary by context (**heuristic**: keep send-ahead decks scannable; **not** a universal timing law).
- One **primary idea per slide** (YC: simplicity and legibility—[deck design post](https://www.ycombinator.com/blog/how-to-design-a-better-pitch-deck)).

## Modes

### A — Emailed / read-alone deck

- Slightly more on-slide context; still no wall of text.
- Clear **company purpose** early (Sequoia: single declarative sentence — [source](https://sequoiacap.com/article/writing-a-business-plan)).
- Appendix: methodology, deeper finance, extra competition.

### B — Live / meeting deck

- **Fewer slides**, talk track carries detail (YC: ~5–7 *ideas* to remember — [deck design](https://www.ycombinator.com/blog/how-to-design-a-better-pitch-deck)).
- Big numbers and proofs on slides; nuance spoken.
- Optional **hidden appendix** cues for anticipated questions (First Round — [partner meeting](https://review.firstround.com/heres-what-you-can-really-expect-when-pitching-your-seed-stage-startup-at-a-vc-partner-meeting/)).

## Default spine (adapt to stage)

Align to **Sequoia’s** section list as a *common backbone*; reorder if story demands (First Round notes traction placement can vary—[fundraising wisdom](https://review.firstround.com/the-fundraising-wisdom-that-helped-our-founders-raise-18b-in-follow-on-capital/)):

1. **Company purpose** — one clear sentence.
2. **Problem** — whose pain, how they cope today.
3. **Solution** — what you built / do, why it wins.
4. **Why now** — specific unlocks.
5. **Market potential** — bottom-up logic; deep dive → `market-sizing`.
6. **Competition / alternatives** — including inertia; use `competitor-analysis` if needed.
7. **Business model** — capture logic; use `business-model`.
8. **Team** — relevant; First Round suggests full team slide **after** the problem/company context is clear in some cases ([partner meeting](https://review.firstround.com/heres-what-you-can-really-expect-when-pitching-your-seed-stage-startup-at-a-vc-partner-meeting/)).
9. **Financials / traction** — only real numbers.
10. **Vision** — what the world looks like if this works (Sequoia lists Vision as closing section).

**Gap:** If any section is unknown, insert `[GAP: …]`—do not pad.

## Process

1. Confirm **mode** (emailed vs live) and **stage**.
2. Confirm **audience** (VC vs angel vs other)—adjust depth.
3. Map user facts to the spine; **cut** slides that duplicate.
4. Add **appendix** list (title + one-line purpose).
5. For each slide: `title`, `job` (one idea), `must-have proof`, `common failure` (Sequoia/YC-style anti-patterns).
6. Hand off to `pitch-copy-and-slides` for headline drafting.

## Output structure

```markdown
## Deck architecture — [company] ([emailed|live])

### Constraints
stage, audience, known gaps

### Slide flow
For each: Title | One idea | Proof needed | Failure mode to avoid

### Appendix
...

### Narrative through-line (5–7 vertebrae)
[YC-style memorable points — user facts only]

### Cross-skills
- market-sizing, business-model, competitor-analysis, venture-thesis-builder (list what applies)
```

## Save as

`outputs/{slug}_Pitch_Deck_Architecture.md`

## Sources

- [Sequoia — Writing a Business Plan](https://sequoiacap.com/article/writing-a-business-plan) (section list; **note:** older mirrors sometimes differ—prefer this URL).
- [YC — How to Design a Better Pitch Deck](https://www.ycombinator.com/blog/how-to-design-a-better-pitch-deck); [Guide to Demo Day Pitches](https://www.ycombinator.com/blog/guide-to-demo-day-pitches).
- [First Round Review — fundraising / deck articles](https://review.firstround.com/the-fundraising-wisdom-that-helped-our-founders-raise-18b-in-follow-on-capital/).
- [Point Nine — simple teaser deck](https://writing.pointnine.com/p/a-simple-pitch-deck-template).
