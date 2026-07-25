# Software Security — Artifacts / Frameworks (SWEBOK v4, KA 13)

Generate in the language the user is writing in. Distill, don't copy the IEEE text.

## Threat model (lightweight)
```
Assets & trust boundaries:
Entry points / attack surface:
Threats (STRIDE): Spoofing/Tampering/Repudiation/Info-disclosure/DoS/Elevation
Mitigations (per threat) → security requirements:
Residual risk & acceptance:
```

## Security requirement / abuse case
```
SEC-nnn: <control> — e.g. “All state-changing endpoints SHALL require authenticated, authorized requests.”
Abuse case: <attacker goal → steps → expected defense>
Verification: SAST/DAST/pentest/test-case
```

## Vulnerability record
id · source (scan/pentest/report) · severity (CVSS) · affected component · remediation · verified?
