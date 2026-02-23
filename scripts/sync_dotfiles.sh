#!/usr/bin/env bash
# Immutable Lab - Dotfiles Synchronization Engine
# Optimized for WSL2/NixOS environments

set -euo pipefail

# Definindo diretórios com base na estrutura do repositório
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DOT_SHELL="$REPO_DIR/dotfiles/shell"
DOT_GIT="$REPO_DIR/dotfiles/git"

echo "🔄 Syncing user configurations to repository..."

# 1. Ensure target directories exist
mkdir -p "$DOT_SHELL" "$DOT_GIT"

# 2. Secure Copy (Syncing from $HOME to Repository)
# Utiliza o flag -u para atualizar apenas se o arquivo for mais recente
cp -uv "$HOME/.zshrc" "$DOT_SHELL/.zshrc"
cp -uv "$HOME/.gitconfig" "$DOT_GIT/.gitconfig"

# 3. Validation & Status
echo "📊 Current Repository Status:"
git -C "$REPO_DIR" status --short dotfiles/

echo "✅ Sync Complete! Ready for commit."
echo "👉 Use 'git add dotfiles/ && git commit -m \"feat: update lab dotfiles\"' to push changes."
