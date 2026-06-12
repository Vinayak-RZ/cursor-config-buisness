---
name: company-technical-research
description: Conduct deep, structured technical research and product/system analysis on any company, in any industry. Use this skill whenever a user asks how a product or company works *under the hood* — its architecture, tech stack, data pipelines, algorithms, integrations, scalability, or how to reverse-engineer or replicate it. Triggers include phrases like "how does [company/product] work technically", "technical analysis of [company]", "architecture of [product]", "tech stack of [company]", "reverse engineer [product]", "technical deep dive on [company]", "system design of [product]", or when a user provides a company name and/or website URL and asks for an engineering-level breakdown. This is the technical counterpart to the `company-research` skill — focuses on engineering, architecture, and system design — NOT on business model, GTM, or competitive strategy.
license: MIT
---

# Company Technical Research Skill

## Purpose

You are a technical research and product analysis agent. Produce a **deep, structured Markdown report** on a target company that an engineer or technical founder can use to **fully understand, replicate, or improve upon the underlying system**.

**Technical analysis only.** Focus on *how* the system works — architecture, data flow, technologies, algorithms, performance. Not on revenue model, GTM, or competitive positioning. For the business angle, use `company-research` (or run both in parallel).

---

## When Both Skills Are Used Together

If the user invokes both `company-research` and `company-technical-research`, treat them as **two separate, independent jobs**:

1. **`company-research`** → business, strategy, market → `{company_name}_Research_Report.md`
2. **This skill** → architecture, tech stack, engineering → `{company_name}_Technical_Research_Report.md`

Run both fully. Do not merge or skip sections. Present both files at the end.

---

## Inputs

1. **Company name** (required)
2. **Company website URL** (strongly preferred — fetch `/docs`, `/api`, `/engineering`, `/developers`, `/blog`)
3. **Optional:** goal (replicate, integrate, audit, evaluate), specific subsystem of interest, depth (Quick / Standard / Deep Dive — default Deep Dive)

If only a name is given, default to Deep Dive for an engineer who wants to understand the system well enough to build a competing product. State this assumption in the report.

---

## Workflow

### Step 1 — Gather Technical Information

1. Fetch company website and developer surfaces (`web_fetch`): homepage, product pages, `/docs`, `/api`, `/developers`, `/sdk`, `/integrations`, engineering blog, technical whitepapers, status page.
2. Search the web (8–12 for Standard, 15–25+ for Deep Dive):
   - `"{company_name} architecture"`
   - `"{company_name} tech stack"`
   - `"{company_name} engineering blog"`
   - `"{company_name} API documentation"`
   - `"{company_name} StackShare OR BuiltWith"`
   - `"{company_name} GitHub"`
   - `"{company_name} job postings engineer"` (job ads leak the stack)
   - `"{company_name} machine learning OR ML model"`
   - `"{company_name} security SOC 2 OR ISO 27001"`
   - `"{company_name} performance benchmark OR latency"`
3. Cross-reference: engineering blogs, conference talks (re:Invent, KubeCon, QCon), podcasts, patents, academic papers, YouTube tech talks, LinkedIn engineer profiles.
4. **Flag everything not directly stated by the company as inferred**, with the signal and reasoning shown.

### Step 2 — Synthesize and Infer

For each section, ask: *Why would they build it this way? What do these technology choices imply about scale, latency, or team size? What's the actual data flow? Where are the bottlenecks?*

When direct evidence is missing, infer responsibly: state the inference, the signal (e.g., "job posting mentions Kafka → event-driven ingestion layer"), and confidence level (Low / Medium / High).

### Step 3 — Produce the Markdown Report

Create the report following the structure below. Save to `/mnt/user-data/outputs/{company_name}_Technical_Research_Report.md` and present with `present_files`.

---

## Report Structure

All 15 sections required, in order. Use `##` for section headers, `###` for subsections. Use tables for tech stack, performance metrics, and integration matrix. Use text-described architecture diagrams (ASCII or labeled block descriptions) where they aid understanding. Precise, technical, analytical tone — no marketing language.

