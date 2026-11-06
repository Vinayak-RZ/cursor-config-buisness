---
name: live-pitch-script
description: >-
  Build a short live pitch talk-track and timing blocks for Demo Day-style or VC meetings: opening,
  vertebrae (memorable beats), transition lines, and backup paths if interrupted. Does not replace rehearsal.
  Use after venture-thesis-builder and/or pitch-deck-architect. Complements pitch-copy-and-slides;
  differs from hackathon-pitch-demo (judging rubric + demo emphasis).
---

# Live Pitch Script & Delivery

## Purpose

Produce a **spoken arc** aligned to **how YC frames Demo Day**: clarity, excitement, informative substance, memorability—and “vertebrae,” the **3–4** points people actually remember ([Demo Day guide](https://www.ycombinator.com/blog/guide-to-demo-day-pitches)).

**Heuristic (YC):** demos often fail in short live pitches; prioritize **rapid clarity** on what the product does unless the user has a reliable demo path—do not assume live demo works (same source).

## Hard rules

- Do not fabricate user metrics or customer stories.
- Do not present **fixed second-by-second** timing as law; provide **ranges** and rehearsal hooks only.
- Distinguish **partner meeting** (more interaction—see First Round [partner meeting](https://review.firstround.com/heres-what-you-can-really-expect-when-pitching-your-seed-stage-startup-at-a-vc-partner-meeting/)) vs **broadcast** Demo Day; ask which applies.

## Inputs

1. Total time (e.g. 2, 3, 5, 10 minutes)—user-stated.
2. Venue constraints (slides only, demo ok, pitch clock strict).
3. **Vertebrae** — the 3–4 beats the user wants remembered (if missing, derive only from user text).
4. Risk areas user fears (questions, weak slides).

## Structure templates

### A) Demo Day / broadcast (short)

Sections aligned to YC guide: **Introduction → Problem → Product & Customer → Opportunity → (optional) Team/traction close**—trim to fit clock ([source](https://www.ycombinator.com/blog/guide-to-demo-day-pitches)).

### B) VC room (dialogue expected)

Opening **purpose line**; 2–3 proof peaks; **explicit pause cues** for questions; appendix pointers (First Round: partners may ask data-heavy follow-ups—[partner meeting](https://review.firstround.com/heres-what-you-can-really-expect-when-pitching-your-seed-stage-startup-at-a-vc-partner-meeting/)).

## Process

1. Lock **one-sentence purpose** (YC / Sequoia: what you do, plain words).
2. Choose vertebrae (max 4); **one memorable proof** each—user-supplied.
3. Draft **full script** (~130–180 words per delivered minute as rough guide—**not** exact for all speakers).
4. Add **if cut for time** shorter blocks (50%, 80% versions).
5. Add **if interrupted** micro-responses for top 5 questions (`vc-investor-narrative` for deeper objection work).
6. Add **delivery cues** (pace, emphasis)—behavioral, optional.

## Output structure

```markdown
## Live pitch script — [company]

### Setup
time, format, vertebrae, proof available

### Full script ([target] min)
[sections with optional //delivery cues//]

### Shorter variants
- 80% ...
- 50% ...

### Demo decision
[use / skip / backup] + rationale per YC demo caution

### Likely questions (short answers)
...

### Rehearsal checklist
- Email test (YC): ...
- One idea per slide: ...
```

## Cross-skills

- `pitch-copy-and-slides` — tighten slide headlines to match script.
- `vc-investor-narrative` — objections and investor question map.
- `venture-thesis-builder` — spine if story weak.
- `strategy-red-team` — pre-emptively break fragile claims.

## Save as

`outputs/{slug}_Live_Pitch_Script.md`

## Sources

- [YC — Guide to Demo Day Pitches](https://www.ycombinator.com/blog/guide-to-demo-day-pitches) (vertebrae, sections, demo caution).
- [YC — How to Pitch Your Company](https://www.ycombinator.com/blog/how-to-pitch-your-company) (clarity over pizzazz).
- [First Round — Seed VC partner meeting](https://review.firstround.com/heres-what-you-can-really-expect-when-pitching-your-seed-stage-startup-at-a-vc-partner-meeting/) (format expectations).
