# Requirements Artifact Templates (SWEBOK v4, KA 1)

Generate in the language the user is writing in. Every requirement carries an ID,
type, priority, source and verification method — this is what makes the artifact
reviewable and traceable later.

## Requirement attribute set

Attach these attributes to each requirement (SWEBOK §4.5):

- **ID** — stable, unique (e.g. `FR-012`, `NFR-004`).
- **Type** — functional | nonfunctional | technology-constraint | qos-constraint.
- **Statement** — one testable "shall" (functional) or a measurable target (NFR).
- **Rationale / source** — who/what it came from (stakeholder class, business
  rule, regulation, derived-from ID).
- **Priority** — e.g. MoSCoW or a numeric rank; note volatility if unstable.
- **Verification method** — inspection | analysis | demonstration | test; for
  functional reqs, the acceptance criteria that prove it.
- **Trace links** — parent requirement(s), design element(s), test case(s).

## SRS / PRD skeleton

```
1. Introduction
   1.1 Purpose & scope (the real-world problem being solved)
   1.2 Definitions, acronyms
   1.3 Stakeholders & user classes
   1.4 Operating environment & assumptions
2. Overall description
   2.1 Product context (system vs. software boundary; allocations)
   2.2 Constraints (technology, regulatory, QoS hard limits)
3. Functional requirements        (grouped by capability/feature)
   FR-nnn  <shall statement>  [attributes]
4. Nonfunctional requirements     (grouped by quality attribute)
   NFR-nnn <measurable target: metric, scale, condition>  [attributes]
5. External interfaces            (user, hardware, software, comms)
6. Data requirements
7. Acceptance criteria index       (links FRs → test cases)
8. Traceability matrix             (source → requirement → design/test)
9. Open issues / volatile requirements
```

Rules while filling it:
- Keep *what* in the requirement; move any *how* to a design note.
- One requirement per statement; split compound "and"/"or" clauses.
- No unverifiable adjectives ("fast", "user-friendly") without a metric.

## Use case template

```
Use case:        <verb-phrase name>
Primary actor:   <role>
Stakeholders/interests:
Preconditions:
Trigger:         <event>
Main success scenario:  numbered steps (actor ↔ system)
Extensions/alternates:  <step>a: <condition> → <handling>
Postconditions (success):
```

## User story + acceptance criteria (ATDD)

```
Story:  As a <role>, I want <capability> so that <benefit>.

Acceptance criteria (Given/When/Then — each must be executable):
  Given <precondition/state>
  When  <stimulus>
  Then  <outcome> [and <further outcome>]

Definition of done: at least one criterion that currently FAILS on the
existing system (proves the story adds new, testable behavior).
```

Example:
```
As a bank customer, I want to withdraw cash from the ATM so that I can get
money without going to the bank.

Given the account balance is $500 and the card is valid and the ATM has cash,
When the account holder requests $100,
Then the ATM dispenses $100 and the balance becomes $400.
```

## Nonfunctional requirement pattern

State each NFR as: **metric + scale + target + condition**, and mark the
perfection point (best worth paying for) and zero-value point (below which it's
worthless), so it reads as a bounded constraint, not an open-ended wish.

```
NFR-007  Under peak load (500 concurrent users), 95th-percentile API latency
         SHALL be ≤ 300 ms; > 800 ms is unacceptable (zero-value point).
```
