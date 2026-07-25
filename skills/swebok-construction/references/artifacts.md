# Software Construction — Artifacts / Frameworks (SWEBOK v4, KA 4)

Generate in the language the user is writing in. Distill, don't copy the IEEE text.

## Construction checklist for a change
```
[ ] Smallest cohesive units; names reveal intent
[ ] Contracts at boundaries (validate input, assert invariants)
[ ] Error/exception paths handled, not swallowed
[ ] Tests written (ideally first) and passing; edge cases covered
[ ] Dependencies explicit; no hidden global state
[ ] Standards/linters applied; complexity within budget
[ ] Integration + feedback loop (CI) green
```

## API design mini-template
```
Operation: <verb-noun>
Contract: preconditions / postconditions / errors
Idempotency & side effects:
Versioning/compat strategy:
Example request/response:
```

## TDD loop
Red (failing test that encodes the requirement) → Green (simplest code) → Refactor (remove duplication, keep tests green).
