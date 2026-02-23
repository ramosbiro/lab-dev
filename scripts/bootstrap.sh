#!/usr/bin/env bash
# Immutable Lab - Professional Environment Bootstrap
# Engineered for High-Performance Full Stack Operations

set -euo pipefail

echo "🚀 Initializing Immutable Lab Bootstrap..."

# 1. Essential Directory Mapping
# Garante que todas as pastas base existam para os 6 monitores
mkdir -p "$HOME/.config"
mkdir -p "$HOME/bin"
mkdir -p "$HOME/lab-dev/docs/evidence"

# 2. Symlink Orchestration (Dotfiles)
# Automatiza o link entre o repositório e o seu sistema
echo "🔗 Linking Core Dotfiles..."
ln -sf "$HOME/lab-dev/dotfiles/shell/.zshrc" "$HOME/.zshrc"
ln -sf "$HOME/lab-dev/dotfiles/git/.gitconfig" "$HOME/.gitconfig"

# 3. Environment Validation (i9-13900H Optimization)
# Verifica se as ferramentas essenciais do laboratório estão presentes
echo "🔍 Validating Toolchain..."
for tool in docker nix git php; do
    if command -v "$tool" >/dev/null 2>&1; then
        echo "✅ $tool is installed."
    else
        echo "⚠️  $tool missing! Reference docs/INSTALLATION.md"
    fi
done

# 4. Finalizing
echo "✨ Bootstrap Complete."
echo "👉 Follow docs/SETUP-RAPIDO.md for institutional hardening (PMESP)."
