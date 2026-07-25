# Software Maintenance — Artifacts / Frameworks (SWEBOK v4, KA 7)

Generate in the language the user is writing in. Distill, don't copy the IEEE text.

## Change request / impact analysis
```
CR-id | Category: corrective|adaptive|perfective|preventive
Description & driver:
Impacted requirements / modules / interfaces:
Affected tests (regression scope):
Risk & effort estimate:
Rollback consideration:
```

## Technical-debt item
```
Debt: <what shortcut / decay>
Interest (ongoing cost): <slower changes, bugs>
Principal (fix cost estimate):
Trigger to pay down: <when it blocks work>
Proposed remediation:
```

## Reengineering plan
comprehend (reverse-engineer current behavior + characterization tests) → restructure in safe steps (tests green each step) → validate against baseline.
