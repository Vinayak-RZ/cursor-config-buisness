# Business models

Skill: **`business-model`**

How the enterprise **creates, delivers, and captures** value — Magretta's story, St. Gallen's Who/What/How/Value, Osterwalder's 9-block BMC, and pattern recombination. This is the missing operational canvas next to `lean-canvas` (hypotheses) and `product-strategy` (competitive choices).

## What "a model that works" means here

Not a trendy canvas. A model that works has:

1. A two-minute story a smart outsider believes
2. An unambiguous payer
3. One or two **proven patterns** (subscription, two-sided market, razor-and-blade, etc.) argued for this context
4. Economics that still close if the riskiest input is 2× worse
5. Tests with kill criteria

St. Gallen research: on the order of **90%** of business-model "innovations" recombine existing patterns. Start there. Use `first-principles-thinking` when the industry's default pattern *is* the failure.

## vs other skills

| Need | Skill |
|------|-------|
| Full system: who, delivery, capture, BMC, patterns | `business-model` |
| Startup hypotheses, speed | `lean-canvas` |
| Vision, trade-offs, defensibility | `product-strategy` |
| Revenue mechanic brainstorm only | `monetization-strategy` |
| Price architecture | `pricing-strategy` |
| Industry default may be wrong | `first-principles-thinking` then `business-model` |

## Prompts

```text
Use the business-model skill. Design how we make money for a B2B workflow tool for insurance underwriters. Compare subscription vs pay-per-use vs solution-provider.

Diagnose Stripe's business model (pattern + BMC + economics). What would break if take-rate compressed?

We think we're a marketplace. Confront two-sided market vs solution provider vs licensing. Pick one and fill the canvas.
```

## Outputs

`outputs/{name}_Business_Model.md`

## Sources

- Joan Magretta, [Why Business Models Matter](https://hbr.org/2002/05/why-business-models-matter) (HBR, 2002)
- Osterwalder & Pigneur, Business Model Generation (BMC)
- Gassmann et al., [St. Gallen Business Model Navigator](https://bmilab.com) — 55+ patterns
- [Pattern explorer](https://businessmodelnavigator.com/explore)

Pattern cards for agents: `.cursor/skills/business-model/references/patterns.md`.
