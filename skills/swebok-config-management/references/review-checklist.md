# Software Configuration Management — Review / Audit Checklist (SWEBOK v4, KA 8)

Produce a findings report: per-topic coverage, a defect/gap list with severity, and concrete fixes. Anchor findings to the topic map.

## Setup gates
- CIs and a **versioning/identification** scheme defined?
- **Baselines** declared at meaningful points?
- **Change control** proportionate (CCB where risk warrants; lightweight elsewhere)?
- **Status accounting** derivable from tools, not manual?
- Builds/releases **reproducible** with recorded provenance?

## Audit
- Functional audit: does the product meet its declared requirements/baseline?
- Physical audit: do the artifacts/records match what's actually shipped?
- Deviations/waivers documented?

## Severity
- Critical: no baseline/version control on shipped artifacts; unauthorized changes possible.
- Major: irreproducible builds; no change-control path.
- Minor: reporting/naming hygiene.
