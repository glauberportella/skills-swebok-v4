# Software Engineering Economics — Artifacts / Frameworks (SWEBOK v4, KA 15)

Generate in the language the user is writing in. Distill, don't copy the IEEE text.

## Business case / alternative comparison
```
Real problem (not the presumed solution):
Alternatives (≥2, incl. do-nothing):
Selection criteria (weighted):
Per alternative: cash flows by period → PV/NPV → payback → risk
Assumptions: horizon, MARR/discount rate, intangibles
Sensitivity: which assumption flips the choice?
Recommendation + monitoring plan:
```

## NPV sketch
```
NPV = Σ  cash_flow_t / (1 + r)^t   — accept if NPV > 0 (and > alternatives)
r = MARR; t over planning horizon
```

## Build-vs-buy row
option · upfront · recurring · switching cost · risk · PV total · intangibles.
