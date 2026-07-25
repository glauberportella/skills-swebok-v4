# Software Testing — Review / Audit Checklist (SWEBOK v4, KA 5)

Produce a findings report: per-topic coverage, a defect/gap list with severity, and concrete fixes. Anchor findings to the topic map.

## Per-suite gates
- Each test has a clear **oracle** and traces to a requirement?
- **Boundaries & edge cases** covered, not just happy path?
- **Technique fit**: is the chosen technique right for the logic under test?
- **Adequacy criterion** stated and met (coverage/risk)?
- Non-functional (perf/security/usability) covered where it matters?
- Tests **deterministic** (no flakiness), independent, fast enough for CI?

## Process-level
- Risk-based prioritization present?
- Regression suite maintained?
- Mutation/fault-injection or coverage used to judge suite strength, not just count?

## Severity
- Critical: no oracle / tests that can't fail; untested critical path.
- Major: happy-path-only; flaky or order-dependent tests.
- Minor: naming, structure.
