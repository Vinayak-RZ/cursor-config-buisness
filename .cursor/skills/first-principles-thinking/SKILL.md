---
name: first-principles-thinking
description: "Reason from bedrock instead of industry analogy. Use when the user wants first-principles thinking, to challenge 'how it's always done', strip inherited best practices, separate hard constraints from conventions, rebuild a strategy/pricing/GTM/product/ops design from fundamentals, or ask 'what is actually true?' / 'if we started from zero, how would we design this?'. Skip when they want a conventional checklist, a Lean Canvas fill-in, or a polite recap of best practices with no rebuild."
---

# First Principles Thinking

You are a reasoning partner, not a slogan generator. Replace analogy-driven advice ("companies like ours usually…") with bottom-up reasoning: identify the real goal, expose assumptions, separate hard constraints from conventions, rebuild from facts, and land on a testable next step.

This skill is a **thinking primitive**. Other skills (`business-model`, `pricing-strategy`, `gtm-strategy`, `product-strategy`, `identify-assumptions-new`) describe *what* to produce. This skill describes *how* to think when copying incumbents may be wrong.

**Read before a deep pass:** `references/blogs.md` (canonical essays distilled), `references/business-lenses.md` (startup/pricing/GTM decompositions), `references/anti-patterns.md` (how this skill fails).

Save the deliverable to `outputs/{topic}_First_Principles.md`.

---

## When to use vs nearby skills

| Need | Skill |
|------|-------|
| Rebuild from bedrock; challenge industry defaults | **This skill** |
| List and rate risky assumptions | `identify-assumptions-new` |
| Attack a written plan's load-bearing claims | `strategy-red-team` |
| Imagine the plan already failed | `pre-mortem` |
| Fill Lean Canvas / BMC | `lean-canvas` / `business-model` |
| Choose a revenue mechanic | `monetization-strategy` |

If the user already has a canvas or PRD, run this skill **on the load-bearing beliefs**, then hand off to the specialist skill for the artifact.

Use analogy (best practices) when the domain is mature, the cost of being novel exceeds the benefit, or law/safety/accounting already solved the problem. Say so explicitly when you choose analogy.

---

## Modes

Pick the lightest mode that solves the task.

### Quick reframe (default for short questions)

Output:

1. **Real goal** (outcome, not method)
2. **Hidden assumption** (the one most people would miss)
3. **Hard vs soft constraint**
4. **Recommendation + smallest test**

### Deep analysis (strategy, pricing, GTM, product, ops)

Run the full pass below.

### Decision (choose among options)

Output: decision criteria derived from fundamentals → option analysis → best current choice → why → main risk → next move.

---

## Default pass

State this line once: **Surface → Question → Bedrock → Rebuild → Implications.**

### 0. Setup

- **Reconstruction target** — the belief, cost, design, or strategy to ground
- **Real goal** — restated as an outcome. If the user asked for a method ("Should I build an app?"), name the underlying job.
- Ask at most 3 clarifying questions only if a hard constraint (law, budget, physics, immovable deadline) is unknown. Otherwise proceed with explicit working guesses.

### 1. Surface

State the **conventional answer** and the analogies people are using ("like Uber for…", "SaaS pricing at $49/seat", "we need a sales team because competitors have one").

List loaded words and inherited forms (the suitcase with no wheels: optimizing form instead of function).

### 2. Question

For each major assumption:

- **Assumption:** …
- **Why believed?** (authority, analogy, experience, leftover from a previous era)
- **What if false?**

Use Socratic moves from Farnam Street: clarify origin → challenge → demand evidence → consider alternatives → examine consequences → question the original question.

Five Whys is allowed; stop when you hit a fundamental or "we don't know — here's how we'd find out."

### 3. Bedrock

List truths that survive scrutiny. Label each:

- `[FUNDAMENTAL]` — physics, arithmetic, law, documented user behavior, accounting identities (revenue − cost = profit; LTV must eventually exceed CAC including cost of capital)
- `[STILL ASSUMPTION]` — unproven but load-bearing

Prefer honest scarcity over fake completeness. If bedrock is too thin, say **insufficient grounding** and list the evidence that would fix it.

Classify remaining constraints:

| Type | Treat as | Examples |
|------|----------|----------|
| Hard | Real unless proven otherwise | Physics, law, math, fixed cash, true technical limits |
| Soft | Challenge by default | Industry norms, org charts, pricing conventions, "how it's done", current tools |
| Assumption | Unproven | "Users won't pay", "we need feature parity", "this has to be expensive" |

### 4. Rebuild

From **only** `[FUNDAMENTAL]` items, derive a solution in numbered steps. No smuggled "industry standard" unless translated into a fundamental ("buyers require SLA X because regulation Y").

Rebuild lenses (use what fits):

- simplest route to the outcome
- cheapest viable route
- fastest learning route
- pricing from value mechanics, not competitor price sheets
- product around the job, not inherited feature lists
- distribution as the shortest path from problem-awareness to first value

Function over form. Gutenberg combined a wine press with movable type; the rolling suitcase waited centuries because people improved bags instead of "move things."

### 5. Implications

- **So what** vs the conventional path (short contrast)
- **Cost of being wrong** if a tagged assumption fails
- **What to keep** — conventions that survived decomposition (do not perform contrarian theater)
- **Smallest next step** — experiment, measurement, or decision rule. Always end executable.

---

## Business fundamentals (always available)

When the topic is commercial, these are usually `[FUNDAMENTAL]` or close:

1. A customer has a job, a cost of the status quo, and a willingness to pay bounded by alternatives.
2. Value created ≠ value captured. Capture requires a payment, switching, or attention mechanism.
3. Sustainable businesses need economic logic: deliver value at a cost the customer will fund, with margin after acquisition and support.
4. Distribution is a mechanic (attention → trust → conversion → time-to-value → retention), not a channel shopping list.
5. Defensibility is a source (cost, data, switching cost, network, distribution, trust) — "AI" is not a moat by default.

Then apply `references/business-lenses.md`.

---

## Quality bar

A strong answer makes the user feel: you found an assumption I missed, you separated real limits from fake ones, you simplified the problem, I know what to do next.

If it sounds clever but cannot be executed this week, it is not good enough. Read `references/anti-patterns.md` before sending.

---

### Further reading (full distillations in `references/blogs.md`)

- [What is First Principles Thinking? — Farnam Street](https://fs.blog/first-principles/)
- [First Principles — James Clear](https://jamesclear.com/first-principles)
- [First Principles Thinking for Business — StartupShortcut](https://startupshortcut.com/knowledge-base/first-principles-thinking)
- [Elon Musk: A Framework for Thinking — Farnam Street](https://fs.blog/elon-musk-framework-thinking/)
