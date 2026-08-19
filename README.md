# Style Alignment

> A multi-platform AI agent skill for pixel-level frontend design alignment with boundary-driven methodology evolution.

Supports **Claude Code**, **OpenAI Codex**, **Cursor**, **TRAE**, and any agent that reads **AGENTS.md**.

## What It Does

This skill aligns frontend pages to a unified, pixel-level design specification. It extracts design rules from reference pages or uses an existing design document, creates a living methodology document with strict boundaries (what NOT to do), and aligns pages one by one with user review after each.

**Core principle:** The skill's power is NOT in what it does — it's in what it forbids. Boundaries create consistency. Freedom within those boundaries creates flexibility.

## Quick Install

### Via npx (recommended)

```bash
# Install for a specific platform
npx style-alignment install claude-code /path/to/project
npx style-alignment install cursor /path/to/project
npx style-alignment install codex /path/to/project
npx style-alignment install trae /path/to/project
npx style-alignment install agents-md /path/to/project

# Install for all platforms
npx style-alignment install all /path/to/project
```

### Via clone

```bash
git clone https://github.com/Xstly1014/style-alignment.git
cd style-alignment

# macOS/Linux
./install.sh claude-code /path/to/project

# Windows PowerShell
.\install.ps1 -Platform claude-code -ProjectPath C:\path\to\project
```

## Platform-Specific Installation

### Claude Code

```bash
# The skill auto-loads when relevant. Place in project:
.claude/skills/style-alignment/SKILL.md
.claude/skills/style-alignment/template/design-spec-template.md

# Or install globally (all projects):
~/.claude/skills/style-alignment/SKILL.md
```

Invoke via `/style-alignment` or let Claude auto-detect when you mention aligning UI styles.

### OpenAI Codex

```bash
# Project-level (auto-discovered):
.codex/skills/style-alignment/SKILL.md
.codex/skills/style-alignment/template/design-spec-template.md

# Global (all projects):
~/.codex/skills/style-alignment/SKILL.md
```

Codex follows the same [Agent Skills](https://agentskills.io/) standard — the skill auto-activates when your task matches the description.

### Cursor

```bash
# Place the .mdc rule file in:
.cursor/rules/style-alignment.mdc
```

The rule auto-activates when editing `.vue`, `.tsx`, `.jsx`, `.html`, `.css`, `.scss`, `.less` files. You can also `@style-alignment` to manually invoke it.

### TRAE

```bash
.trae/skills/style-alignment/SKILL.md
.trae/skills/style-alignment/template/design-spec-template.md
```

### AGENTS.md (Universal)

For agents that support `AGENTS.md` (Codex, Cursor, Gemini CLI, Windsurf, GitHub Copilot, etc.):

```bash
# Place in project root:
AGENTS.md
```

No frontmatter, no config — just plain markdown instructions.

## Invoke

When you need to align frontend pages to a consistent design, simply ask:

> "Align my frontend pages to a consistent design" / "帮我对齐前端页面样式"

The skill activates and guides you through the process.

## Workflow

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
- **Progressive disclosure**: The heavy 12-dimension extraction checklist and per-page self-audit live in `references/`, loaded only when needed — keeps activation lean while preserving every rule
- **Activation boundary**: Explicit "when NOT to use" guidance so the skill fires only on the right tasks
- **Single-source adapters**: All platform variants are generated from one body via `npm run build`, eliminating copy-paste drift
- **Multi-platform**: Works across Claude Code, Codex, Cursor, TRAE, and any AGENTS.md-compatible agent

## Repository Structure

```
style-alignment/
├── src/
│   └── body.md                           # SINGLE SOURCE: shared skill body for all platforms
├── references/                           # Loaded on demand (progressive disclosure)
│   ├── extract-spec.md                   # 12-dimension pixel-level extraction checklist
│   └── align-checklist.md                # Per-page pixel-by-pixel self-audit checklist
├── template/
│   └── design-spec-template.md           # Methodology document template
├── adapters/                             # GENERATED by `npm run build` — do NOT edit by hand
│   ├── claude-code/SKILL.md              # + allowed-tools / user-invocable
│   ├── codex/SKILL.md
│   ├── cursor/style-alignment.mdc        # Cursor MDC rule (globs)
│   └── agents-md/AGENTS.md               # Universal, no frontmatter
├── scripts/
│   └── build.mjs                         # Regenerates all adapters from src/body.md
├── SKILL.md                              # Root = TRAE / Agent Skills standard (also generated)
├── install.sh                            # Installer (macOS/Linux)
├── install.ps1                           # Installer (Windows)
├── package.json
├── LICENSE
└── README.md
```

## Methodology Document

The skill creates and maintains a `design-spec.md` document in your project. This document is the single source of truth — it grows stronger with every page aligned and every review cycle.

See `template/design-spec-template.md` for the document structure.

## Development — Single Source of Truth

All platform adapters share one body: `src/body.md`. The per-platform frontmatter (plus the Cursor `.mdc` wrapper and the AGENTS.md no-frontmatter form) are applied by `scripts/build.mjs`. **Never edit the generated files by hand** — change `src/body.md` and run:

```bash
npm run build      # regenerates SKILL.md + every adapter from src/body.md
```

This guarantees the Claude Code, Codex, Cursor, TRAE, and AGENTS.md versions can never drift apart. The heavy, rarely-needed checklists live in `references/` and are loaded only when the skill reaches the relevant phase.

## License

MIT
