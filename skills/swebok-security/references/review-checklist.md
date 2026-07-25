# Software Security — Review / Audit Checklist (SWEBOK v4, KA 13)

Produce a findings report: per-topic coverage, a defect/gap list with severity, and concrete fixes. Anchor findings to the topic map.

## Design/build gates
- **Threat model** exists; mitigations traced to security requirements?
- Secure-design principles applied (least privilege, defense in depth, fail secure)?
- Input validation, authn/authz, crypto, secrets handling, logging — all addressed?
- **Security testing** (SAST/DAST/pentest) matched to risk?
- Vulnerability management loop closes (triage→fix→verify)?

## Domain-specific
- Cloud/container hardening, IoT constraints, or ML threats (data poisoning, model theft) considered if relevant?

## Severity
- Critical: no authn/authz on sensitive ops; unmanaged known vulns; secrets in code.
- Major: no threat model; security requirements untestable.
- Minor: logging/policy hygiene.
