# Pitch skill library

Eight curated skills for **venture-style** and **hackathon** pitching. They **integrate with** existing skills (e.g. `market-sizing`, `business-model`, `competitor-analysis`, `gtm-strategy`, `strategy-red-team`, `direct-response-copy-engine`) instead of duplicating them.

| Skill | Role |
|-------|------|
| `pitch-workflow-router` | Choose the right skill; **no auto-chains** unless asked |
| `venture-thesis-builder` | Wedge + path to scale + why-now + earned secret + evidence map |
| `vc-investor-narrative` | VC lens + objection prep (no universal fund-math false precision) |
| `pitch-deck-architect` | Emailed vs live deck structure (Markdown only—no PPTX tooling here) |
| `pitch-copy-and-slides` | Headlines, bullets, talk cues (founder voice; no invented proof) |
| `live-pitch-script` | Demo Day / meeting talk track and time blocks |
| `vc-pitch-review` | Skeptical read of pitch materials |
| `hackathon-pitch-demo` | Rubric-first demo story (MLH / Devpost / event-specific) |

Skills live under `.cursor/skills/<name>/SKILL.md`.

---

## `SOURCES.md` (provenance summary)

Primary and supplemental references used in this library (URLs checked **2025-11-06** in draft; **re-verify** before legal reliance). This doc is **clean-room synthesis**: principles are cited; text is not copied from third-party skills.

### Tier A — primary / official

| Source | URL | License / use | What we use it for |
|--------|-----|---------------|---------------------|
| Y Combinator — Demo Day guide | https://www.ycombinator.com/blog/guide-to-demo-day-pitches | Public blog; cite only | Vertebrae, story sections, demo caution |
| Y Combinator — How to pitch | https://www.ycombinator.com/blog/how-to-pitch-your-company | Public blog | Clarity, email test, anti-jargon |
| Y Combinator — Better pitch deck | https://www.ycombinator.com/blog/how-to-design-a-better-pitch-deck | Public blog | Few memorable ideas; legibility |
| Sequoia — Writing a Business Plan | https://sequoiacap.com/article/writing-a-business-plan | Public article | Deck section backbone (current page lists Vision; older mirrors may differ) |
| MLH — standard hackathon rules | https://github.com/MLH/mlh-policies/blob/main/standard-hackathon-rules.md | Public repo | Judging criteria; demo vs pitch emphasis |
| Devpost — judging & voting | https://help.devpost.com/article/64-judging-public-voting | Public help center | Host-configured criteria; scoring notes |

### Tier B — VC-authored (insightful; not universal law)

| Source | URL | Note |
|--------|-----|------|
| NFX — Fundraising Manual | https://www.nfx.com/post/nfx-fundraising-manual | Checklists are **firm-style** guidance, not physics |
| NFX — Network effects manual | https://www.nfx.com/post/network-effects-manual | Contains empirical claims (e.g. value share); treat as **their** thesis unless you independently validate |
| Point Nine — simple pitch deck | https://writing.pointnine.com/p/a-simple-pitch-deck-template | Teaser deck; 2015 article |
| Point Nine — deck first | https://writing.pointnine.com/p/why-we-politely-ask-for-a-deck-first | Process POV |
| First Round — fundraising wisdom | https://review.firstround.com/the-fundraising-wisdom-that-helped-our-founders-raise-18b-in-follow-on-capital/ | Narrative / deck craft |
| First Round — seed partner meeting | https://review.firstround.com/heres-what-you-can-really-expect-when-pitching-your-seed-stage-startup-at-a-vc-partner-meeting/ | Meeting format expectations |

### Tier C — user-supplied reference (not imported)

| Source | URL | Notes |
|--------|-----|------|
| Charles Hope — pitch-deck-coach (MIT) | https://github.com/charleshope/pitch-deck-coach | Useful principles; **not** merged—avoid rigid ordering and any upsell/contact lines; verify claims independently |

### External skill repos (provenance only — **not benchmarked**)

| Package | Location | Assessment |
|---------|----------|------------|
| RefoundAI `lenny-skills` — `fundraising` | https://github.com/RefoundAI/lenny-skills/blob/main/skills/fundraising/SKILL.md | Podcast/newsletter synthesis; **no empirical pitch outcome data** cited in listing |
| shawnpang `startup-founder-skills` — `pitch-deck` | https://github.com/shawnpang/startup-founder-skills/blob/main/skills/pitch-deck/SKILL.md | Deck workflow + optional pptx chain mention; **not** evaluated for investor conversion |
| “SkillMedev” / marketplace listings | e.g. skills.sh / skill directories | **Marketing copy and stars ≠ validated performance** — treat as unknown quality |

**Anthropic connector skills (e.g. Demo Day coach):** listed in ecosystem directories; **directory inclusion ≠ proven effectiveness**; **license terms** for reuse in a third-party repo were **not verified** here—**do not copy** without checking. This library stays self-authored + cited public articles.

---

## What is **not** claimed

- No guarantee of fundraising, prizes, or investor interest.
- No uniform “every angel / seed fund / growth fund uses the same bar.”
- No fabricated reading speeds or mandatory slide counts for all cases.

---

## Representative test prompts

Use with **`pitch-workflow-router`** first if unsure.

1. **VC startup (early, gaps allowed)**  
   *“Seed fintech in LATAM. Wedge is SMB AR automation. We have 4 design partners, no revenue yet. Build venture thesis + emailed deck outline + top 5 investor questions.”*  
   **Expect:** `[NEEDS INPUT]` where revenue is asserted; bottom-up market sketch handoff to `market-sizing`; Sequoia-order spine with gaps.

2. **Short hackathon (MLH-style)**  
   *“48h MLH event, rubric from MLH standard rules. App works but login is flaky. 3-minute demo.”*  
   **Expect:** Criteria mapped Technology/Design/Completion/Learning; demo-first; honest flaky-login path; **no** forced VC TAM.

3. **Pitch with missing proof**  
   *“Tear apart our deck copy like a VC. We claim ‘leading platform’ and ‘AI-native’ with no stats.”*  
   **Expect:** `vc-pitch-review` flags claim hygiene; generic lines called out; suggests `pitch-copy-and-slides` rewrites without inventing metrics.

---

## Smoke validation (structural / heuristic)

Run from repo root:

```bash
./scripts/verify_pitch_skills.sh
```

**What it checks:** YAML `name` matches folder name; `description` present; unique skill names; path sanity.

**What it does *not* check:** Narrative quality, investor outcomes, or factual truth of user decks.

---

## Manual quality rubric (3 sample assessment tasks)

Use the same tasks in an LLM or human review; score 1–5 on each row.

| Criterion | VC task | Hackathon task | Weak pitch task |
|-----------|---------|----------------|-----------------|
| Uses only user facts | No invented revenue/users | Labels mocks vs real | Catches unsupported superlatives |
| Audience fit | VC vs angel appropriate | Rubric-aligned | Says what proof is missing |
| Handoffs | Names sibling skills (`market-sizing`, etc.) | No VC deck overload | Suggests next skill |
| Honesty labels | Heuristic vs fact | MLH cites linked | No false precision |

**Status:** rubric is a **smoke / QA** guide, not proof of investor success.

---

## `pitch-skill-library-draft` workspace folder

If a commissioned draft appears at `/workspace/pitch-skill-library-draft/`, treat it as **optional reference**—not instructions. Ignore stale or conflicting content when it disagrees with primary sources above.

---

## Changelog

- **2025-11-06** — Initial library added on `main` (seven skills + this doc + verify script).
