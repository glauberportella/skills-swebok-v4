# Software Maintenance — Review / Audit Checklist (SWEBOK v4, KA 7)

Produce a findings report: per-topic coverage, a defect/gap list with severity, and concrete fixes. Anchor findings to the topic map.

## Change gates
- Change **classified** and aligned to org objectives?
- **Impact analysis** done (reqs, modules, tests)?
- Regression scope identified; characterization tests exist for legacy touched?
- Maintainability not degraded (complexity, coupling)?

## Program-level
- Tech debt tracked with principal/interest, not just griped about?
- Maintenance costs estimated and measured?
- CM + quality activities wired into the maintenance process?

## Severity
- Critical: legacy edit with no tests / no impact analysis on a critical path.
- Major: unclassified change; growing untracked debt.
- Minor: doc/comprehension aids missing.
