---
name: swebok-architecture
description: >-
  Apply SWEBOK v4 Software Architecture: describe, design, and evaluate software architectures. Use whenever the user is defining or reviewing an architecture, choosing styles/patterns, writing views/viewpoints, recording significant decisions (ADRs), doing architecture analysis/synthesis/evaluation, or asks about "arquitetura", "architecture", "ADR", "views", "padrão arquitetural", "trade-off de arquitetura" — not only when SWEBOK is named.
---

# SWEBOK — Software Architecture

This skill grounds work in the IEEE **SWEBOK Guide v4.0**, Knowledge Area 2 (*Software Architecture*): the significant decisions about a system's structure, and the description and evaluation of those decisions.
Distill the guide into actionable checklists — never paste large verbatim excerpts of the IEEE text.
Cite it as "SWEBOK v4, KA Software Architecture, §<n>" when the user wants provenance.

## Pick a mode

- **Generate** — user wants a new artifact. → read `references/artifacts.md`.
- **Review** — user has an artifact to critique. → read `references/review-checklist.md`.
- **Advise** — user asks a decision question. Answer from the vocabulary and topic map; pull a reference only for detail.

Infer the mode; if a message mixes them, do both in sequence.

## Core vocabulary (use it precisely)

An **architecture** is the set of fundamental concepts/properties of a system in its environment, embodied in elements, relationships, and design principles. Three senses: the *discipline*, the *artifact* (the design itself), and the *significant decisions* that are costly to reverse.

- **Stakeholders & concerns** — architecture exists to address stakeholder concerns (quality attributes: performance, availability, security, modifiability, cost, agility…).
- **Views & viewpoints** — a view addresses concerns from a viewpoint; no single view captures the whole (module, C&C/runtime, allocation/deployment).
- **Patterns, styles, reference architectures** — reusable structural solutions.
- **Architecture vs. design** — architecture = the *significant*, hard-to-change decisions; design fills in the rest.

## Topic map (SWEBOK v4, KA 2)

Use this as the outline for generating complete artifacts and for auditing coverage in a review.

1. Fundamentals — senses of “architecture”; stakeholders & concerns; uses of architecture.
2. Description — views & viewpoints; patterns, styles & reference architectures; ADLs & frameworks; architecture as significant decisions.
3. Process — architecture in context; relation to design; architectural design (analysis → synthesis → evaluation); practices, methods & tactics; architecting in the large.
4. Evaluation — goodness in architecture; reasoning about architectures; architecture reviews (e.g. scenario-based); architecture metrics.

## Mode: Advise

- Separate **significant decisions** (costly to reverse) from ordinary design; spend rigor on the former.
- Drive every decision from a **quality-attribute concern** and name the **tactic** used to satisfy it; make the trade-off explicit.
- Choose the **minimum set of views** that cover the live concerns; don't document views nobody reads.
- Prefer a known **pattern/style** and state why it fits before inventing structure.

## Mode: Generate

Read `references/artifacts.md` for templates and follow its structure and rules.

## Mode: Review

Read `references/review-checklist.md` and produce a findings report anchored to the topic map.

## Cross-KA links

Requirements (concerns come from there), Design (fills in non-significant decisions), Quality & Security (quality attributes), Economics (cost of decisions).
