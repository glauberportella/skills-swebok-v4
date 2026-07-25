---
name: swebok-construction
description: >-
  Apply SWEBOK v4 Software Construction: coding, construction design, construction testing, integration, and construction quality. Use whenever the user is writing/organizing code, managing complexity and dependencies, doing test-first/TDD, API design, error handling, integration, cross-platform work, or asks about "código", "coding", "construction", "refatorar", "TDD", "integração", "dependências" — not only when SWEBOK is named.
---

# SWEBOK — Software Construction

This skill grounds work in the IEEE **SWEBOK Guide v4.0**, Knowledge Area 4 (*Software Construction*): the detailed creation of working software through coding, unit testing, integration, and debugging.
Distill the guide into actionable checklists — never paste large verbatim excerpts of the IEEE text.
Cite it as "SWEBOK v4, KA Software Construction, §<n>" when the user wants provenance.

## Pick a mode

- **Generate** — user wants a new artifact. → read `references/artifacts.md`.
- **Review** — user has an artifact to critique. → read `references/review-checklist.md`.
- **Advise** — user asks a decision question. Answer from the vocabulary and topic map; pull a reference only for detail.

Infer the mode; if a message mixes them, do both in sequence.

## Core vocabulary (use it precisely)

Construction fundamentals: **minimize complexity**, **anticipate & embrace change**, **construct for verification**, **reuse assets**, **apply standards**.

It is disciplined, not ad-hoc: planned, measured, with dependencies managed. Practical concerns include construction design, languages, coding, construction testing, reuse, quality, integration, and cross-platform/migration.

## Topic map (SWEBOK v4, KA 4)

Use this as the outline for generating complete artifacts and for auditing coverage in a review.

1. Fundamentals — minimizing complexity; anticipating & embracing change; constructing for verification; reusing assets; applying standards.
2. Managing construction — construction in life-cycle models; planning; measurement; managing dependencies.
3. Practical considerations — construction design; languages; coding; construction testing; reuse; quality; integration; cross-platform & migration.
4. Construction technologies — API design & use; OO runtime issues; parameterization/templates/generics; assertions, design-by-contract, defensive programming; error/exception handling & fault tolerance; executable & state-based/table-driven techniques; runtime config & i18n; grammar-based input; concurrency primitives; middleware; distributed/cloud; heterogeneous systems; performance analysis & tuning; platform standards; test-first; feedback loop.
5. Tools — IDEs; visual/low-code/zero-code; unit-testing tools; profiling/slicing.

## Mode: Advise

- Attack **complexity** as the primary enemy: small units, clear names, local reasoning.
- **Construct for verification** — write code so it's easy to test; pair with test-first where the design is uncertain.
- Use **assertions / design-by-contract / defensive programming** at boundaries; validate input at the grammar/edge, trust it inside.
- Make **dependencies explicit and managed**; hidden coupling is where change breaks.

## Mode: Generate

Read `references/artifacts.md` for templates and follow its structure and rules.

## Mode: Review

Read `references/review-checklist.md` and produce a findings report anchored to the topic map.

## Cross-KA links

Design (upstream), Testing (construction testing feeds it), Configuration Management (builds/branches), Quality, Security.
