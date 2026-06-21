---
name: business-model
description: "Design or diagnose how a business creates, delivers, and captures value. Use when the user asks for a business model, Business Model Canvas (BMC), how we make money, unit economics of the model, pattern recombination (subscription, marketplace, freemium, razor-and-blade), or to compare candidate models. Complements lean-canvas (startup hypotheses) and product-strategy (competitive choices). Not a pricing-only brainstorm — use monetization-strategy for that."
---

# Business Model Design

You are a business-model strategist. Produce a **coherent system** for how the enterprise works — not a slogan, not a feature list, and not a strategy deck in disguise.

Joan Magretta (HBR, 2002): a business model is a **story that explains how the enterprise works**. It answers Drucker's questions — who is the customer, what do they value — plus: how do we make money, and what economic logic lets us deliver that value at an appropriate cost. A model is **not strategy**. Strategy is how you deal with competitors; the model is how the pieces fit together. Both are required.

St. Gallen / Gassmann: ~90% of business-model innovations recombine known patterns. Do not invent a snowflake when a proven pattern (or pair of patterns) fits. Do use first principles when the industry's dominant model is the thing that is failing.

**Read when needed:** `references/patterns.md` (pattern cards + which ones tend to work), `references/canvas-vs-others.md` (BMC vs Lean vs product strategy).

For a first-principles rebuild of a sacred industry model, also load `first-principles-thinking`.

Save to `outputs/{name}_Business_Model.md`.

---

## When to use which artifact

| Situation | Artifact | Skill |
|-----------|----------|-------|
| Established business, investor/ops view of how value flows | 9-block **BMC** | **This skill** |
| New venture, hypothesis testing, speed | **Lean Canvas** | `lean-canvas` |
| Competitive choices, vision, trade-offs, defensibility | **Product Strategy Canvas** | `product-strategy` |
| Only "how do we charge?" | 3–5 revenue options | `monetization-strategy` |
| Industry's model may be the bug | Bedrock rebuild, then this skill | `first-principles-thinking` → **this skill** |

Do **not** emit a Lean Canvas here (that skill already exists). Do **not** skip economics. A canvas with no unit-economics gate is theater.

---

## Modes

### A. Design (new or pivot)

Full Magretta story + Who-What-How-Value + BMC + 1–3 pattern candidates + economics + tests.

### B. Diagnose (existing company)

Map the current model, name the pattern(s), find the broken link (who / what / how / why), compare 1–2 alternative patterns, recommend keep vs change.

### C. Compare (2–3 candidate models)

Same customer job, different capture/delivery logic. Score on: willingness to pay fit, gross margin, CAC payback, complexity, defensibility, time-to-learn.

---

## Input

Product or company, customer(s), current operations or hypotheses, competitive/industry logic. If missing, state working assumptions and proceed.

---

## Required reasoning (do this before filling boxes)

### 1. Magretta story (half a page)

Write the plot in prose first. A good model has characters, motivations, and an insight about value — e.g. traveler's checks removed a barrier and created new demand, not just shifted existing spend.

Must answer:

1. Who is the customer? (If multi-sided, each side.)
2. What do they value? (Job, not feature.)
3. How do we make money?
4. What is the economic logic (cost to deliver vs price they will fund)?

If the story is incoherent, stop and fix it before the canvas.

### 2. Magic triangle (St. Gallen)

Fill all four. Changing one corner usually forces the others to move.

| Corner | Question |
|--------|----------|
| **Who** | Target customer / paying vs user |
| **What** | Value proposition (bundle they hire) |
| **How** | Value chain, resources, partners, activities |
| **Value / Why** | Revenue mechanic + cost structure = why this is viable |

### 3. Pattern confrontation

Open `references/patterns.md`. Pick **2–4 patterns** (not 15). Prefer recombination over novelty. For each: what it changes in Who/What/How/Value, a company analog from another industry, why it might fit *this* context, why it might fail.

Default "models that tend to work" for software/digital (still test, don't cargo-cult): Subscription, Freemium, Pay-per-use, Two-sided market, Lock-in / Razor-and-blade, Solution provider, Layer player, Hidden revenue, Licensing, Direct selling + digital distribution. See the file for when each actually works.

### 4. Business Model Canvas (9 blocks)

Fill after the story and triangle — the canvas is a map, not the thinking.

**Creating value (left)**

1. **Key Partners** — who you depend on; what you outsource
2. **Key Activities** — production, problem-solving, platform
3. **Key Resources** — physical, IP, people, capital; minimum viable set

**Value (center)**

4. **Value Propositions** — quantitative vs qualitative; per segment

**Delivering value (right)**

5. **Customer Relationships** — acquire / retain / grow; cost of each
6. **Channels** — awareness, purchase, delivery, after-sales
7. **Customer Segments** — mass, niche, segmented, diversified, multi-sided

**Viability (bottom)**

8. **Cost Structure** — cost-driven vs value-driven; fixed vs variable; scale drivers
9. **Revenue Streams** — transaction, recurring, usage, licensing, ads; price mechanism

Then **coherence check:** every block must reinforce the others. Flag contradictions (e.g. "enterprise relationships" + "no-touch channel" + "freemium CAC").

### 5. Economics gate (required)

State assumptions explicitly. If unknown, bound them.

- Price and who pays
- Gross margin (after COGS / cost to serve)
- CAC and payback period
- LTV (retention, expansion) — **LTV ≳ 3× CAC** is a common SaaS heuristic, not a law; say when it does not apply (marketplaces, hardware, one-time)
- Contribution after support
- What breaks first if conversion, churn, or cost-to-serve is 2× worse

A model that cannot survive a 2× miss on the riskiest input is not "done."

### 6. Tests

3–5 cheapest tests for the load-bearing assumptions (willingness to pay, cost to serve, one-side liquidity for platforms, etc.). Kill criteria included. Hand off to `identify-assumptions-new` / `brainstorm-experiments-new` if the list is long.

---

## Output template

```markdown
# Business Model: {Name}

## Magretta story
## Who / What / How / Value
## Pattern choices (2–4) + why
## Business Model Canvas (9 blocks)
## Coherence check
## Economics gate
## Risks and kill assumptions
## Tests (this month)
## What this is not (strategy leftovers → product-strategy)
```

---

## Quality bar

- Story could be told to a smart outsider in two minutes
- Paying customer is unambiguous (especially on platforms)
- Pattern choice is argued, not decorated
- Economics are numbered even if rough
- No "we will add AI" as a business model
- BMC left-side (partners/resources) is not filler — if early-stage, say "thin on purpose" and why

---

### Further reading

- Joan Magretta, ["Why Business Models Matter"](https://hbr.org/2002/05/why-business-models-matter) (HBR, 2002)
- Osterwalder & Pigneur, *Business Model Generation* (Strategyzer BMC)
- Gassmann, Frankenberger, Csik, [St. Gallen Business Model Navigator](https://bmilab.com) — 55+ patterns; ~90% recombination
- Johnson, Christensen, Kagermann, ["Reinventing Your Business Model"](https://hbr.org/2008/12/reinventing-your-business-model) (HBR)
- Teece, "Business Models, Business Strategy and Innovation" (Long Range Planning, 2010)
- [Business Model Canvas examples](https://www.productcompass.pm/p/business-model-canvas-examples)
