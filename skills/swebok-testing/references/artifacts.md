# Software Testing — Artifacts / Frameworks (SWEBOK v4, KA 5)

Generate in the language the user is writing in. Distill, don't copy the IEEE text.

## Test plan skeleton
```
1. Scope & test items; risk-based priorities
2. Levels in play (unit/integration/system/acceptance)
3. Techniques per feature (why each)
4. Adequacy/exit criteria (coverage %, risk sign-off)
5. Environment & data
6. Schedule, roles
7. Incident reporting & metrics
```

## Test-case template
```
ID | Title | Level | Technique
Preconditions:
Steps / inputs:
Expected result (oracle):
Postconditions:
Traces to: <requirement/story id>
```

## Technique quick-picks
equivalence partitioning + boundary-value for ranged inputs · decision table for rule combinations · state-transition for lifecycles · pairwise/combinatorial for many optional params · exploratory for newly-changed areas.
