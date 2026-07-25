---
name: swebok-economics
description: >-
  Apply SWEBOK v4 Software Engineering Economics: make and justify software decisions in economic terms — cash flow, time-value of money, equivalence, ROI/NPV, for-profit decision-making, and structured engineering decision-making. Use whenever the user is doing a build-vs-buy or cloud-cost trade-off, business case/ROI, comparing technical alternatives economically, valuing options, or asks about "custo", "ROI", "NPV", "VPL", "business case", "build vs buy", "trade-off econômico", "valuation" — not only when SWEBOK is named.
---

# SWEBOK — Software Engineering Economics

This skill grounds work in the IEEE **SWEBOK Guide v4.0**, Knowledge Area 15 (*Software Engineering Economics*): applying economic reasoning to software decisions so alternatives are compared on a sound, quantified basis.
Distill the guide into actionable checklists — never paste large verbatim excerpts of the IEEE text.
Cite it as "SWEBOK v4, KA Software Engineering Economics, §<n>" when the user wants provenance.

## Pick a mode

This KA is decision-heavy. Default to **Advise** — answer questions from the vocabulary and topic map below. Use `references/artifacts.md` when the user wants a concrete plan/record produced, and `references/review-checklist.md` when auditing an existing plan/decision.

## Core vocabulary (use it precisely)

Fundamentals: **proposals**, **cash flow**, **time-value of money** (a dollar now ≠ a dollar later), **equivalence** (comparing cash flows at a common point), **bases for comparison** (NPV/PV, ROI, payback, IRR), **alternatives**, **intangible assets**, **business model**.

The **engineering decision-making process**: understand the real problem → identify all reasonable feasible solutions → define selection criteria → evaluate each against them → select → monitor. For-profit adds **MARR** (minimum acceptable rate of return), **economic life**, and **planning horizon**.

## Topic map (SWEBOK v4, KA 15)

Use this as the outline for generating complete artifacts and for auditing coverage in a review.

1. Fundamentals — proposals; cash flow; time-value of money; equivalence; bases for comparison; alternatives; intangible assets; business model.
2. Engineering decision-making — understand the real problem; identify feasible solutions; define selection criteria; evaluate alternatives; select; monitor.
3. For-profit decision-making — minimum acceptable rate of return (MARR); economic life; planning horizon.

## Mode: Advise

- Bring cash flows to a **common time basis** (present value) before comparing — comparing un-discounted totals is a classic error.
- Always evaluate **multiple feasible alternatives** against **explicit criteria**; a one-option “decision” isn't one.
- State **assumptions, horizon, and discount rate (MARR)**; sensitivity-test the ones that could flip the decision.
- Don't ignore **intangibles and opportunity cost** just because they're harder to quantify.

## Mode: Generate

Read `references/artifacts.md` for templates and follow its structure and rules.

## Mode: Review

Read `references/review-checklist.md` and produce a findings report anchored to the topic map.

## Cross-KA links

Management (estimation, planning), Requirements (scope trade-offs), Maintenance (tech-debt economics), Architecture (cost of decisions).
