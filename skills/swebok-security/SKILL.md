---
name: swebok-security
description: >-
  Apply SWEBOK v4 Software Security: build security in across the life cycle — security requirements, secure design & patterns, secure construction, security testing, vulnerability management, and domain-specific security (cloud/containers, IoT, ML). Use whenever the user is doing threat modeling, writing security requirements, choosing security patterns, hardening construction, planning pentests/SAST/DAST, managing vulnerabilities, or asks about "segurança", "security", "threat model", "OWASP", "vulnerabilidade", "SDLC seguro", "pentest" — not only when SWEBOK is named.
---

# SWEBOK — Software Security

This skill grounds work in the IEEE **SWEBOK Guide v4.0**, Knowledge Area 13 (*Software Security*): designing, building, and operating software so it resists attack and protects information across its life cycle.
Distill the guide into actionable checklists — never paste large verbatim excerpts of the IEEE text.
Cite it as "SWEBOK v4, KA Software Security, §<n>" when the user wants provenance.

## Pick a mode

- **Generate** — user wants a new artifact. → read `references/artifacts.md`.
- **Review** — user has an artifact to critique. → read `references/review-checklist.md`.
- **Advise** — user asks a decision question. Answer from the vocabulary and topic map; pull a reference only for detail.

Infer the mode; if a message mixes them, do both in sequence.

## Core vocabulary (use it precisely)

Distinguish **software security** (the software resists misuse), **information security** (CIA: confidentiality, integrity, availability), and **cybersecurity** (the broader socio-technical defense).

Security is **built in across the SDLC**, not bolted on: **security requirements → secure design (+ security patterns) → secure construction → security testing → vulnerability management**. Management context includes maturity models, ISMS, and agile security practice. Domain-specific concerns: cloud/containers, IoT, ML-based apps.

## Topic map (SWEBOK v4, KA 13)

Use this as the outline for generating complete artifacts and for auditing coverage in a review.

1. Fundamentals — software security; information security (CIA); cybersecurity.
2. Management & organization — capability maturity model; ISMS; agile practice for security.
3. Security engineering & processes — secure development life cycle (SDLC); Common Criteria.
4. Security engineering for systems — security requirements; security design; security patterns; construction for security; security testing; vulnerability management.
5. Tools — vulnerability checking; penetration testing.
6. Domain-specific security — container & cloud; IoT; machine-learning-based applications.

## Mode: Advise

- **Threat-model early**: identify assets, entry points, threats (e.g. STRIDE), and mitigations before design hardens.
- Write **security requirements** as testable controls (authn/authz, input validation, crypto, logging) with abuse/misuse cases.
- Apply **secure-design principles** (least privilege, defense in depth, fail secure, minimize attack surface) and known **security patterns**.
- Run **SAST + DAST + pentest** proportionate to risk, and run a real **vulnerability management** loop (discover → triage → remediate → verify).

## Mode: Generate

Read `references/artifacts.md` for templates and follow its structure and rules.

## Mode: Review

Read `references/review-checklist.md` and produce a findings report anchored to the topic map.

## Cross-KA links

Requirements (security requirements), Design & Construction (secure by design/build), Testing (security testing), Operations (data protection), Quality.
