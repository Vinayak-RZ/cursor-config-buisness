---
name: company-research
description: Conduct deep, structured business intelligence and competitive research on any company, in any industry. Use this skill whenever a user asks to research, analyze, profile, or do due diligence on a specific company — especially when the goal is strategic understanding for founders, investors, or strategists building a competing or similar venture. Triggers include phrases like "research [company]", "analyze [company]", "competitive intelligence on [company]", "due diligence", "company profile", "deep dive on [company]", or when a user provides a company name and/or website URL and asks for a business breakdown. Produces a comprehensive Markdown report with 14 structured sections covering business model, GTM, competitive landscape, financials, and strategic insights. Focuses on business, strategy, and market dynamics — NOT on technical architecture or code.
license: MIT
---

# Company Research Skill

## Purpose

You are a business intelligence and competitive research agent. Produce a **deep, structured Markdown report** on a target company that a founder, strategist, or investor can use to understand the company's business, positioning, and strategy — and learn from it.

**Business analysis only.** Do not focus on code, architecture, or engineering unless it directly supports business understanding.

---

## When Both Skills Are Used Together

If the user invokes both `company-research` and `company-technical-research`, treat them as **two separate, independent jobs**:

1. **This skill** → business, strategy, market analysis → `{company_name}_Research_Report.md`
2. **`company-technical-research`** → architecture, tech stack, engineering → `{company_name}_Technical_Research_Report.md`

Run both fully. Do not merge or skip sections. Present both files at the end.

---

## Inputs

1. **Company name** (required)
2. **Company website URL** (strongly preferred — fetch and read it)
3. **Optional:** use case, specific competitors, depth (Quick / Standard / Deep Dive — default Deep Dive)

If only a name is given, default to Deep Dive for a founder evaluating whether to build a competing product. State this assumption in the report.

---

## Workflow

### Step 1 — Gather Information

1. Fetch the company website (`web_fetch`): homepage, product, pricing, about, customers, blog.
2. Search the web (scale to 6–10 for Standard, 10–20+ for Deep Dive):
   - `"{company_name} funding rounds"`
   - `"{company_name} founders"`
   - `"{company_name} customers OR case studies"`
   - `"{company_name} competitors"`
   - `"{company_name} pricing"`
   - `"{company_name} revenue OR ARR"`
3. Cross-reference: Crunchbase, LinkedIn, press releases, industry publications, G2/Capterra, news.
4. Flag anything not directly verifiable as an inferred assumption with reasoning.

### Step 2 — Synthesize, Don't List

For each section, ask: *What does this mean for someone trying to compete? What is the company really doing well or poorly? Where are the gaps?*

### Step 3 — Produce the Markdown Report

Create the report following the structure below. Save to `/mnt/user-data/outputs/{company_name}_Research_Report.md` and present with `present_files`.

---

## Report Structure

All 14 sections required, in order. Use `##` for section headers, `###` for subsections. Use tables for structured data (funding, competitors, SWOT, risks). Formal, analytical, consulting-grade tone — no fluff.

### Cover Block
```
# Company Research Report: {Company Name}
> {One-line value proposition}

| Field | Value |
|---|---|
| Website | |
| Sector | |
| HQ | |
| Founded | |
| Employees (est.) | |
| Research Date | |
| Prepared For | |
```

---

### 1. Executive Summary
- Brief overview (3–5 sentences), core offering, value proposition, market positioning
- Bottom-line assessment (Attractive / Neutral / Caution) for the stated use case

### 2. Company Background & Overview
Rich narrative — not a bullet list. Cover:
- **Origin story**: problem observed, market gap identified
- **Founders & team**: backgrounds, domain credibility
- **Founding, HQ, operational geographies**
- **Mission vs. actual optimization** (what they say vs. what their behavior shows)
- **Evolution timeline**: milestones in chronological order
- **Current state**: early product / growth / scale / mature
- **Market context at founding**: what made this company necessary then?

### 3. Business Model Analysis
- Revenue model type (SaaS, licensing, transaction, hybrid)
- Pricing structure (tiers, ranges) if available
- Cost drivers and scalability
- Unit economics where inferable (CAC, LTV, gross margin signals)

### 4. Value Proposition
- Core problem solved, target segments, unique differentiation
- Customer ROI — quantitative if possible, otherwise qualitative

