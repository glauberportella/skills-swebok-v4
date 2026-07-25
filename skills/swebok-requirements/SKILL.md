---
name: swebok-requirements
description: >-
  Apply the discipline, vocabulary and best practices of the SWEBOK v4 Software
  Requirements Knowledge Area. Use this skill whenever the user is eliciting,
  analyzing, specifying, validating or managing software requirements — writing
  or reviewing an SRS/PRD, user stories, use cases, acceptance criteria, or a
  requirements section of any spec; deciding how to categorize functional vs.
  nonfunctional requirements; setting up requirements traceability, prioritization,
  or change control; or critiquing a requirements document. Trigger it even when
  the user just says "requisitos", "requirements", "SRS", "PRD", "user story",
  "critério de aceitação", "casos de uso" or asks whether their requirements are
  "good", complete, testable or well-formed — not only when they name SWEBOK.
---

# SWEBOK — Software Requirements

This skill grounds requirements work in the IEEE **SWEBOK Guide v4.0**,
Knowledge Area 1 (*Software Requirements*). It gives you a faithful topic map,
a shared vocabulary, and three operating modes: **generate** requirements
artifacts, **review** existing ones against the KA, and **advise** on
day-to-day requirements decisions.

Distill the guide into actionable checklists — never paste large verbatim
excerpts of the IEEE text. Cite it as "SWEBOK v4, KA Software Requirements,
§<n>" when the user wants provenance.

## Pick a mode

- **Generate** — user wants a new artifact (SRS/PRD, use case, user story +
  acceptance criteria, requirements section). → read `references/artifacts.md`.
- **Review** — user has an artifact and wants it critiqued for completeness,
  testability, conflicts, etc. → read `references/review-checklist.md`.
- **Advise** — user asks a question ("functional or nonfunctional?", "how do I
  prioritize?", "should this be a constraint?"). Answer from the vocabulary and
  topic map below; pull a reference file only if you need the detail.

Infer the mode from the request; if a message mixes them (e.g. "write an SRS and
tell me what's weak about my draft"), do both in sequence.

## Core vocabulary (use it precisely)

A **software requirement** is a property that must be present to solve a
real-world problem — it should express *what* is needed, deferring *how* to
design. Keep the whats/hows separation explicit; blurring them is the most
common defect.

Requirement categories to classify against:
- **Functional** — what the system must do (behaviors, transformations).
- **Nonfunctional (quality of service)** — how well it must do it (performance,
  reliability, usability, security…), ideally with measurable targets.
- **Technology constraints** — imposed choices (platform, DB engine, language,
  protocol) that limit the solution space.
- **Quality-of-service constraints** — bounded QoS targets treated as hard
  limits rather than optimization goals.
- **System vs. software requirements** — a system requirement may allocate to
  hardware, people or software; track the allocation.
- **Derived requirements** — implied/decomposed from higher-level ones
  (epics → features → stories); keep the decomposition traceable.

Two umbrella activities: **requirements development** (elicitation → analysis →
specification → validation — "reaching agreement on what to build") and
**requirements management** ("maintaining that agreement over time" — scrubbing,
change control, scope matching, tracing).

## Topic map (SWEBOK v4, KA 1)

Use this as the outline both for generating a complete artifact and for auditing
coverage in a review.

1. **Fundamentals** — definition; categories (functional, nonfunctional,
   technology & QoS constraints); product vs. project requirements; system vs.
   software; derived requirements; the requirements activities.
2. **Elicitation** — sources (stakeholder classes, SMEs, ops, support, regulators,
   users, developers, business rules, operating environment); techniques
   (interviews, facilitated workshops / JAD/JRP, brainstorming, protocol
   analysis, focus groups, questionnaires, observation, prototyping).
3. **Analysis** — basic analysis & decomposition; economics of QoS constraints
   (perfection point vs. zero-value point); formal analysis; resolving conflicts.
4. **Specification** — unstructured NL; structured NL (templates, shall-statements);
   acceptance-criteria-based (Given/When/Then, ATDD); model-based; requirement
   attributes; incremental vs. comprehensive.
5. **Validation** — reviews (multi-perspective), simulation/execution, prototyping.
6. **Management activities** — scrubbing; change control (ties to SCM KA); scope
   matching (quantitative, in size units, against cost/schedule/staffing).
7. **Practical considerations** — iterative nature; prioritization; tracing
   (forward & backward, for impact analysis); stability & volatility; measuring
   requirements; process quality & improvement.
8. **Tools** — management, modeling, functional test-case generation.

## Mode: Advise

When answering a decision question, name the relevant topic, give the SWEBOK
distinction, then apply it to the user's case. Good moves:
- Push every requirement toward **testability**: "how would we verify this
  passed?" If it can't be verified, it's underspecified.
- Force **what vs. how**: flag solution/design leaking into a requirement.
- Make nonfunctionals **measurable** (a target + a scale + conditions), and treat
  QoS constraints as hard limits with an explicit perfection/zero-value range.
- Insist on **traceability** for anything that will change: source → requirement
  → design/test.
- Prefer **quantitative scope matching** (functional size) over vibes when scope
  vs. capacity is in tension.

## Mode: Generate

Read `references/artifacts.md` for ready templates (SRS/PRD skeleton, use case,
user story with Given/When/Then acceptance criteria, requirement-attribute set)
and follow its structure and rules. Always tag each requirement with an ID,
type, priority, source and verification method.

## Mode: Review

Read `references/review-checklist.md` and produce a findings report: per-topic
coverage, defect list (with severity), and concrete rewrites for the weakest
requirements. Anchor findings to the topic map so gaps are visible.

## Cross-KA links

Change control → **Software Configuration Management**. Nonfunctional targets →
**Software Quality** and **Software Security**. Model-based specs → **Models and
Methods**. Scope/cost tradeoffs → **Software Engineering Economics**. Mention the
neighbor KA when a decision clearly belongs there.
