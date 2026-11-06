# Pitch skill library

Eight curated skills for **venture-style** and **hackathon** pitching. They **integrate with** existing skills (e.g. `market-sizing`, `business-model`, `competitor-analysis`, `gtm-strategy`, `strategy-red-team`, `direct-response-copy-engine`) instead of duplicating them.

| Skill | Role |
|-------|------|
| `pitch-workflow-router` | Choose the right skill; **no auto-chains** unless asked |
| `venture-thesis-builder` | Wedge + falsifiable bridge + path to scale + evidence |
| `vc-investor-narrative` | VC lens + outcome economics + capital→proof (if fundraising) |
| `pitch-deck-architect` | Emailed vs live deck structure (Markdown only—no PPTX tooling here) |
| `pitch-copy-and-slides` | Headlines, bullets, talk cues (founder voice; no invented proof) |
| `live-pitch-script` | Demo Day / meeting talk track and time blocks |
| `vc-pitch-review` | Skeptical read + two-axis ambition/credibility verdict |
| `hackathon-pitch-demo` | Rubric-first demo story (MLH / Devpost / event-specific) |

Skills live under `.cursor/skills/<name>/SKILL.md`.

---

## Sources and provenance

URLs below were **access-checked 2026-11-07 (IST)** for availability of the cited pages (some checks fall on **2026-11-06 UTC** as the same calendar moment); **content can change**—re-read before legal reliance. This doc is **clean-room synthesis**: principles are cited; prose is not copied from third-party skills.

**License claims:** Cite **repo LICENSE files** where listed. **Do not infer** “MIT” for third-party **blog posts** unless the page states it.

### Tier A — primary / official

| Source | URL | Access / use | What we use it for |
|--------|-----|---------------|---------------------|
| Y Combinator — Demo Day guide | https://www.ycombinator.com/blog/guide-to-demo-day-pitches | Public blog; cite only | Vertebrae, story sections, demo caution |
| Y Combinator — How to pitch | https://www.ycombinator.com/blog/how-to-pitch-your-company | Public blog | Seven questions; **progress / velocity** (Q3); **what you want** (Q7) |
| Y Combinator — Better pitch deck | https://www.ycombinator.com/blog/how-to-design-a-better-pitch-deck | Public blog | Few memorable core ideas — **YC design guidance**, not universal cognition |
| Sequoia — Writing a Business Plan | https://sequoiacap.com/article/writing-a-business-plan | Public article | Deck section **backbone**; Vision common as close; **re-order allowed** |
| Chris Dixon / a16z | https://a16z.com/performance-data-and-the-babe-ruth-effect-in-venture-capital/ | Public article (8 Jun 2015) | **Historical** VC return **concentration** (Horsley Bridge sample) — not founder obligation |
| MLH — standard hackathon rules | https://github.com/MLH/mlh-policies/blob/main/standard-hackathon-rules.md | Public repo | Four equal criteria; demos encouraged; pitch not scored — **when MLH standard scope applies** |
| Devpost — judging & public voting | https://help.devpost.com/article/64-judging-public-voting | Public help center | Host criteria; **online** platform judging = **equal** criterion weights by default; **unequal weights** → **offline** workflow per Devpost |

### Tier B — VC-authored (insightful; not universal law)

| Source | URL | Note |
|--------|-----|------|
| Fred Wilson / USV | https://avc.com/2017/10/our-model/ | Oct 2017 — **one historic firm’s** portfolio model (e.g. a few high-impact outcomes per fund; **realized** exits; ownership through rounds — **not** a law for all VCs) |
| NFX — Fundraising Manual | https://www.nfx.com/post/nfx-fundraising-manual | Firm-style guidance |
| NFX — Network effects manual | https://www.nfx.com/post/network-effects-manual | Contains empirical claims; treat as **their** thesis unless validated |
| Point Nine — simple pitch deck | https://writing.pointnine.com/p/a-simple-pitch-deck-template | Teaser deck; 2015 |
| Point Nine — deck first | https://writing.pointnine.com/p/why-we-politely-ask-for-a-deck-first | Process POV |
| First Round — fundraising wisdom | https://review.firstround.com/the-fundraising-wisdom-that-helped-our-founders-raise-18b-in-follow-on-capital/ | Narrative / deck craft |
| First Round — seed partner meeting | https://review.firstround.com/heres-what-you-can-really-expect-when-pitching-your-seed-stage-startup-at-a-vc-partner-meeting/ | Meeting format expectations |

### Tier C — optional reference repos (not imported; not benchmarked)

