# Software Construction — Review / Audit Checklist (SWEBOK v4, KA 4)

Produce a findings report: per-topic coverage, a defect/gap list with severity, and concrete fixes. Anchor findings to the topic map.

## Code/unit gates
- **Complexity** within budget (cyclomatic, nesting, function length)?
- Boundaries **contract-checked**; input validated once at the edge?
- Error paths handled, logged, not silently swallowed?
- **Tests**: present, meaningful, cover edges; test-first where design was uncertain?
- Dependencies explicit & injectable; no hidden singletons/globals?
- Standards/lint clean; reuse over copy-paste?

## Integration-level
- CI feedback loop present and fast?
- Cross-platform/i18n/config concerns handled if relevant?
- Performance hotspots profiled, not guessed?

## Severity
- Critical: unhandled error path, injection/validation gap, concurrency bug.
- Major: high complexity, missing tests on risky code.
- Minor: style, naming, lint.
