# Style Alignment

> A TRAE skill for pixel-level frontend design alignment with boundary-driven methodology evolution.

## What It Does

This skill aligns frontend pages to a unified, pixel-level design specification. It extracts design rules from reference pages or uses an existing design document, creates a living methodology document with strict boundaries (what NOT to do), and aligns pages one by one with user review after each.

**Core principle:** The skill's power is NOT in what it does — it's in what it forbids. Boundaries create consistency. Freedom within those boundaries creates flexibility.

## How to Use

### Install

Copy the `SKILL.md` file into your project's `.trae/skills/style-alignment/` directory:

```
.trae/skills/style-alignment/SKILL.md
```

### Invoke

When you need to align frontend pages to a consistent design, simply ask:

> "帮我对齐前端页面样式" / "Align my frontend pages"

The skill will activate and guide you through the process.

### Workflow

```
Phase 0: Load existing methodology document (if any)
Phase 1: Determine input type (reference pages vs. design doc)
Phase 2: Extract spec from pages OR load design doc
Phase 3: Create/update methodology document → User review
Phase 4: Align pages one by one → User review after each
Phase 5: Feedback loop — update methodology after every review
```

## Key Features

- **Pixel-level precision**: Exact hex colors, px/rem sizes, transition timings — no approximations
- **Boundary enforcement**: Every dimension has "Must Follow", "Must NOT", and "Freedom Zone" rules
- **Data flywheel**: Every user review feeds back into the methodology document, making it sharper with each iteration
- **12 extraction dimensions**: Page frame, typography, color, buttons, forms, tables, cards, navigation, spacing, icons, interactions, sub-interfaces
- **One page at a time**: Never batch-align without review

## Methodology Document

The skill creates and maintains a `design-spec.md` document in your project. This document is the single source of truth — it grows stronger with every page aligned and every review cycle.

See `template/design-spec-template.md` for the document structure.

## License

MIT
