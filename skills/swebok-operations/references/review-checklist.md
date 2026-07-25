# Software Engineering Operations — Review / Audit Checklist (SWEBOK v4, KA 6)

Produce a findings report: per-topic coverage, a defect/gap list with severity, and concrete fixes. Anchor findings to the topic map.

## Readiness gates
- **SLOs/SLIs** defined and monitored?
- **Rollback** and **data-migration** plans exist and are reversible?
- **Backup/DR** with tested RPO/RTO (real restore test, not just a job that ran)?
- **Capacity** headroom + scale triggers known?
- **Alerting** actionable (no noise; tied to SLOs)?
- Change & problem management processes defined?

## Operational hygiene
- Incident vs. problem separated; post-incident actions tracked?
- Runbooks current; on-call ownership clear?
- Automation over manual toil; environments reproducible?

## Severity
- Critical: no rollback, untested backups, no ownership for a prod service.
- Major: SLOs undefined, alerting non-actionable.
- Minor: runbook staleness.
