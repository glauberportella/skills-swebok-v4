---
name: swebok-quality
description: >-
  Apply SWEBOK v4 Software Quality: manage and assure quality across the life cycle — quality fundamentals, quality management process, quality assurance (process & product), V&V, static/dynamic/formal analysis, reviews & audits. Use whenever the user is setting up QA/QC, defining quality attributes/metrics, planning V&V, doing static analysis or reviews, characterizing defects, or asks about "qualidade", "QA", "V&V", "revisão de código", "análise estática", "defeitos", "dependábilidade" — not only when SWEBOK is named.
---

# SWEBOK — Software Quality

This skill grounds work in the IEEE **SWEBOK Guide v4.0**, Knowledge Area 12 (*Software Quality*): the degree to which software meets requirements and stakeholder needs, and the processes that plan, assure, and control it.
Distill the guide into actionable checklists — never paste large verbatim excerpts of the IEEE text.
Cite it as "SWEBOK v4, KA Software Quality, §<n>" when the user wants provenance.

## Pick a mode

This KA is decision-heavy. Default to **Advise** — answer questions from the vocabulary and topic map below. Use `references/artifacts.md` when the user wants a concrete plan/record produced, and `references/review-checklist.md` when auditing an existing plan/decision.

## Core vocabulary (use it precisely)

Distinguish **quality assurance (QA)** — building confidence the *process* produces quality — from **quality control / testing** — checking the *product*. Both sit under a **quality management process** (improve → plan → evaluate/measure → corrective/preventive action).

**Dependability & integrity levels** scale rigor to risk. **V&V**: *verification* = building it right (to spec); *validation* = building the right thing (meets need). Techniques: **static** (reviews, static analysis), **dynamic** (testing), **formal** analysis.

## Topic map (SWEBOK v4, KA 12)

Use this as the outline for generating complete artifacts and for auditing coverage in a review.

1. Fundamentals — engineering culture & ethics; value & costs of quality; standards/models/certifications; dependability & integrity levels.
2. Quality management process — improvement; plan quality management; evaluate (quality measurement); corrective & preventive actions (defect characterization).
3. Quality assurance process — prepare for QA; process assurance; product assurance; V&V & testing (static, dynamic, formal analysis; quality control; technical reviews & audits).
4. Tools.

## Mode: Advise

- Scale rigor to **integrity level**: safety/regulatory-critical earns formal methods & heavy V&V; a throwaway script does not.
- Use **static + dynamic + formal** as complementary nets — reviews and static analysis catch what tests miss and vice-versa.
- **Characterize defects** (type, phase injected/found, root cause) so corrective and *preventive* actions are data-driven.
- Track **cost of quality** (prevention/appraisal vs. failure) to justify QA investment.

## Mode: Generate

Read `references/artifacts.md` for templates and follow its structure and rules.

## Mode: Review

Read `references/review-checklist.md` and produce a findings report anchored to the topic map.

## Cross-KA links

Testing (V&V/QC), Requirements & Design (quality attributes), Security, Process (process assurance), Maintenance (defect trends).
