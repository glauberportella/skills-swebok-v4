# Requirements Review Checklist (SWEBOK v4, KA 1)

Produce a findings report with three parts: (1) per-topic coverage, (2) a defect
list with severity, (3) concrete rewrites of the weakest requirements. Anchor
every finding to the topic map so gaps are visible.

## Per-requirement quality gates

For each requirement, check:

- **Testable / verifiable** — is there a clear way to confirm it's met? If not →
  major defect. Ask "what test case would fail if this were violated?"
- **What, not how** — does it prescribe a design/implementation choice that
  should be free? Flag solution leakage.
- **Unambiguous** — one interpretation only; no vague adjectives without a
  metric ("fast", "secure", "intuitive").
- **Atomic** — a single obligation; compound statements get split.
- **Correctly typed** — functional vs. nonfunctional vs. constraint labeled right.
- **Measurable (NFRs)** — metric + scale + target + condition present; bounded by
  a perfection / zero-value range where relevant.
- **Attributed** — has ID, priority, source, verification method.
- **Feasible & consistent** — no conflict with another requirement or constraint.

## Document-level coverage (map to the topic outline)

- **Elicitation** — are all relevant stakeholder classes represented (users, SMEs,
  ops, support, regulators, developers, the negatively-affected)? Any silent
  source of requirements (business rules, operating environment, standards)?
- **Analysis** — decomposition traceable (epics→features→stories)? QoS economics
  addressed for expensive quality attributes? Conflicts surfaced and resolved?
- **Specification** — consistent style (structured NL / model-based / ATDD)?
  Acceptance criteria for functional reqs?
- **Validation** — evidence of review from multiple perspectives, prototyping or
  simulation where risk is high?
- **Management** — change-control path defined (→ SCM KA)? Scope matched to
  cost/schedule/staffing, quantitatively if possible?
- **Practical** — prioritization present? Traceability both directions (source →
  requirement → design/test) for impact analysis? Volatile requirements flagged?

## Common defects to name explicitly

- Unverifiable adjectives with no metric.
- Design masquerading as requirement (implementation baked in).
- Compound requirement hiding two obligations.
- Missing nonfunctionals (security, performance, availability) entirely.
- No traceability → impossible impact analysis on change.
- Priorities absent → scope matching becomes arbitrary under pressure.
- Orphan design elements with no backing requirement (over-build) or requirements
  with no design/test link (under-build).

## Severity guidance

- **Critical** — untestable or contradictory core requirement; missing safety/
  security/regulatory obligation.
- **Major** — ambiguous, design-leaking, or unmeasurable NFR.
- **Minor** — style, formatting, weak attribute hygiene.

## Report format

```
## Coverage by topic
<topic> : covered | partial | missing — <one line>

## Defects
[SEV] <req id/loc> — <defect> — <why it matters>

## Suggested rewrites
Before: <original>
After:  <testable, what-not-how, attributed version>
```