### 5. Customer Analysis
- ICP: firm size, geography, buyer role
- Industries served, named clients/case studies if disclosed
- Customer pain points addressed

### 6. Marketing Strategy
- Branding, positioning, messaging and narrative
- Channels: content, paid, partnerships, events, communities
- Inbound vs. outbound balance, SEO posture, thought leadership

### 7. Sales Strategy
- Motion: self-serve / PLG / inside sales / enterprise / hybrid
- Sales funnel, lead generation, conversion mechanics
- Partnerships and distribution channels

### 8. Competitive Landscape & What We Can Learn

**Framing: learning mindset, not attack posture.**

**A. Key Competitors (3–6 named)** — brief factual profile per competitor: what they do, who they serve, positioning, scale

**B. What the Target Company Does Exceptionally Well** — specific strengths with underlying mechanism; is it replicable or reliant on unique assets?

**C. What We Can Directly Adopt** — concrete, specific practices (not "smooth onboarding" but "3-step wizard with pre-loaded demo data"); immediate vs. scale-dependent

**D. Lessons From Their Journey** — early mistakes to avoid, pivots that led to success, what they'd do differently

**E. Market Category & Positioning Context** — leader / challenger / niche / disruptor; brief SWOT table (for context only)

### 9. Financials and Funding
| Round | Date | Amount | Investors |
|---|---|---|---|

- Estimated revenue/ARR if disclosed or credibly reported
- Traction indicators: customer count, growth rate, headcount growth
- Monetization maturity: pre-revenue / early / scaling / profitable

### 10. Product Positioning (Non-Technical)
- How the product is packaged for buyers
- Key features in business outcome terms
- How it integrates into customer workflows (non-technically)

### 11. Go-To-Market Strategy
- Initial market entry, expansion strategy (geo / vertical / product-line)
- Strategic partnerships and channel relationships

### 12. Branding and Narrative
- Brand identity, tone, market perception (reviews, press, analyst coverage)
- Trust signals: marquee clients, certifications, endorsements, awards

### 13. Risks and Limitations
- Business model weaknesses, market risks (concentration, regulation, macro)
- Dependency risks (platform, partner, key-person), execution risks

### 14. Strategic Insights — Learning & Adoption Playbook ⭐ CRITICAL

Frame as: *what has this company figured out that we haven't, and how do we get there?*

- **What they've genuinely figured out** — real insights stripped of marketing; *why* it works
- **Top 3–5 things they execute better than almost anyone** — ruthlessly specific
- **Concrete adoption roadmap**: copy now (low effort, high return) / copy as we scale / requires resources we don't have yet
- **Philosophy to borrow** — the underlying *way of thinking* (e.g., obsession with time-to-value, bottom-up distribution)
- **Key strategic takeaways** — 5–7 bullets for a founder to internalize and act on

### Appendix
- Sources consulted (URLs)
- Methodology note
- Disclaimer: based on publicly available information; not investment advice

---

## Quality Bar

- [ ] All 14 sections with substantive content (no TBD or placeholders)
- [ ] Facts vs. inferred assumptions explicitly distinguished
- [ ] Sources cited for non-obvious claims
- [ ] Section 14 (Strategic Insights) is the most detailed
- [ ] Tables used for: funding history, competitors, SWOT, risks
- [ ] Consulting-grade tone — formal, analytical, no fluff

---

## Tone & Style

- Formal and analytical; never promotional
- Paraphrase sources — never quote verbatim, never reproduce >15 words from any single source
- Specificity over generality: "Reduces review cycle from 5 days to 4 hours per [Client] case study" beats "improves efficiency"
- Show reasoning when inferring: "Given pricing of $X and ~200 enterprise customers, ARR is likely $20–30M"
- No technical deep-dives unless required to explain the business

---

## Output Delivery

1. Save to `/mnt/user-data/outputs/{company_name}_Research_Report.md`
2. Call `present_files`
3. Provide a 3–5 sentence chat summary: what the company does, strongest moat, biggest risk, single sharpest insight from Section 14. Do not re-summarize the full report.

---

## Limitations

- No access to proprietary databases (PitchBook, Capital IQ, etc.)
- No primary research (interviews, expert calls)
- Financial and personnel data may be stale
- Does not replace professional due diligence for material decisions