| Source | URL | Notes |
|--------|-----|------|
| Charles Hope — `pitch-deck-coach` | https://github.com/betahope/pitch-deck-coach | **MIT** LICENSE in repo (verify file); **README** may nudge professional services — **principles only**, no import of upsell/contact text. Optional locally installed reference — **no empirical performance claim**. |
| SkillMedev — `skills` (e.g. pitch-deck-builder) | https://github.com/SkillMedev/skills | **MIT** LICENSE in repo; `SKILL.md` at pinned refs (verify) — **optional** external workflow; rigid slide-count advice may not fit this library — **read-only caution**, no wholesale import. |

### External skill repos (provenance only — **not benchmarked**)

| Package | Location | Assessment |
|---------|----------|------------|
| RefoundAI `lenny-skills` — `fundraising` | https://github.com/RefoundAI/lenny-skills/blob/main/skills/fundraising/SKILL.md | Synthesis content; **no** rigorous outcome study cited in listing |
| shawnpang `startup-founder-skills` — `pitch-deck` | https://github.com/shawnpang/startup-founder-skills/blob/main/skills/pitch-deck/SKILL.md | Workflow; **not** validated for conversion |
| Marketplace listings | e.g. skills.sh | Stars/marketing **≠** performance evidence |

**Anthropic / connector skills** (e.g. listings on https://claude.com/connectors/skills ): treat as **ecosystem inventory**; **directory inclusion ≠** validated effectiveness; **reuse terms** must be verified before copying into this repo.

---

## What is **not** claimed

- No guarantee of fundraising, prizes, or investor interest.
- No uniform bar across angels, seed funds, and growth funds.
- No fabricated reading speeds or mandatory slide counts for all cases.
- Fixture checks and structural scripts **do not** validate VC writing quality or investment outcomes.

---

## Representative test prompts

Use with **`pitch-workflow-router`** first if unsure.

1. **VC startup (early, gaps allowed)**  
   *“Seed fintech in LATAM… no revenue yet. Build venture thesis + emailed deck outline.”*  
   **Expect:** `[NEEDS INPUT]`; **wedge-to-destination bridge** table; no invented revenue.

2. **MLH hackathon**  
   *“48h MLH event… 3-minute demo.”*  
   **Expect:** Technology/Design/Completion/Learning; demo-first; **no** forced VC raise.

3. **Custom / Devpost hackathon**  
   **Expect:** host rubric drives structure; **do not** assume MLH criteria unless scope matches MLH standard.

4. **`pitch_missing_proof` fixture** — deck claims “20 paying customers / leading platform”; notes say interviews + unpaid pilots + simulated savings.  
   **Expect:** `vc-pitch-review` flags discrepancy + proof-type confusion; rewrite plan without inventing payers.

---

## Evaluation fixtures (manual smoke — not VC validation)

**File:** [`docs/pitch_eval_fixtures.yaml`](pitch_eval_fixtures.yaml) — **v2**: four concise scenarios (`vc_seed_robotic_recycler`, `hackathon_custom_product_judged`, `pitch_missing_proof`, `venture_scale_sensitivity`).

**How to use:** Human or agent walks the scenario against the relevant `SKILL.md` and checks listed expectations. **Does not** prove good VC writing, investor conversion, or rubric scores.

**Bounded audit:** `./scripts/verify_pitch_skills.sh` — YAML parse + **executed arithmetic check** for `venture_scale_sensitivity` fixture only — **not** a narrative “pass.”

---

## Smoke validation (structural / heuristic)

```bash
./scripts/verify_pitch_skills.sh
```

**Checks:** YAML `name` matches folder name; `description` present; unique skill names; fixture YAML parse; **venture_scale_sensitivity** arithmetic.

**Does not check:** Narrative quality, investor outcomes, or factual truth of user decks.

---

## Manual quality rubric (sample assessment tasks)

| Criterion | VC task | Hackathon task | Weak pitch task |
|-----------|---------|----------------|-----------------|
| Uses only user facts | No invented revenue/users | Labels mocks vs real | Catches unsupported superlatives |
| Audience fit | VC vs angel appropriate | Rubric-aligned | Says what proof is missing |
| Handoffs | Names sibling skills (`market-sizing`, etc.) | No VC deck overload | Suggests next skill |
| Honesty labels | Heuristic vs fact | MLH cites linked | No false precision |

**Status:** smoke / QA aid only.

---

## Changelog

- **2026-11-07 (IST)** — Venture bridge table; VC review two-axis verdict + proof types + optional fictional sensitivity; capital→proof milestones; Devpost online vs offline weights; provenance fixes (betahope, SkillMedev, USV); fixtures v2 + arithmetic check in verifier.
- **2026-11-07** — Deepen VC outcome economics (Dixon sample + illustrations), YC execution/progress, proof-first order; evaluation fixtures; verifier YAML parse.
- **2026-11-06** — Initial library on `main` (eight skills + this doc + verify script).
