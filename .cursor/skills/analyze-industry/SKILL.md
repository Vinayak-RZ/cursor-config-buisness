---
name: analyze-industry
description: >
  Deep-research any industry using the 8-Step Industry X-Ray Mental Model and produce an
  extensive, publication-quality Markdown report. ALWAYS trigger this skill when the user
  invokes "analyze industry", "industry analyze", "industry x-ray", "research [industry]",
  or names a single industry and asks for a deep dive, breakdown, or full analysis.
  The output is ALWAYS a .md file — never docx, pptx, or any other format unless
  explicitly requested otherwise. The report covers all three phases:
  Phase 1 (How It Works), Phase 2 (Who Controls It), Phase 3 (What's Changing),
  producing an extensive document that gives any reader a thorough understanding of the industry.
---

# Analyze Industry Skill

## Purpose

When triggered, conduct a full 8-step Industry X-Ray on the named industry using live web research,
cross-verify key claims across multiple sources, and produce a single extensive `.md` file
that gives any reader — investor, founder, student, consultant — a thorough understanding
of the industry.

**Output format: Markdown file only.** Save to `/mnt/user-data/outputs/<industry-name>-analysis.md`
and present it with `present_files`.

---

## Trigger Pattern

User says something like:
- `/analyze-industry [Industry Name]`
- `analyze the [X] industry`
- `industry x-ray: [X]`
- `research the [X] industry for me`
- Names a single industry and asks for a deep dive

If the industry name is ambiguous (e.g., "energy" — could mean oil & gas, renewables, utilities),
**ask one clarifying question** before proceeding.

---

## Research Protocol

### Step 0 — Plan Before You Search

Before making any web search calls, internally map out:
1. What are the 8 steps you need to fill?
2. What sub-questions does each step require?
3. Which searches will be most information-dense?

Then execute searches in logical order. **Cross-verify every significant claim
(market size, growth rate, major player share, key metrics) across at least 2 sources.**
If sources conflict, note the discrepancy and cite both — never silently pick one.

### Step 1 — Web Research (minimum 10 searches, scale to complexity)

Use `web_search` and `web_fetch` to answer each of the 8 steps below.
Suggested search patterns (adapt to the specific industry):

```
"[industry] value chain breakdown"
"[industry] business model margin analysis"
"[industry] market size 2024 2025"
"[industry] major players market share"
"[industry] Porter's Five Forces analysis"
"[industry] key performance metrics KPIs"
"[industry] biggest challenges problems inefficiencies"
"[industry] trends disruption next 5 years"
"[industry] competitive landscape"
"[industry] customer segments willingness to pay"
```

### Step 2 — Cross-Verification Rule

For any number, statistic, or market share claim:
- Search at least one corroborating source
- If you cannot verify, write: *"[Approximate — verify from primary source]"*
- Never present a number as exact when it is an estimate

### Step 3 — Honesty Flags

Apply these markers throughout the document:
- `[~]` = Approximate figure — verify from primary source
- `[!]` = Actively changing — check for updates post knowledge cutoff
- `[?]` = Conflicting sources found — see note

---

## The 8-Step Framework (What Each Section Must Cover)

### Phase 1: HOW IT WORKS (The Foundation)

**Step 1 — Value Chain**
- Map every major stage from raw material / input → end customer
- Name the key players/roles at each stage
- Identify where value is added vs. where it is merely transferred
- Note any bottlenecks or critical chokepoints in the chain

**Step 2 — How Money Is Made**
- Primary revenue model(s): subscription, transaction, project-based, licensing, etc.
- Where is margin actually captured? (Which node of the value chain is most profitable?)
- Major cost drivers (COGS, labor, logistics, R&D, regulatory compliance, etc.)
- Typical gross margin, operating margin ranges [~]
- Unit economics if relevant (CAC, LTV, payback period)

**Step 3 — Industry Customers**
- Customer segments (B2B / B2C / B2G, sub-segments within each)
- What are each segment's core needs and pain points?
- Willingness to pay — what drives it? (switching costs, regulation, necessity, status)
- Buying behavior: how long is the sales cycle? Who is the decision-maker?

---

### Phase 2: WHO CONTROLS IT (The Structure)

**Step 4 — Industry Dynamics: Porter's Five Forces**

For each force, give a rating (Low / Medium / High) and a paragraph of explanation:

| Force | Rating | Key Drivers |
|---|---|---|
| Competitive Rivalry | | |
| Supplier Power | | |
| Buyer Power | | |
| Threat of New Entrants | | |
| Threat of Substitutes | | |

Overall industry attractiveness summary paragraph.

**Step 5 — Competitors**
- Top 5–10 players with approximate market share [~]
- Each player's core strategy (cost leadership / differentiation / niche)
- How do leaders defend their moats? (IP, network effects, scale, regulation, brand)
- Recent M&A, consolidation trends
- Notable challengers / disruptors

---

### Phase 3: WHAT'S CHANGING (The Diagnosis)

**Step 6 — Key Metrics**
- The 8–12 numbers that define industry health and performance
- For each metric: what it is, typical benchmark range, and what moves it
- Examples by industry type:
  - Retail: same-store sales growth, inventory turnover, basket size
  - SaaS: ARR, churn, NRR, CAC:LTV
  - Manufacturing: capacity utilization, yield, cycle time
  - Healthcare: cost per patient, readmission rate, payer mix

**Step 7 — Industry Problems**
- The 5–7 most significant pain points, inefficiencies, or unresolved tensions
- For each: who is hurt by it, why hasn't it been solved, what is the scale of the problem
- Regulatory / compliance burdens
- Structural inefficiencies (information asymmetry, fragmentation, coordination failures)

**Step 8 — Industry Trends**
- 5–8 forces actively reshaping the industry over the next 3–5 years [!]
- For each trend: what it is, why it matters, who wins, who loses
- Technology disruptions
- Regulatory / policy shifts
- Demographic / cultural shifts
- Macroeconomic forces
- Sustainability / ESG pressures

---

## Output Document Structure

The final `.md` file must follow this exact structure:

```markdown
# [Industry Name] — Industry X-Ray Report
*Analyzed: [Date] | Framework: 8-Step Industry Mental Model*

---

## Executive Summary
[4–6 paragraph overview: what the industry is, its scale, who controls it,
 the 2–3 most important things to understand about it right now]

---

## Phase 1: How It Works

### 1. Value Chain
...

### 2. How Money Is Made
...

### 3. Industry Customers
...

---

## Phase 2: Who Controls It

### 4. Industry Dynamics — Porter's Five Forces
...

### 5. Competitors & Competitive Landscape
...

---

## Phase 3: What's Changing

### 6. Key Metrics
...

### 7. Industry Problems & Pain Points
...

### 8. Industry Trends (Next 3–5 Years)
...

---

## Synthesis: The Big Picture
[2–3 paragraphs pulling together the most important insights across all 3 phases.
 What is the fundamental nature of competition here? Where is value migrating?
 What should a new entrant, investor, or operator pay most attention to?]

---

## Sources & Verification Notes
[List key sources consulted. Flag any figures that need primary-source verification.]

*Legend: [~] Approximate figure | [!] Actively changing | [?] Conflicting sources*
```

---

## Quality Standards

- **Depth**: Each section should be substantive — 2–5 paragraphs minimum, more for complex topics.
  The full document should typically be 3,000–6,000 words.
- **Specificity**: Named companies, real figures (with uncertainty flags), concrete examples.
  No generic filler like "companies in this space focus on innovation."
- **Honesty**: Uncertain stats are flagged. Conflicting sources are noted. Recent events
  that may have shifted since knowledge cutoff are marked [!].
- **Usability**: After reading, someone with no prior knowledge of the industry should be able to
  hold an intelligent conversation about it with an insider.
- **No hallucination**: If you cannot find a verified number, say so. Do not invent statistics.

---

## Post-Research Checklist (run mentally before writing)

- [ ] Do I have real data for the value chain?
- [ ] Do I know where margin is actually captured (not just assumed)?
- [ ] Have I identified real customer segments with real differentiation?
- [ ] Have I scored all 5 Porter's forces with reasoning?
- [ ] Do I have the top 5+ competitors with approximate shares?
- [ ] Are my key metrics industry-specific (not generic)?
- [ ] Have I identified real, named pain points (not platitudes)?
- [ ] Are my trends backed by cited evidence?
- [ ] Have I cross-verified the 3 most important statistics?
- [ ] Is every uncertain figure flagged?

---

## Example Invocation

User: `analyze the electric vehicle industry`

→ Claude reads this SKILL.md
→ Runs 10–15 web searches covering all 8 steps
→ Cross-verifies market size, player shares, and key metrics
→ Writes the full structured `.md` document
→ Saves to `/mnt/user-data/outputs/electric-vehicle-industry-analysis.md`
→ Presents with `present_files`
