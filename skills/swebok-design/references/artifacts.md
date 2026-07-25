# Software Design — Artifacts / Frameworks (SWEBOK v4, KA 3)

Generate in the language the user is writing in. Distill, don't copy the IEEE text.

## Detailed design record (per module/component)
```
Module: <name>   Responsibility: <single, cohesive>
Interface: <operations, contracts: pre/post/invariants>
Collaborators & dependencies: <who it calls; injected?>
Key data structures / algorithms:
Design qualities addressed: concurrency? persistence? errors? security?
Rationale: <why this shape; alternatives rejected>
```

## Structural & behavioral descriptions
- Structural: class/component diagram, package/dependency graph.
- Behavioral: sequence/state/activity for the non-trivial flows only.

## Method selection cheat-sheet
rich domain/invariants → OO / DDD · data-heavy pipeline → data-centered · reactive/async → event-driven · reuse/assembly → component-based · cross-cutting concerns → aspect-oriented.
