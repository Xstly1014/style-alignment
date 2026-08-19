#!/usr/bin/env node
/**
 * Single-source build for the Style Alignment skill.
 *
 * The shared skill body lives in `src/body.md`. Every platform adapter
 * (root SKILL.md, claude-code, codex, cursor .mdc, agents-md) is generated
 * from that one body + a per-platform frontmatter block. This guarantees the
 * adapters can never drift apart — edit `src/body.md` once, rerun, done.
 *
 * Usage: node scripts/build.mjs
 */
import { readFile, writeFile, mkdir } from 'node:fs/promises';
import { fileURLToPath } from 'node:url';
import { dirname, join } from 'node:path';

const __dirname = dirname(fileURLToPath(import.meta.url));
const root = join(__dirname, '..');

const DESC = `Aligns frontend pages to a unified pixel-level design spec extracted from reference pages or design docs, with boundary enforcement and a feedback-driven methodology that evolves per review. Invoke when the user wants to unify UI consistency across existing pages, standardize frontend styles, extract a design spec, or says things like 'align my frontend pages' / '对齐前端页面样式' / '统一一下样式'.`;

const COMPAT = `Requires read access to the frontend project's source (Vue/React/HTML + CSS/SCSS/Less/Tailwind).`;

const body = await readFile(join(root, 'src', 'body.md'), 'utf8');

const fmStandard = `---
name: style-alignment
description: ${DESC}
license: MIT
compatibility: ${COMPAT}
---
`;

const fmClaude = `---
name: style-alignment
description: ${DESC}
license: MIT
compatibility: ${COMPAT}
allowed-tools: Read, Grep, Glob, Write, Edit
user-invocable: true
disable-model-invocation: false
---
`;

const fmCursor = `---
description: ${DESC}
globs: ["**/*.vue", "**/*.tsx", "**/*.jsx", "**/*.html", "**/*.css", "**/*.scss", "**/*.less", "**/*.tailwind"]
alwaysApply: false
---
`;

const targets = [
  { path: 'SKILL.md', content: fmStandard + body },
  { path: 'adapters/claude-code/SKILL.md', content: fmClaude + body },
  { path: 'adapters/codex/SKILL.md', content: fmStandard + body },
  { path: 'adapters/cursor/style-alignment.mdc', content: fmCursor + body },
  // AGENTS.md is the universal plain-markdown form: body only, no frontmatter.
  { path: 'adapters/agents-md/AGENTS.md', content: body },
];

for (const t of targets) {
  const full = join(root, t.path);
  await mkdir(dirname(full), { recursive: true });
  await writeFile(full, t.content, 'utf8');
  console.log('wrote', t.path);
}
console.log('build complete — regenerated', targets.length, 'adapters from src/body.md');
