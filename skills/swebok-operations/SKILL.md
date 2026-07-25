---
name: swebok-operations
description: >-
  Apply SWEBOK v4 Software Engineering Operations: run software in production — deployment/release, availability & continuity, capacity, backup/DR, incident & problem management, monitoring/telemetry. Use whenever the user is planning operations, deploying/releasing, defining SLAs/SLOs, doing rollback/data migration, on-call/incident response, or asks about "operações", "deploy", "release", "SLA", "incidente", "observabilidade", "disaster recovery", "rollback" — not only when SWEBOK is named.
---

# SWEBOK — Software Engineering Operations

This skill grounds work in the IEEE **SWEBOK Guide v4.0**, Knowledge Area 6 (*Software Engineering Operations*): planning, delivering, and controlling software in operational environments so it stays available, reliable, and recoverable.
Distill the guide into actionable checklists — never paste large verbatim excerpts of the IEEE text.
Cite it as "SWEBOK v4, KA Software Engineering Operations, §<n>" when the user wants provenance.

## Pick a mode

- **Generate** — user wants a new artifact. → read `references/artifacts.md`.
- **Review** — user has an artifact to critique. → read `references/review-checklist.md`.
- **Advise** — user asks a decision question. Answer from the vocabulary and topic map; pull a reference only for detail.

Infer the mode; if a message mixes them, do both in sequence.

## Core vocabulary (use it precisely)

Operations covers **planning** (operations plan, environments, availability/continuity & service levels, capacity, backup/DR/failover, data safety/security), **delivery** (operational testing/acceptance, deployment/release engineering, rollback & data migration, change & problem management), and **control** (incident management; monitor/measure/track/review; support; service reporting).

Core levers: **SLA/SLO/SLI**, **capacity management**, **failover & DR**, **incident vs. problem** (an incident is an event; a problem is the underlying cause).

## Topic map (SWEBOK v4, KA 6)

Use this as the outline for generating complete artifacts and for auditing coverage in a review.

1. Fundamentals — definition; operations processes; installation; scripting & automation; effective testing & troubleshooting; performance, reliability & load balancing.
2. Planning — operations plan & supplier management; dev vs. operational environments; availability, continuity & service levels; capacity management; backup, DR & failover; data safety/security/integrity/controls.
3. Delivery — operational testing/verification/acceptance; deployment/release engineering; rollback & data migration; change management; problem management.
4. Control — incident management; monitor/measure/track/review; operations support; service reporting.
5. Practical considerations — incident & problem prevention; operational risk management; automation; ops for small organizations.
6. Tools — containers & virtualization; deployment; automated test; monitoring & telemetry.

## Mode: Advise

- Define **SLOs before tooling**: pick user-centric SLIs, set targets, budget error.
- Separate **incident** (restore service now) from **problem** (eliminate root cause later).
- Every release needs a **rollback and data-migration** plan; a deploy you can't reverse is a liability.
- **Automate** the repeatable (deploy, failover drills, backups) and **verify recovery** — an untested backup is not a backup.

## Mode: Generate

Read `references/artifacts.md` for templates and follow its structure and rules.

## Mode: Review

Read `references/review-checklist.md` and produce a findings report anchored to the topic map.

## Cross-KA links

Maintenance (overlaps heavily), Configuration Management (releases/builds), Security (data protection), Quality (reliability), Economics (capacity cost).
