# Pitch skill library

Eight curated skills for **venture-style** and **hackathon** pitching. They **integrate with** existing skills (e.g. `market-sizing`, `business-model`, `competitor-analysis`, `gtm-strategy`, `strategy-red-team`, `direct-response-copy-engine`) instead of duplicating them.

| Skill | Role |
|-------|------|
| `pitch-workflow-router` | Choose the right skill; **no auto-chains** unless asked |
| `venture-thesis-builder` | Wedge + path to scale + why-now + earned secret + evidence map |
| `vc-investor-narrative` | VC lens + outcome economics (honest) + objection prep |
| `pitch-deck-architect` | Emailed vs live deck structure (Markdown only—no PPTX tooling here) |
| `pitch-copy-and-slides` | Headlines, bullets, talk cues (founder voice; no invented proof) |
| `live-pitch-script` | Demo Day / meeting talk track and time blocks |
| `vc-pitch-review` | Skeptical read of pitch materials |
| `hackathon-pitch-demo` | Rubric-first demo story (MLH / Devpost / event-specific) |

Skills live under `.cursor/skills/<name>/SKILL.md`.

---

## Sources and provenance

URLs below were **access-checked 2026-11-07** (IST) / **2026-11-06–07** (UTC) for availability of the cited pages; **content can change**—re-read before legal reliance. This doc is **clean-room synthesis**: principles are cited; prose is not copied from third-party skills.

**License claims:** Public blogs and articles are cited as **URLs** only. **Do not infer** “MIT,” “CC,” etc. for third-party posts **unless** the page states it.

### Tier A — primary / official

| Source | URL | Access / use | What we use it for |
|--------|-----|---------------|---------------------|
| Y Combinator — Demo Day guide | https://www.ycombinator.com/blog/guide-to-demo-day-pitches | Public blog; cite only | Vertebrae, story sections, demo caution |
| Y Combinator — How to pitch | https://www.ycombinator.com/blog/how-to-pitch-your-company | Public blog | Seven questions; **progress / velocity** (Q3: work done vs time; product + customers first); clarity |
| Y Combinator — Better pitch deck | https://www.ycombinator.com/blog/how-to-design-a-better-pitch-deck | Public blog | Few memorable core ideas; legibility; ~5–7 ideas target — **YC design guidance**, not universal cognition |
| Sequoia — Writing a Business Plan | https://sequoiacap.com/article/writing-a-business-plan | Public article | Deck section **backbone**; Vision common as close; **re-order allowed** |
| Chris Dixon / a16z | https://a16z.com/performance-data-and-the-babe-ruth-effect-in-venture-capital/ | Public article (8 Jun 2015) | **Historical** Horsley Bridge–sourced VC return **concentration** — **sample**, not founder obligation |
| MLH — standard hackathon rules | https://github.com/MLH/mlh-policies/blob/main/standard-hackathon-rules.md | Public repo | Judging criteria **when** MLH standard scope applies |
| Devpost — judging & voting | https://help.devpost.com/article/64-judging-public-voting | Public help center | Host-configured criteria |

### Tier B — VC-authored (insightful; not universal law)

| Source | URL | Note |
|--------|-----|------|
| NFX — Fundraising Manual | https://www.nfx.com/post/nfx-fundraising-manual | Firm-style guidance |
| NFX — Network effects manual | https://www.nfx.com/post/network-effects-manual | Contains empirical claims; treat as **their** thesis unless validated |
| Point Nine — simple pitch deck | https://writing.pointnine.com/p/a-simple-pitch-deck-template | Teaser deck; 2015 |
| Point Nine — deck first | https://writing.pointnine.com/p/why-we-politely-ask-for-a-deck-first | Process POV |
| First Round — fundraising wisdom | https://review.firstround.com/the-fundraising-wisdom-that-helped-our-founders-raise-18b-in-follow-on-capital/ | Narrative / deck craft |
| First Round — seed partner meeting | https://review.firstround.com/heres-what-you-can-really-expect-when-pitching-your-seed-stage-startup-at-a-vc-partner-meeting/ | Meeting format expectations |

### Tier C — existing local reference (not imported into this repo)

