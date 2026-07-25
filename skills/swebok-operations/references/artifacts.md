# Software Engineering Operations — Artifacts / Frameworks (SWEBOK v4, KA 6)

Generate in the language the user is writing in. Distill, don't copy the IEEE text.

## Operations / release runbook
```
Service: <name>   Owner / on-call:
SLOs: <SLI, target, error budget>
Deploy steps: <automated pipeline; gates>
Rollback plan: <trigger, steps, data considerations>
Data migration: <forward + backward; reversible?>
Monitoring: <dashboards, alerts, thresholds>
Capacity: <current headroom, scale triggers>
Backup/DR: <RPO, RTO, last successful restore test>
```

## Incident record
```
Severity | Start/detect/resolve times
Impact (users/SLO):
Timeline:
Mitigation (restore service):
Root cause → opened Problem #:
Action items (prevent recurrence):
```

## SLO worksheet
SLI (e.g. p95 latency, availability) → target → measurement window → error budget → alerting threshold.
