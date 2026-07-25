# Software Configuration Management — Artifacts / Frameworks (SWEBOK v4, KA 8)

Generate in the language the user is writing in. Distill, don't copy the IEEE text.

## SCM plan skeleton
```
1. CIs & identification scheme (naming, versioning)
2. Baselines (when declared, attributes)
3. Branching/merging strategy
4. Change control: request → evaluate → approve (CCB) → implement; forms/fields
5. Status accounting: where state lives, reports
6. Audits: functional & physical, cadence
7. Release management & delivery: build, versioning, provenance
8. Tools & roles
```

## Change request form
```
CR-id | Requested by | Date
Affected CIs / baseline:
Reason & impact:
CCB decision: approve|reject|defer
Implementation & verification:
```

## Release record
version · included CRs · build inputs/hash · baseline · approvals · rollback pointer.
