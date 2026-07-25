# Software Architecture — Artifacts / Frameworks (SWEBOK v4, KA 2)

Generate in the language the user is writing in. Distill, don't copy the IEEE text.

## Architecture Description skeleton
```
1. Context & drivers (business goals, constraints)
2. Stakeholders & concerns (who cares about what quality attribute)
3. Quality-attribute scenarios (source, stimulus, response, measure)
4. Views
   - Module view (decomposition, dependencies)
   - Component-&-connector view (runtime, data flow)
   - Allocation/deployment view (mapping to infra)
5. Key patterns/styles & tactics used
6. Significant decisions (see ADRs)
7. Risks & known trade-offs
```

## ADR (Architecture Decision Record)
```
ADR-nnn: <title>
Status: proposed | accepted | superseded by ADR-mmm
Context: <forces, concerns, constraints>
Decision: <what we chose>
Consequences: <positive/negative, trade-offs>
Alternatives considered: <options + why rejected>
```

## Quality-attribute scenario
```
Source → Stimulus → Environment → Artifact → Response → Response measure
e.g. "Under 2× peak traffic, the checkout service responds within 300 ms (p95)."
```
