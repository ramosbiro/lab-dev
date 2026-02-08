#!/usr/bin/env bash
set -euo pipefail

OUT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../docs" && pwd)"

uname -a > "$OUT_DIR/system-kernel.txt"
cat /etc/os-release > "$OUT_DIR/os-release.txt"

echo "Backup de infos do sistema em $OUT_DIR"
