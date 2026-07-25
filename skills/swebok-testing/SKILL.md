---
name: swebok-testing
description: >-
  Apply SWEBOK v4 Software Testing: design test cases and test strategy with proper techniques, levels, and adequacy criteria. Use whenever the user is writing or reviewing tests, choosing test techniques (equivalence partitioning, boundary values, decision tables, state-transition, control/data-flow, mutation, exploratory), planning test levels (unit/integration/system/acceptance), setting coverage/adequacy criteria, or asks about "testes", "testing", "cobertura", "caso de teste", "plano de testes", "regressão" — not only when SWEBOK is named.
---

# SWEBOK — Software Testing

This skill grounds work in the IEEE **SWEBOK Guide v4.0**, Knowledge Area 5 (*Software Testing*): dynamic verification that a program behaves as expected on a finite, well-chosen set of test cases.
Distill the guide into actionable checklists — never paste large verbatim excerpts of the IEEE text.
Cite it as "SWEBOK v4, KA Software Testing, §<n>" when the user wants provenance.

## Pick a mode

- **Generate** — user wants a new artifact. → read `references/artifacts.md`.
- **Review** — user has an artifact to critique. → read `references/review-checklist.md`.
- **Advise** — user asks a decision question. Answer from the vocabulary and topic map; pull a reference only for detail.

Infer the mode; if a message mixes them, do both in sequence.

## Core vocabulary (use it precisely)

**Fault vs. failure**: a fault (defect in code) may cause a failure (observed wrong behavior). Testing samples the input space; it shows the presence of faults, not their absence.

**The oracle problem**: deciding the expected result is itself hard. **Testability**, **adequacy/selection criteria** (when have we tested enough?), and **prioritization/minimization** are core issues.

Levels: **unit → integration → system → acceptance**. Objectives include conformance, regression, non-functional (perf, security, privacy), usability, API, configuration.

## Topic map (SWEBOK v4, KA 5)

Use this as the outline for generating complete artifacts and for auditing coverage in a review.

1. Fundamentals — faults vs. failures; key issues (test-case creation, selection/adequacy, prioritization, oracle problem, testability, automation, effectiveness); relationship to other activities.
2. Levels & objectives — unit/integration/system/acceptance; conformance, compliance, installation, alpha/beta, regression, non-functional, security, privacy, API, configuration, usability/HCI.
3. Test techniques — specification-based (equivalence partitioning, boundary-value, syntax, combinatorial, decision table, cause-effect, state-transition, scenario, random); structure-based (control-flow, data-flow); experience-based (error guessing, exploratory); fault-based & mutation; usage-based (operational profile).
4. Test-related measures — fault types/density, reliability growth models; evaluating the tests (fault injection, mutation score, relative effectiveness).
5. Test process — planning, design & implementation, environment, execution, incident reporting; monitoring & control; completion; reuse; staffing.
6. Testing in development processes & domains — traditional vs. shift-left; domain-specific testing.
7. Testing of/through emerging technologies.
8. Tools.

## Mode: Advise

- Choose techniques by **what you're targeting**: boundaries → boundary-value + equivalence partitioning; combinational logic → decision tables / combinatorial; stateful behavior → state-transition; code coverage → control/data-flow; unknown-unknowns → exploratory.
- State the **adequacy criterion** up front (which coverage / which risk) so “done” is defined.
- Solve the **oracle** deliberately (expected values, properties, metamorphic relations).
- **Shift left**: design tests with the requirement (ATDD), not after the code.

## Mode: Generate

Read `references/artifacts.md` for templates and follow its structure and rules.

## Mode: Review

Read `references/review-checklist.md` and produce a findings report anchored to the topic map.

## Cross-KA links

Requirements (acceptance criteria), Construction (unit/construction testing), Quality (V&V), Security (security testing), Maintenance (regression).
