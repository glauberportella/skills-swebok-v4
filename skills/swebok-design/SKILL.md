---
name: swebok-design
description: >-
  Apply SWEBOK v4 Software Design: turn requirements/architecture into module- and component-level design. Use whenever the user is doing high-level or detailed design, applying design principles (coupling/cohesion, information hiding, SOLID-style ideas), choosing a design method (OO, structured, DDD, event-driven, component-based), recording structural/behavioral design, or asks about "design", "projeto de software", "design pattern", "acoplamento", "coesão", "diagrama de classes" — not only when SWEBOK is named.
---

# SWEBOK — Software Design

This skill grounds work in the IEEE **SWEBOK Guide v4.0**, Knowledge Area 3 (*Software Design*): the process and artifacts that define how a system is decomposed into parts and how those parts behave and interact.
Distill the guide into actionable checklists — never paste large verbatim excerpts of the IEEE text.
Cite it as "SWEBOK v4, KA Software Design, §<n>" when the user wants provenance.

## Pick a mode

- **Generate** — user wants a new artifact. → read `references/artifacts.md`.
- **Review** — user has an artifact to critique. → read `references/review-checklist.md`.
- **Advise** — user asks a decision question. Answer from the vocabulary and topic map; pull a reference only for detail.

Infer the mode; if a message mixes them, do both in sequence.

## Core vocabulary (use it precisely)

Design spans **high-level (architectural) design** and **detailed design** (interfaces, algorithms, data structures of each module).

Key issues to control: **concurrency, control & event handling, data persistence, distribution of components, error/exception handling & fault tolerance, integration & interoperability, assurance/security/safety, variability**.

Enduring **design principles**: abstraction, modularity, **information hiding / encapsulation**, high **cohesion** + low **coupling**, separation of concerns, sufficiency/completeness/primitiveness. Judge every design against these.

## Topic map (SWEBOK v4, KA 3)

Use this as the outline for generating complete artifacts and for auditing coverage in a review.

1. Fundamentals — design thinking; context of design; key issues; design principles.
2. Processes — high-level design; detailed design.
3. Design qualities — concurrency; control/event handling; persistence; distribution; errors/exceptions & fault tolerance; integration/interoperability; assurance/security/safety; variability.
4. Recording designs — model-based; structural descriptions; behavioral descriptions; design patterns & styles; DSLs; design rationale.
5. Strategies & methods — general strategies; function-oriented/structured; data-centered; object-oriented; user-centered; component-based; event-driven; aspect-oriented; constraint-based; domain-driven.
6. Quality analysis & evaluation — reviews & audits; quality attributes; analysis/evaluation techniques; measures & metrics; V&V & certification.

## Mode: Advise

- Reduce for **low coupling / high cohesion** and **information hiding** first; most design smells trace back to violating these.
- Pick the **method to fit the problem** (OO for rich domains, event-driven for reactive systems, DDD when the domain is the hard part) — don't default.
- Address the **key issues** explicitly (concurrency, persistence, error handling); silent gaps here become production incidents.
- Record **design rationale** — future maintainers need the *why*, not just the *what*.

## Mode: Generate

Read `references/artifacts.md` for templates and follow its structure and rules.

## Mode: Review

Read `references/review-checklist.md` and produce a findings report anchored to the topic map.

## Cross-KA links

Architecture (upstream significant decisions), Construction (downstream), Quality (attributes/metrics), Security (secure design), Models & Methods (notations).