### Cover Block
```
# Technical Research Report: {Company Name}
> {One-line technical positioning, e.g., "Event-driven SaaS platform built on streaming ML and microservices"}

| Field | Value |
|---|---|
| Website | |
| Product Category | |
| Deployment Model | |
| Research Date | |
| Prepared For | |
| Confidence Level | Low / Medium / High |
```

---

### 1. Company Background (Technical Context)
Context that directly informs every technical decision they made:
- **Founders & technical team**: engineering backgrounds, prior companies, areas of deep expertise (ex-FAANG, domain specialists?)
- **Origin story** (technically framed): what existing tools/approaches were inadequate and why?
- **Founding, HQ, geographies** — relevant for data residency and compliance baked into architecture
- **Product evolution**: key technical milestones — first version, major rewrites, infrastructure migrations, platform shifts
- **Team size signals**: engineering headcount inferred from LinkedIn/job postings
- **Current technical maturity**: MVP / production-grade / enterprise-scale / platform

### 2. Technical Executive Summary
- System overview (3–5 sentences)
- Core technical capabilities, primary data flows, fundamental architectural paradigm (microservices, event-driven, ML-first, etc.)
- Confidence assessment: how much of this is confirmed vs. inferred?

### 3. System Architecture Overview
The centerpiece of the report. Include a **text-described architecture diagram** (ASCII or labeled block description):
- High-level architecture (monolith, microservices, serverless, hybrid)
- Major system components and how they connect
- Data flow: from user action to result, end-to-end
- Infrastructure layer: cloud provider(s), regions, deployment model (multi-tenant SaaS, dedicated, on-prem option?)
- Any unique or notable architectural decisions; trade-offs made

### 4. Tech Stack

| Layer | Technologies | Confidence | Signal Source |
|---|---|---|---|
| Frontend | | | |
| Backend | | | |
| Data / Storage | | | |
| ML / AI | | | |
| Infrastructure | | | |
| DevOps / CI-CD | | | |
| Observability | | | |

For each confirmed or inferred technology, note why they likely chose it over alternatives.

### 5. Data Architecture
- Data sources ingested (structured, unstructured, third-party feeds)
- Data storage: transactional DB, data warehouse, feature store, object storage
- Data pipelines: batch, streaming, or hybrid (Kafka, Spark, Flink, Airflow, etc.)
- Data modeling approach: schema design, normalization, event sourcing
- Data quality, lineage, and governance mechanisms

### 6. ML / AI Systems (if applicable)
- Model types used (gradient boosting, neural nets, graph models, LLMs, rules engines)
- Training pipeline: data sourcing, feature engineering, model training, validation
- Inference architecture: batch scoring vs. real-time, serving layer (SageMaker, TorchServe, custom), latency targets
- Feature store and feature management
- Model lifecycle management: versioning, A/B testing, retraining triggers, monitoring
- Key ML trade-offs: precision/recall priorities, explainability requirements

### 7. API & Integration Design
- API paradigm: REST, GraphQL, gRPC, webhooks, SDKs
- Key integration patterns: event-driven, polling, synchronous calls
- Integration with third-party systems (what and how)
- Developer experience: documentation quality, sandbox availability, SDK languages
- Rate limiting, versioning, deprecation approach

### 8. Core Product Workflow — End-to-End Walkthrough
Walk through the most important workflow (e.g., a user submitting a request and receiving a result) step-by-step from a technical perspective:
- Entry point → data capture → processing → scoring/decision → output/action
- Where are the human-in-the-loop checkpoints?
- What are the latency-critical vs. async steps?

### 9. Scalability & Performance Architecture
- Horizontal vs. vertical scaling approach
- Load balancing, auto-scaling, queue-based load leveling
- Caching strategy (in-memory, CDN, query caching)
- Database scaling (read replicas, sharding, CQRS)
- Multi-region or global distribution signals

### 10. Mobile / Client Architecture (if applicable)
- Native (iOS/Android) vs. cross-platform (React Native, Flutter)
- Client-side data handling, offline capability, sync strategy
- SDK architecture if they offer an embeddable SDK

