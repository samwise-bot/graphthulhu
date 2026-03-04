#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BIN="$ROOT/bin/graphthulhu"
VAULT="/home/bot/.openclaw/repos/knowledge"

if [[ ! -x "$BIN" ]]; then
  echo "[graphthulhu] binary missing; building..."
  (cd "$ROOT" && go build -o "$BIN" .)
fi

exec "$BIN" --backend obsidian --vault "$VAULT"
