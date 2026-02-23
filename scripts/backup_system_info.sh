#!/usr/bin/env bash
# Immutable Lab - Automated System & Package Audit
# Engineered for WSL2 / Ubuntu 24.04 on i9-13900H

set -euo pipefail

# Definindo diretórios de saída baseados na estrutura do repositório
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DOCS_DIR="$BASE_DIR/docs"
EVIDENCE_DIR="$DOCS_DIR/evidence"

echo "🚀 Starting Infrastructure Audit..."

# 1. System Kernel & Release (Audit Core)
uname -a > "$DOCS_DIR/system-kernel.txt"
cat /etc/os-release > "$DOCS_DIR/os-release.txt"

# 2. Package Inventory Automation (Sync with PACKAGES.md)
echo "📦 Exporting Package Registries..."
apt-mark showmanual > "$DOCS_DIR/packages-apt.txt"
npm list -g --depth=0 > "$DOCS_DIR/packages-npm.txt" 2>/dev/null || echo "NPM not found"
pip freeze > "$DOCS_DIR/packages-pip.txt" 2>/dev/null || echo "PIP not found"

# 3. Hardware & Resource Metrics (ROG Flow Z13 Optimized)
echo "⚡ Capturing Hardware Metrics..."
lscpu | grep "Model name" > "$EVIDENCE_DIR/cpu_spec.txt"
free -h > "$EVIDENCE_DIR/memory_usage.txt"

# 4. Networking Audit (700 Mb/s Symmetric Monitoring)
echo "🌐 Auditing Network Stack..."
ip addr show > "$EVIDENCE_DIR/network_interfaces.txt"

echo "✅ Audit Complete! Files updated in $DOCS_DIR"
