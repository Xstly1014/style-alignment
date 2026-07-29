#!/usr/bin/env bash
set -euo pipefail

# Style Alignment — Multi-Platform Installer
# Usage: ./install.sh [platform] [project-path]
# Platforms: claude-code, codex, cursor, trae, agents-md, all

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PLATFORM="${1:-}"
PROJECT_PATH="${2:-.}"

if [ -z "$PLATFORM" ]; then
  echo "Style Alignment — Multi-Platform Installer"
  echo ""
  echo "Usage: ./install.sh [platform] [project-path]"
  echo ""
  echo "Platforms:"
  echo "  claude-code   Install as Claude Code skill (.claude/skills/)"
  echo "  codex         Install as OpenAI Codex skill (.codex/skills/)"
  echo "  cursor        Install as Cursor rule (.cursor/rules/)"
  echo "  trae          Install as TRAE skill (.trae/skills/)"
  echo "  agents-md     Install as AGENTS.md (project root)"
  echo "  all           Install for all platforms"
  echo ""
  echo "Example: ./install.sh claude-code /path/to/my-project"
  exit 0
fi

install_claude_code() {
  local target="$1/.claude/skills/style-alignment"
  mkdir -p "$target"
  cp "$SCRIPT_DIR/adapters/claude-code/SKILL.md" "$target/SKILL.md"
  cp -r "$SCRIPT_DIR/template" "$target/template"
  echo "[OK] Claude Code: installed to $target"
}

install_codex() {
  local target="$1/.codex/skills/style-alignment"
  mkdir -p "$target"
  cp "$SCRIPT_DIR/adapters/codex/SKILL.md" "$target/SKILL.md"
  cp -r "$SCRIPT_DIR/template" "$target/template"
  echo "[OK] Codex: installed to $target"
}

install_cursor() {
  local target="$1/.cursor/rules"
  mkdir -p "$target"
  cp "$SCRIPT_DIR/adapters/cursor/style-alignment.mdc" "$target/style-alignment.mdc"
  echo "[OK] Cursor: installed to $target/style-alignment.mdc"
}

install_trae() {
  local target="$1/.trae/skills/style-alignment"
  mkdir -p "$target"
  cp "$SCRIPT_DIR/SKILL.md" "$target/SKILL.md"
  cp -r "$SCRIPT_DIR/template" "$target/template"
  echo "[OK] TRAE: installed to $target"
}

install_agents_md() {
  cp "$SCRIPT_DIR/adapters/agents-md/AGENTS.md" "$1/AGENTS.md"
  echo "[OK] AGENTS.md: installed to $1/AGENTS.md"
}

case "$PLATFORM" in
  claude-code) install_claude_code "$PROJECT_PATH" ;;
  codex) install_codex "$PROJECT_PATH" ;;
  cursor) install_cursor "$PROJECT_PATH" ;;
  trae) install_trae "$PROJECT_PATH" ;;
  agents-md) install_agents_md "$PROJECT_PATH" ;;
  all)
    install_claude_code "$PROJECT_PATH"
    install_codex "$PROJECT_PATH"
    install_cursor "$PROJECT_PATH"
    install_trae "$PROJECT_PATH"
    install_agents_md "$PROJECT_PATH"
    ;;
  *)
    echo "Unknown platform: $PLATFORM"
    echo "Valid options: claude-code, codex, cursor, trae, agents-md, all"
    exit 1
    ;;
esac

echo ""
echo "Done. The methodology document template is in the 'template/' folder alongside the skill."
