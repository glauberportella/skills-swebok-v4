# Software Design — Review / Audit Checklist (SWEBOK v4, KA 3)

Produce a findings report: per-topic coverage, a defect/gap list with severity, and concrete fixes. Anchor findings to the topic map.

## Per-module gates
- **Single, cohesive responsibility**? Split god-modules.
- **Coupling** minimized (stable, explicit dependencies; no hidden globals)?
- **Information hiding**: are volatile decisions encapsulated behind interfaces?
- **Contracts** stated (pre/post/invariants)? Interfaces without contracts are traps.
- Key issues handled (concurrency, persistence, errors, security)?

## Document-level coverage
- High-level and detailed levels both present and consistent?
- Behavioral models for the risky flows?
- **Rationale** recorded?
- Quality analysis / review evidence + metrics?

## Severity
- Critical: unhandled concurrency/error path; broken encapsulation of a core invariant.
- Major: high coupling / low cohesion; missing contracts.
- Minor: notation/diagram hygiene.
