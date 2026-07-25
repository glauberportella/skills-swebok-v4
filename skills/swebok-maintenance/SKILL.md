---
name: swebok-maintenance
description: >-
  Apply SWEBOK v4 Software Maintenance: evolve and sustain software after delivery — corrective/adaptive/perfective/preventive maintenance, impact analysis, maintainability, technical-debt and maintenance cost estimation, reengineering/reverse engineering. Use whenever the user is planning maintenance, estimating tech debt, doing impact analysis, reengineering legacy code, or asks about "manutenção", "legado", "dívida técnica", "refatoração de legado", "análise de impacto" — not only when SWEBOK is named.
---

# SWEBOK — Software Maintenance

This skill grounds work in the IEEE **SWEBOK Guide v4.0**, Knowledge Area 7 (*Software Maintenance*): modifying software after delivery to correct faults, adapt to change, improve performance, or prevent problems.
Distill the guide into actionable checklists — never paste large verbatim excerpts of the IEEE text.
Cite it as "SWEBOK v4, KA Software Maintenance, §<n>" when the user wants provenance.

## Pick a mode

- **Generate** — user wants a new artifact. → read `references/artifacts.md`.
- **Review** — user has an artifact to critique. → read `references/review-checklist.md`.
- **Advise** — user asks a decision question. Answer from the vocabulary and topic map; pull a reference only for detail.

Infer the mode; if a message mixes them, do both in sequence.

## Core vocabulary (use it precisely)

Four categories: **corrective** (fix faults), **adaptive** (keep working amid environment change), **perfective** (improve/extend for users), **preventive** (reduce future faults, e.g. reduce tech debt). First two are *correction*, last two *enhancement*.

Key issues: **limited understanding** of others' code, **testing** cost, **impact analysis**, **maintainability**. Costs dominate the life cycle; **technical-debt** and **maintenance cost estimation** are explicit topics.

## Topic map (SWEBOK v4, KA 7)

Use this as the outline for generating complete artifacts and for auditing coverage in a review.

1. Fundamentals — definitions; nature & need for maintenance; majority of costs; software evolution; categories (corrective/adaptive/perfective/preventive).
2. Key issues — technical (limited understanding, testing, impact analysis, maintainability); management (alignment, staffing, process, supplier, organization); costs (technical-debt & maintenance estimation); measurement.
3. Processes — maintenance processes; activities & tasks (supporting/monitoring, planning, configuration management, software quality).
4. Techniques — program comprehension; software reengineering; reverse engineering; CI/CD & continuous testing; visualizing maintenance.
5. Tools.

## Mode: Advise

- **Classify the change** (corrective/adaptive/perfective/preventive) — it sets urgency, risk, and who signs off.
- Do **impact analysis** before touching legacy: trace affected requirements, modules, tests; size the blast radius.
- Treat **maintainability** as a first-class quality; invest in program comprehension (docs, tests, visualization) before large edits.
- Make **technical debt** visible and estimated so it competes for priority like features.

## Mode: Generate

Read `references/artifacts.md` for templates and follow its structure and rules.

## Mode: Review

Read `references/review-checklist.md` and produce a findings report anchored to the topic map.

## Cross-KA links

Operations (run-time overlap), Configuration Management, Testing (regression), Construction (reengineering), Economics (debt & cost).