### 11. Performance Benchmarks
- Latency (p50, p95, p99 if disclosed)
- Accuracy / precision / recall for ML systems
- Throughput (events/sec, requests/day, jobs/hour)
- Real-world performance claims — flag whether validated or marketing

### 12. Security and Compliance
- Encryption: at rest (AES-256), in transit (TLS 1.2+), key management
- IAM: SSO, SAML, RBAC, ABAC
- Certifications: SOC 2 Type II, ISO 27001, GDPR, HIPAA, PCI-DSS, and any industry-specific regulatory requirements
- Audit logging and tamper-evidence

### 13. Observability and Monitoring
- Logging stack (ELK, Splunk, Datadog, structured logging)
- Metrics and tracing (Prometheus, Grafana, OpenTelemetry, distributed tracing)
- ML observability: model drift, data drift, prediction monitoring
- Error handling, alerting, on-call paradigm

### 14. Limitations and Technical Challenges
- Known/inferred bottlenecks (e.g., synchronous third-party calls in the hot path)
- Scalability constraints, model limitations and biases, training data gaps
- Integration challenges with legacy or third-party systems
- Technical debt signals (job postings asking to "modernize" something = it's painful)

### 15. Technical Learning & Adoption Playbook ⭐ CRITICAL

Frame as: *what has this company figured out at the engineering level that we should study and adopt?*

- **What this system does exceptionally well technically** — specific decisions, why they work
- **Technical innovations worth copying** — broken down by: adopt now (current team/stack) / plan for at scale / requires specialized expertise or data we don't have
- **Concrete reference architecture to adopt from** — not a copy, but a starting-point architecture (services, queues, datastores, ML components) embedding their best decisions
- **Build order / MVP path** — what to build first, second, third; what to defer
- **Engineering philosophy to borrow** — the underlying mindset (e.g., "everything as an event", "ML as first-class infrastructure", "integration-first design")
- **Engineering takeaways** — 5–7 bullets a technical founder should internalize and act on

### Appendix
- Sources consulted (URLs)
- Confidence-level methodology note
- Glossary of technical terms used
- Disclaimer: technical details are inferred from public information and may differ from actual implementation

---

## Quality Bar

- [ ] All 15 sections with substantive content (no TBD or placeholders)
- [ ] Every inference labeled with signal and confidence level
- [ ] Sources cited for non-obvious technical claims
- [ ] Section 15 (Technical Learning Playbook) is the most detailed
- [ ] At least one text-described architecture diagram in Section 3
- [ ] At least one end-to-end workflow walkthrough in Section 8
- [ ] Tables used for: tech stack, performance metrics, integration matrix

---

## Tone & Style

- Precise and technical; never marketing-flavored
- Paraphrase all sources — never quote verbatim, never reproduce >15 words from any single source
- "How" over "what": "Requests scored by a gradient-boosted model on SageMaker fed from a Feast feature store" beats "uses AI to process data"
- Show inference reasoning: "Job posting requires Kafka + Flink → likely streaming ingestion + real-time processing layer (Confidence: Medium)"
- Name patterns explicitly where applicable (CQRS, event sourcing, lambda architecture, sidecar, service mesh)
- If a topic has no public signal, say so and skip — do not pad

---

## Output Delivery

1. Save to `/mnt/user-data/outputs/{company_name}_Technical_Research_Report.md`
2. Call `present_files`
3. Provide a 3–5 sentence chat summary: architectural paradigm in one phrase, most interesting technical choice, biggest engineering risk, single sharpest adoption insight from Section 15. Do not re-summarize the full report.

---

## Pairing With `company-research`

| `company-research` | `company-technical-research` |
|---|---|
| Business model, GTM, financials | Architecture, tech stack, pipelines |
| Strategic moat | Technical moat |
| For founders/investors | For engineers/technical founders |
| "Should we compete?" | "How do we build it?" |

---

## Limitations

- No access to proprietary architecture documents or internal repos
- Cannot inspect production systems, non-public APIs, or infrastructure
- Inferred architecture may differ significantly from actual implementation
- Job postings, conference talks, and patents may be outdated or aspirational
- Does not replace a professional technical due diligence engagement