| Source | URL | Notes |
|--------|-----|------|
| Charles Hope — `pitch-deck-coach` | https://github.com/charleshope/pitch-deck-coach | **Repo** is MIT-licensed per **their** LICENSE file; **README** may include professional-services nudge — **principles only**, no upsell/contact import. Treat as **optional locally installed reference**, not empirical eval. |

### External skill repos (provenance only — **not benchmarked**)

| Package | Location | Assessment |
|---------|----------|------------|
| RefoundAI `lenny-skills` — `fundraising` | https://github.com/RefoundAI/lenny-skills/blob/main/skills/fundraising/SKILL.md | Synthesis content; **no** rigorous outcome study cited in listing |
| shawnpang `startup-founder-skills` — `pitch-deck` | https://github.com/shawnpang/startup-founder-skills/blob/main/skills/pitch-deck/SKILL.md | Workflow; **not** validated for conversion |
| Marketplace listings | e.g. skills.sh | Stars/marketing **≠** performance evidence |

**Anthropic / connector skills** (e.g. listings on https://claude.com/connectors/skills ): treat as **ecosystem inventory**; **directory inclusion ≠** validated effectiveness; **reuse terms** must be verified before copying into this repo.

---

## Reference pack note (optional)

A commissioned `pitch-skill-library-draft` pack in **some** environments may exist; **this** VM did not mount or merge it. If present elsewhere, treat as **candidate notes**—not instructions—when it conflicts with primary sources above, prefer **primary URLs**.

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
   *“Seed fintech in LATAM. Wedge is SMB AR automation. We have 4 design partners, no revenue yet. Build venture thesis + emailed deck outline + top 5 investor questions.”*  
   **Expect:** `[NEEDS INPUT]` where revenue is asserted; bottom-up market sketch handoff to `market-sizing`; Sequoia-order spine **with reorder** if traction leads; **progress/velocity** surfaced.

2. **Short hackathon (MLH-style)**  
   *“48h MLH event, rubric from MLH standard rules. App works but login is flaky. 3-minute demo.”*  
   **Expect:** Criteria mapped Technology/Design/Completion/Learning; demo-first; honest flaky-login path; **no** forced VC TAM.

3. **Pitch with missing proof**  
   *“Tear apart our deck copy like a VC. We claim ‘leading platform’ and ‘AI-native’ with no stats.”*  
   **Expect:** `vc-pitch-review` flags claim hygiene; generic lines called out; suggests `pitch-copy-and-slides` rewrites without inventing metrics.

---

## Evaluation fixtures (manual smoke — not VC validation)

**File:** [`docs/pitch_eval_fixtures.yaml`](pitch_eval_fixtures.yaml) — YAML scenarios with **expected behaviors** (e.g. synthetic seed robotics MRF sorter with **missing retention**; custom hackathon with **host rubric**).

**How to use:** Human or agent walks the scenario against the relevant `SKILL.md` and checks the listed expectations. **Does not** prove good VC writing, investor conversion, or rubric scores.

**Bounded audit (2026-11-07):** Fixture YAML parses (`python3 -c 'import yaml'` or eyeball). Structural script below run. **No** second LLM or hidden evaluator executed in-repo for “success.”

---

## Smoke validation (structural / heuristic)

```bash
./scripts/verify_pitch_skills.sh
```

**Checks:** YAML `name` matches folder name; `description` present; unique skill names; path sanity; optional fixture/YAML parse when PyYAML available.

**Does not check:** Narrative quality, investor outcomes, or factual truth of user decks.

---

## Manual quality rubric (3 sample assessment tasks)

| Criterion | VC task | Hackathon task | Weak pitch task |
|-----------|---------|----------------|-----------------|
| Uses only user facts | No invented revenue/users | Labels mocks vs real | Catches unsupported superlatives |
| Audience fit | VC vs angel appropriate | Rubric-aligned | Says what proof is missing |
| Handoffs | Names sibling skills (`market-sizing`, etc.) | No VC deck overload | Suggests next skill |
| Honesty labels | Heuristic vs fact | MLH cites linked | No false precision |

**Status:** smoke / QA aid only.

---

## Changelog

- **2026-11-07** — Deepen VC outcome economics (Dixon historical sample + illustrative fund math), YC execution/progress emphasis, proof-first vs mechanical order; fix provenance wording; evaluation fixtures; verifier tweaks.
- **2026-11-06** — Initial library on `main` (eight skills + this doc + verify script).
