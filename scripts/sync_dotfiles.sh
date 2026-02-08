#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

mkdir -p "$REPO_DIR/dotfiles/shell" "$REPO_DIR/dotfiles/git"

cp -f "$HOME/.zshrc" "$REPO_DIR/dotfiles/shell/.zshrc"
cp -f "$HOME/.gitconfig" "$REPO_DIR/dotfiles/git/.gitconfig"

echo "Dotfiles sincronizados para $REPO_DIR/dotfiles"
