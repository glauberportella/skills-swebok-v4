# Software Architecture — Review / Audit Checklist (SWEBOK v4, KA 2)

Produce a findings report: per-topic coverage, a defect/gap list with severity, and concrete fixes. Anchor findings to the topic map.

## Per-decision gates
- Traceable to a **concern/quality attribute**? Unmotivated structure is a smell.
- Is it actually **significant** (hard to reverse)? If trivial, it's design noise here.
- **Trade-off stated**? Every tactic costs something — name it.
- **Alternatives recorded**? A decision with no rejected options is unexamined.

## Document-level coverage
- Concerns ↔ views: does every major concern have a view that addresses it?
- Are quality attributes expressed as **measurable scenarios**, not adjectives?
- Patterns/styles named and justified vs. reinvented structure?
- **Evaluation** evidence (review, ATAM-style scenario walk, metrics)?
- Risks & sensitivity points flagged?

## Severity
- Critical: missing view for a safety/security/perf concern; contradictory decisions.
- Major: unmeasurable quality attributes; undocumented significant decision.
- Minor: view/notation hygiene.
