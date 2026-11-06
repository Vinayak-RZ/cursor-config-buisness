---
name: vc-investor-narrative
description: >-
  Frame a startup story for VC-style evaluation: outcome potential at stage, path from wedge to scale,
  capital efficiency signals, milestones, and objection prep—without prescribing specific round sizes,
  valuations, or “return the fund” math as universal law. Use before meetings or alongside deck work.
  Pairs with venture-thesis-builder, pitch-deck-architect, strategy-red-team for objections.
---

# VC Investor Narrative

## Purpose

Help the user **see the company as a time- and capital-bounded bet**: what must become true, what evidence supports it, and what investors will push on—**without** fabricating fund economics or guarantees.

**Label clearly:**

- **Common practice** — widely repeated in venture (still not universal law).
- **Heuristic** — useful rule-of-thumb; stage- and fund-dependent.
- **Opinion** — this skill’s framing choice.
- **Fact** — only with user-supplied or cited data.

## Hard rules

- Do not invent returns, fund mandates, deal terms, cohort stats, or “every VC wants X.”
- Do not present **“must return the whole fund”** as an automatic test for every check size—fund math varies by portfolio construction and stage ([discussion in sources](../../../docs/PITCH_SKILL_LIBRARY.md#sourcesmd-provenance-summary)).
- Do not refuse non-VC pitches; if the user is customer-only or hackathon, route to `hackathon-pitch-demo` or `pitch-deck-architect` with audience flag.

## Inputs

1. **Stage** (idea, pre-seed, seed, A…) and geography.
2. **Intended investor type** if known (institutional VC, micro-VC, angel, strategic).
3. **Round / use of funds** if known—or mark `[UNKNOWN]`.
4. **Thesis + wedge** (can be output of `venture-thesis-builder`).
5. **Traction & risks**—user-provided only.

## Investor question map (structural)

Use as a **checklist**, not a script. Group answers by theme.

| Theme | What they are testing |
|--------|------------------------|
| Problem–solution fit | Is the pain real, frequent, and valuable? |
| Why now | What changed to make this buildable / winnable *now*? |
| Market | Bottom-up path; who pays; expansion (use `market-sizing` for depth). |
| Model & margins | How money is made; scalability of costs (use `business-model`). |
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

### Story in 90 seconds (talk track outline)
...

### What must be true (load-bearing)
1. …
2. …

### Evidence today vs needed
| Claim | Now | Next proof |

### Objection rehearsal (top 5)
...

### Questions to ask them (partner fit)
...
```

## Save as

`outputs/{slug}_VC_Investor_Narrative.md`

## Sources

- Sequoia — plan sections and clarity of ambition ([Writing a Business Plan](https://sequoiacap.com/article/writing-a-business-plan)).
- First Round — partner meeting dynamics, deck as conversation support ([seed partner meeting](https://review.firstround.com/heres-what-you-can-really-expect-when-pitching-your-seed-stage-startup-at-a-vc-partner-meeting/)).
- Point Nine — deck-as-filter, teaser vs full detail ([deck first](https://writing.pointnine.com/p/why-we-politely-ask-for-a-deck-first), [simple deck template](https://writing.pointnine.com/p/a-simple-pitch-deck-template)).
- NFX — pitch prep patterns; treat firm-specific checklist items as *their* emphasis, not universal ([Fundraising Manual](https://www.nfx.com/post/nfx-fundraising-manual)).
