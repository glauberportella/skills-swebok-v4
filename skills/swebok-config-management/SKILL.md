---
name: swebok-config-management
description: >-
  Apply SWEBOK v4 Software Configuration Management (SCM): identify, control, account for, and audit the evolving configuration of software. Use whenever the user is setting up versioning/branching, baselines, change control boards, release management, configuration identification/status accounting/auditing, or asks about "controle de versão", "branching", "baseline", "gestão de configuração", "change control", "release" — not only when SWEBOK is named.
---

# SWEBOK — Software Configuration Management

This skill grounds work in the IEEE **SWEBOK Guide v4.0**, Knowledge Area 8 (*Software Configuration Management*): the discipline of identifying, controlling, and tracking software configuration items and their changes over time.
Distill the guide into actionable checklists — never paste large verbatim excerpts of the IEEE text.
Cite it as "SWEBOK v4, KA Software Configuration Management, §<n>" when the user wants provenance.

## Pick a mode

- **Generate** — user wants a new artifact. → read `references/artifacts.md`.
- **Review** — user has an artifact to critique. → read `references/review-checklist.md`.
- **Advise** — user asks a decision question. Answer from the vocabulary and topic map; pull a reference only for detail.

Infer the mode; if a message mixes them, do both in sequence.

## Core vocabulary (use it precisely)

A **configuration item (CI)** is anything placed under control (code, docs, build artifacts). A **baseline** is a formally reviewed, agreed configuration that serves as a basis for further change.

Four classic activities: **identification** (what's controlled, how it's named/versioned), **change control** (request → evaluate → approve via CCB → implement), **status accounting** (what state is everything in), **auditing** (functional & physical: does the built system match its specs and records). Plus **release management & delivery**.

## Topic map (SWEBOK v4, KA 8)

Use this as the outline for generating complete artifacts and for auditing coverage in a review.

1. Management of the SCM process — organizational context; constraints & guidance; planning (roles, resources, tools, vendor/interface control); SCM plan; monitoring (measures, in-process audits).
2. Configuration identification — items to control (configuration, CI); identifiers & attributes; baseline identification & attributes; relationships; software libraries.
3. Change control — request/evaluate/approve (CCB, change-request process & forms); implementing changes; deviations & waivers.
4. Status accounting — status information; status reporting.
5. Configuration auditing — functional audit; physical audit; in-process baseline audits.
6. Release management & delivery — software building; release management.
7. Tools.

## Mode: Advise

- Decide **what is a CI** and how it's **identified/versioned** before writing process; vague CIs make everything downstream fuzzy.
- Define **baselines** and a **change-control path** (who approves what) proportionate to risk — lightweight for low-risk, CCB for high-risk.
- Make **status accounting** fall out of tooling (VCS, CI, issue tracker) rather than manual logs.
- Keep **build/release reproducible**: same inputs → same artifact; record provenance.

## Mode: Generate

Read `references/artifacts.md` for templates and follow its structure and rules.

## Mode: Review

Read `references/review-checklist.md` and produce a findings report anchored to the topic map.

## Cross-KA links

Requirements & Operations (change control links), Construction (builds), Maintenance, Quality (audits).
